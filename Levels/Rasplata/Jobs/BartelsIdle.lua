----------------------------------------------------------------------- 
--  Rasplata Bartels idle task
--  Sergey Gvozdev
----------------------------------------------------------------------- 


ScriptJob = 
{
-- Main internal data
-- Dynamic data. Serializable
-- Current state
   sjCurrentState = 0, 
-- logic mutex for safe logic executing
   sjLogicMutex = false,

-- Custom data
   dcIdleAnimationName = {},
   dcIdleAnimationTime = {},
   dcIdleAnimationPoint = {},
   dcIdleAnimationDirection = {},
   dcTeleportPoint = {},
   dcDrinkAction = 6,
   dcStateDelegates = {},
   dcAlertAnchor = 'AA95',
   dcOfficer = 'GO01',

-- States
   S_MOVE_CHAIR = 1,
   S_SIT_CHAIR = 2,
   S_DRINK_WITH_OFFICER = 3,
   S_SPEAK_WITH_OFFICER = 4,
   S_ALERT = 5,

-- Messages
   MSG_LETS_DRINK = 1,
   MSG_LETS_SPEAK = 2,
   MSG_DO_DRINK   = 3,
   MSG_DO_SPEAK   = 4,
   MSG_INTERRUPT  = 5
};

AI.DoFile( "scripts:Job\\CommonActions.lua", false );

function ScriptJob:Initialize()
   AI.Debug(self.NPC, "ScriptJob:Initialize", ""); 

-- Default configuration
   self.dcIdleAnimationName[self.S_SIT_CHAIR] = "Act_Rasplata_Drink2_Sit";
   self.dcIdleAnimationName[self.S_DRINK_WITH_OFFICER] = "Act_Rasplata_Drink2";
   self.dcIdleAnimationName[self.S_SPEAK_WITH_OFFICER] = "Act_Rasplata_Drink2_Talk";

   self.dcIdleAnimationTime[self.S_SIT_CHAIR] = 100.0;
   self.dcIdleAnimationTime[self.S_DRINK_WITH_OFFICER] = (767.0 - 469.0) / 16.0;
   self.dcIdleAnimationTime[self.S_SPEAK_WITH_OFFICER] = (1304.0 - 1106.0) / 16.0;

   self.dcIdleAnimationPoint.x = -1716.09692;
   self.dcIdleAnimationPoint.y = -13.23671;
   self.dcIdleAnimationPoint.z = 1573.94812;
   self.dcIdleAnimationDirection.x = -0.59375;
   self.dcIdleAnimationDirection.y = 0.0;
   self.dcIdleAnimationDirection.z = -0.80465;
   self.dcTeleportPoint.x = -1721.82446;
   self.dcTeleportPoint.y = -13.34242;
   self.dcTeleportPoint.z = 1564.40381;

   self.dcStateDelegates[self.S_MOVE_CHAIR]         = self.DoMoveChair;
   self.dcStateDelegates[self.S_SIT_CHAIR]          = self.DoSitChair;
   self.dcStateDelegates[self.S_DRINK_WITH_OFFICER] = self.DoDrinkWithOfficer;
   self.dcStateDelegates[self.S_SPEAK_WITH_OFFICER] = self.DoSpeakWithOfficer;
   self.dcStateDelegates[self.S_ALERT]              = self.DoAlert;

-- Register serialize data
   Job.RegisterData( self.Object, "sjCurrentState" );
end

function ScriptJob:OnRecieveMessage( msg, param1, param2 )

   if (msg == self.MSG_LETS_DRINK or
       msg == self.MSG_LETS_SPEAK ) then
      if (self:CanDoSynchro() != false) then
         return 1;
      else
         return 0;
      end
   end

   if (msg == self.MSG_DO_DRINK or
       msg == self.MSG_DO_SPEAK ) then
      if (self:CanDoSynchro() == false) then
         return 0;
      else
         if (msg == self.MSG_DO_DRINK) then
            Job.ResetActions( self.Object );
            self:RunState( self.S_DRINK_WITH_OFFICER );
         elseif (msg == self.MSG_DO_SPEAK) then
            Job.ResetActions( self.Object );
            self:RunState( self.S_SPEAK_WITH_OFFICER );
         end
      end
   end

   if (msg == self.MSG_INTERRUPT) then
      self:RunLogic( true );
   end

   return 1;
end

function ScriptJob:DoAlert()
    AI.Debug(self.NPC, "ScriptJob:DoAlert", "");

    local b = self:AtBadPlace();
    NPC.SetFirePolicy( self.NPC, NPC.FIRE_POLICY_ATTENTIVE );

    if (b != false) then
      self:MoveToDefaultPos();
    end

    Job.TakeAnchor_UID( self.Object, self.dcAlertAnchor, NPC.MOVE_POLICY_RUN);
end                                       

function ScriptJob:DoDefaultChairMove()
    local b = self:AtBadPlace();

    if (b == false) then
       AI.Debug(self.NPC, "ScriptJob:DoDefaultChairMove", "WALK");

       self:ActWalk         ( 1, self.dcTeleportPoint );
       self:ActTeleport     ( 2, self.dcIdleAnimationPoint );
       self:ActTurnDirection( 3, self.dcIdleAnimationDirection );
    else 
       self:ActTurnDirection( 3, self.dcIdleAnimationDirection );
       return false;
    end
end

function ScriptJob:DoMoveChair()
    AI.Debug(self.NPC, "ScriptJob:DoMoveChair", "badPlace:", b);
    self:ResetNPC();
    self:DoDefaultChairMove();
end

function ScriptJob:DoSitChair()
    AI.Debug(self.NPC, "ScriptJob:DoSitChair", "");
    -- Restore default policies
    NPC.SetHeadPolicy( self.NPC, NPC.HEAD_POLICY_DEFAULT );
    NPC.SetFirePolicy( self.NPC, NPC.FIRE_POLICY_NEUTRAL );
    NPC.SetBodyPolicy( self.NPC, NPC.BODY_POLICY_SIMPLE_STANDING );

    if (self:DoDefaultChairMove() != false) then
       AI.Debug(self.NPC, "ScriptJob:DoSitChair", "Bad place");
    end

    self:ActAnimate      ( 4, 
                           self.dcIdleAnimationTime[self.S_SIT_CHAIR], 
                           self.dcIdleAnimationName[self.S_SIT_CHAIR] );
end

function ScriptJob:CanDoSynchro()
    return (self:AtBadPlace() == true) and
           (self.sjCurrentState == self.S_SIT_CHAIR) and
           (AI.GetAttention(self.NPC) == AI.ATTENTION_RELAX);
end

function ScriptJob:DoSpeakWithOfficer()
    AI.Debug(self.NPC, "ScriptJob:DoSpeakWithOfficer", "");

    if (self:DoDefaultChairMove() != false) then
       AI.Debug(self.NPC, "ScriptJob:DoSpeakWithOfficer", "Bad place");
    end

    self:ActAnimate      ( 10, 
                           self.dcIdleAnimationTime[self.S_SPEAK_WITH_OFFICER], 
                           self.dcIdleAnimationName[self.S_SPEAK_WITH_OFFICER] );
end

function ScriptJob:DoDrinkWithOfficer()
    AI.Debug(self.NPC, "ScriptJob:DoDrinkWithOfficer", "");

    if (self:DoDefaultChairMove() != false) then
       AI.Debug(self.NPC, "ScriptJob:DoDrinkWithOfficer", "Bad place");
    end

    self:ActAnimate      ( self.dcDrinkAction, 
                           self.dcIdleAnimationTime[self.S_DRINK_WITH_OFFICER], 
                           self.dcIdleAnimationName[self.S_DRINK_WITH_OFFICER] );
end


function ScriptJob:RunState( newState )
   self.sjCurrentState = newState;
   (self.dcStateDelegates[self.sjCurrentState])(self);
end

-- Check actor position. Return false if he need's hack teleportations
function ScriptJob:AtBadPlace()
    return self:IsNearPos( self.dcIdleAnimationPoint );
end

-- Teleport actor to default position
-- Execute it when AtBadPlace() != false
function ScriptJob:MoveToDefaultPos()
    AI.DirtyMove(self.NPC, self.dcTeleportPoint.x, self.dcTeleportPoint.y, self.dcTeleportPoint.z);
end

-- Execute internal task logic
function ScriptJob:RunLogic( resetActions )
    AI.Debug(self.NPC, "ScriptJob:RunLogic", "resetActions: ", resetActions);

    -- Resolve attention
    local attention = AI.GetAttention( self.NPC );

    -- Use internal mutex to protect from duplicate RunLogic executing in one frame
    if (self.sjLogicMutex != false) then
       return;
    end

    -- Turn on internal mutex
    self.sjLogicMutex = true;

    -- Reset actions sheadule if needs
    if (resetActions != false) then
       Job.ResetActions( self.Object );
    end
    
    -- Execute main logic mechanic
    local newState;
    if (attention != AI.ATTENTION_RELAX) then
       newState = self.S_ALERT;
    else
       if (self:AtBadPlace() == false) then
          newState = self.S_MOVE_CHAIR;
       else
          newState = self.S_SIT_CHAIR;
       end
    end

    self:RunState( newState );

    -- Restore internal mutex state
    self.sjLogicMutex = false;
end

function ScriptJob:CheckIntMessage()
   if (self.sjCurrentState == self.S_DRINK_WITH_OFFICER or
       self.sjCurrentState == self.S_SPEAK_WITH_OFFICER) then
     local job = AI.GetScriptJob( AI.FindNPC( self.dcOfficer ) );
     if (job != nil) then
       b = Job.SendMessage( job, self.MSG_INTERRUPT, 0, 0 );
     end
   end
end

function ScriptJob:OnActionScheduleOver( success )
    AI.Debug(self.NPC, "ScriptJob:OnActionScheduleOver", "state: ", self.sjCurrentState);

    self:RunLogic( false );
end

function ScriptJob:OnActionOver( id )
    AI.Debug(self.NPC, "ScriptJob:OnActionOver", "id: ", id);

    if (id == self.dcDrinkAction) then
      if ( Level.ShnapsPoisonedActive ) then
          AI.Debug(self.NPC, "ScriptJob:OnActionOver", "Drink somethink bad - kill actor");
          AI.SetGameFlag(self.NPC, AI.F_ACCIDENT_BODY, true);
          AI.KillNPC( self.NPC, 1.5 );
      end
    end
end

function ScriptJob:OnStart()
   AI.Debug(self.NPC, "ScriptJob:OnStart", "");
   self:RunLogic( true );
end

function ScriptJob:OnStop()
   local b = self:AtBadPlace();
   AI.Debug(self.NPC, "ScriptJob:OnStop", "bad place:", b);

   self:CheckIntMessage();
   if (b != false) then
      self:MoveToDefaultPos();
   end
end

function ScriptJob:OnResume()
    AI.Debug(self.NPC, "ScriptJob:OnResume", "state: ", self.sjState);
    self:RunLogic( true );
end

function ScriptJob:OnPause()
   local b = self:AtBadPlace();
   AI.Debug(self.NPC, "ScriptJob:OnPause", "bad place: ", b);

   self:ResetNPC( self.NPC );
   Job.ResetActions( self.Object );

   if (b != false) then
      self:MoveToDefaultPos();
   end

   self:CheckIntMessage();
end

function ScriptJob:OnPathBlocked()
    -- Use internal tasks block path analysis to protect static collisions
    if (Job.ProcessPathBlock( self.Object )) then
      AI.Debug(self.NPC, "ScriptJob:OnPathBlocked", "state: ", self.sjState);
      self:CheckIntMessage();
      self:ResetNPC();
      self:RunLogic( true );
    end
end

function ScriptJob:OnChangedAttention( att )
    AI.Debug(self.NPC, "ScriptJob:OnChangedAttention", "att: ", att);
    -- Start this method only when NPC has just changed his attention
    self:CheckIntMessage();
    self:RunLogic( true );
end

function ScriptJob:OnPathDynamicObstacle()
    AI.Debug(self.NPC, "ScriptJob:OnPathDynamicObstacle", "");

    if (AI.DynamicObstacle( self.NPC ) == false) then
       self:CheckIntMessage();
       self:ResetNPC();
       self:RunLogic( true );
    end
end
