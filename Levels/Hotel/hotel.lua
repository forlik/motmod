
  MissionText = 
  {
      --Mission text
      Message_GetTicket         = "TAKE THE CARD";
      Message_Ticket            = "Hotel visitor's card";
      Failed_SpyOut             = "DIPLOMAT HAS RECEIVED THE DOCUMENTS. TRAITOR HAS NOT BEEN IDENTIFIED";
      Failed_DiplomatDied       = "DIPLOMAT HAS BEEN KILLED";
      Failed_GadKilled          = "TRAITOR HAS BEEN NEUTRALIZED BEFORE THE DOCUMENT TRANSFER ";
      Failed_DiplomatBodyInfo   = "DIPLOMAT HAS LEARNED ABOUT THE TRAITOR'S DEATH";
      Failed_SeifOpened         = "DIPLOMAT HAS LEARNED ABOUT THE OPENING OF THE SAFE ";
      Failed_DiplomatGetDocs    = "DIPLOMAT IS LEAVING THE HOTEL WITH THE DOCUMENTS ";
      Failed_RoomVisited        = "DIPLOMAT HAS FOUND OUT SOMEONE WAS IN HIS ROOM";
      Failed_DiplomatAlert      = "DIPLOMAT HAS BEEN ALERTED - MEETING HAS BEEN CANCELLED";
      Failed_Alert              = "MEETING HAS BEEN CANCELLED";
      Message_CloseDoor         = "LOCK THE DOOR";
      Message_ChangeDocs        = "REPLACE PAPERS ";
      Message_StealTicket       = "STEAL THE CARD";
      Message_Registrate        = "HOTEL CHECK-IN";
      Message_StopMove1         = "You have no business here..";
      Message_StopMove2         = "Only for hotel visitors..";
      Message_StopMove3         = "Only for hotel staff..";
      Message_StopMove4         = "Only for hotel staff..";
      Message_StopMove5         = "Only hotel visitors are allowed to enter the swimming pool..";
      Message_CheckDiplomatDocs = "You must make certain that the diplomat has received the documents";
      Message_DocsChanging      = "The meeting has begun. Hurry up to the library";
      Message_GetsTicket        = "You have received your hotel visitor's card";
      Message_AlarmCalled_1     = "The alarm has been raised in the hotel";
      Message_AlarmCalled_2     = "The diplomat's guards are on high alert";
      Message_AlarmFinished     = "Guards are standing down";
      Message_NeedKillGad       = "The traitor has been neutralized. The traitor must be killed";
      Message_Info              = "There are no parcels in this room";
      Message_DiplomatGoGetDocs = "The diplomat has to take the documents from the safe ";
      Key_Pool                  = "Key to the swimming pool";
      Key_Barn                  = "Key to the utility rooms";
      Key_Number                = "Key to the room";
      Task_1                    = " Determine who's the traitor";
      Task_2                    = " Find the weapons";
      Task_3                    = " Kill the traitor";
      Task_4                    = " Replace the documents";
      Task_5                    = " Leave the hotel";
      TaskChanged               = "Tasks have been changed";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnSave()

     Stream.WriteBool   ( Level.RefrDoorBlocked );
     Stream.WriteBool   ( false ); 
     Stream.WriteString ( "" );
     Stream.WriteBool   ( Level.DocsInstalled ); 
     Stream.WriteBool   ( Level.DocsInSeif);
     Stream.WriteBool   ( Level.DocsDiplomat ); 
     Stream.WriteBool   ( Level.BlockLbrMessage );
     Stream.WriteBool   ( Level.DocsChanged );

     for i = 1, 3 do
        Stream.WriteBool( Level.BarnTriggerUnregistred[i] );
     end

     local n = table.getn(Level.CookFormId);
     Stream.WriteInt    ( n );
     for i = 1, n do
         Stream.WriteInt( Level.CookFormId[i] );
     end

     Stream.WriteBool   ( Level.MarkEnabled );
     Stream.WriteBool   ( Level.DiplomatInitialized );
     Stream.WriteBool   ( Level.AtHallTrigger );
     Stream.WriteBool   ( Level.UsedRegistrateTrigger );
     Stream.WriteString ( Level.ManagerTriggerName );
     Level.OnSave_Common(); -- forlik
  end
 
  function Level.OnLoad()

     Level.RefrDoorBlocked    = Stream.ReadBool( );
     local t                  = Stream.ReadBool( ); 
     local name               = Stream.ReadString( );
     Level.DocsInstalled      = Stream.ReadBool( ); 
     Level.DocsInSeif         = Stream.ReadBool( );
     Level.DocsDiplomat       = Stream.ReadBool( );
     Level.BlockLbrMessage    = Stream.ReadBool();
     Level.DocsChanged        = Stream.ReadBool();

     Level.BarnTriggerUnregistred = {};

     for i = 1, 3 do
        Level.BarnTriggerUnregistred[i] = Stream.ReadBool(  );
     end

     Level.CookFormId = {};
     local n                   = Stream.ReadInt();
     for i = 1, n do
         Level.CookFormId[i]   = Stream.ReadInt( );
     end

     Level.MarkEnabled           = Stream.ReadBool();
     Level.DiplomatInitialized   = Stream.ReadBool();
     Level.AtHallTrigger         = Stream.ReadBool();
     Level.UsedRegistrateTrigger = Stream.ReadBool();
     Level.ManagerTriggerName    = Stream.ReadString();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

  end

  function Level.SetDoorKey(door, key)
     local d = Level.FindDoor(door);
     if (d != nil) then
        Level.SetDoorUnlockKey( d, key );
     end
  end

  function Level.OnFinishLoad()

     -- forlik System:SetVar('r_glow', true );
     -- forlik System:SetVar('r_glow_r' , 1.5 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar('ph_water_density', 0.05);
     System:SetVar('ph_water_wet_time', 6.0);


     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION, "sounds\\music\\danger.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_3.ogg" );
     Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.35#sounds\\music\\loud_speaker.ogg" );
     Level.SetDefaultMusicPause( 180.0, 360.0, 20.0, 120.0 );

     local door = Level.FindDoor( 'RFDR' );

     if ( door != nil ) then
       Level.SetDoorNotifyScript( door, true );
     end;

     local seifDoor = Level.FindDoor( 'SFDR' );

     if ( seifDoor != nil ) then
       Level.SetDoorNotifyScript( seifDoor, true );
     end;

     Level.SeifTrigger      = nil;
     Level.CloseDoorTrigger = nil;

     Level.SetDoorKey('PLDR', 'PLKY' );
     Level.SetDoorKey('BRDR', 'BRKY' );
     Level.SetDoorKey('N1DR', 'N1KY' );
     Level.SetDoorKey('N2DR', 'N2KY' );

     Level.AddWaterZone(  0.8, -62.14, 266.1, 
                        184.1, -48.5,  330.9,
                        Level.F_WATER_ONLYWALK );

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.AddKey( actorId, keyId, name )
     local actor = Level.FindActor(actorId);

     if (actor != nil) then

        local key = Level.CreateItem( "Custom" , "Equipment" );
        if ( key != nil ) then
           Entity.SetUniqueID( key, keyId );

           Level.SetCustomItemName( key, name );
           Level.SetCustomItemIcon( key, "ammo_key" );
     
           Actor.PutPouch( actor, Actor.GetEmptyPouch(actor), key );
        else
           print("Warning. Can't create key " .. keyId);
        end;
     else 
        print("Warning. Can't find actor " .. actorId);
     end;
  end

  function Level.OnLoaded()

     Level.OnLoaded_Common(); -- forlik
     -- Add initial mission tasks
     Level.AddMissionTask( MissionText.Task_1, 'FNDS', "levels\\hotel\\find_spy_task.txt" );
     Level.AddMissionTask( MissionText.Task_2, 'WEPN', "levels\\hotel\\weapon_task.txt" );

     -- Setup level variables
     Level.RefrDoorBlocked        = false;
     Level.DocsInstalled          = false;
     Level.DocsInSeif             = false;
     Level.DocsDiplomat           = false;
     Level.BarnTriggerUnregistred = { false, false, false };
     Level.BlockLbrMessage        = false;
     Level.DocsChanged            = false;
     Level.MarkEnabled            = true;
     Level.CookFormId             = {};
     Level.DiplomatInitialized    = false;
     Level.AtHallTrigger          = false;
     Level.UsedRegistrateTrigger  = false;
     Level.ManagerTriggerName     = "";
     Level.CloseDoorTrigger       = nil;
 
     -- Add scenary action handles
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "DPM1" , "OnKilledDiplomat");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "DPM1" , "OnKilledDiplomat");
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GAD1" , "OnKilledGad");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "GAD1" , "OnHittedGad");

     Level.AddActionHandler( Level.AH_ACTOR_BODY_INFO, "DPM1", "OnDiplomatBodyInfo" );
     Level.AddActionHandler( Level.AH_SEE_PLAYER, "DPM1", "OnSeePlayer" );

     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     --- init player
     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       local knife      = Level.CreateItem("knife","Weapon");

       Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );
       Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
       Actor.PutEmptyPouch( player, "lockpick", "Equipment" );

       Actor.ChangeActorSkin( player, "WhiteHands" );

       Actor.SetActorTypeId(player, Actor.ACTOR_TYPE_CIVILIAN, Actor.ACTOR_NATION_BRITISH );
    
     end;

     -- Set ai flags
     AI.EnableGrenades( false );
     AI.EnableFloorRiskTest( true );

     Level.RegisterHotelVisitors();

     -- Mark diplomat as target
     local diplomat = Level.FindActor('DPM1' );
     if ( diplomat != nil ) then
       Actor.MarkAsTarget( diplomat, true );
       Actor.SetMarkAsFriend( diplomat, true );
     end;

     -- Init keys...
     Level.AddKey('HG12', 'PLKY', MissionText.Key_Pool );
     Level.AddKey('SM48', 'PLKY', MissionText.Key_Pool );
     Level.AddKey('HW08', 'BRKY', MissionText.Key_Barn );
     Level.AddKey('MC06', 'N1KY', MissionText.Key_Number );
     Level.AddKey('MC07', 'N2KY', MissionText.Key_Number );
     Level.AddKey('SM42', 'N2KY', MissionText.Key_Number );

     -- Get cooks forms               
     local cooks = { 'BC02', 'BC07', 'BC04', 'BC06' };

     for i = 1, table.getn(cooks) do
         local cook = Level.FindActor( cooks[i] );
         Level.CookFormId[i] = Actor.GetWearFormId( cook );
     end

     if (player != nil) then
       AI.RebuildPlayerForm();
       AI.AddFormChangedValue();
     end

     AI.SetCustomGuarderBox( AI.FindNPC('HG12'), true, -102.4, -42.5, 181.6, -84.0, -24.2, 204.5 );
     AI.SetCustomGuarderBox( AI.FindNPC('HG46'), true, 773.7, -3.32, 337.8, 793.5, 13.1, 371.0 );

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();
  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnInventoryChanged()
      if (Level.MarkEnabled == false) then
         return;
      end

      local player = Level.GetPlayer();

      if ( Actor.HasCustomEquipment( player, 'TICK' ) ) then
         Level.EnableLevelMark('TICK', false);
         Level.EnableLevelMark('CIVL', false);
         Level.EnableLevelMark('RGST', false);
         Level.MarkEnabled = false;

         if (Level.AtHallTrigger != false) then
            Level.CheckDiplomatJob( true, false );
         end
      end
  end

  function Level.IsPlayerCook()
    local player = Level.GetPlayer();
    local playerFormId = Actor.GetWearFormId( player );

    if (Level.CookFormId == nil) then
       return false;
    end

    local n = table.getn(Level.CookFormId); 
    for i = 1, n do
       if (Level.CookFormId[i] == playerFormId) then
          return true;
       end
    end

    return false;
  end

  function Level.OnSeePlayer()
    -- Fail mission if diplomat detect player at his room
    local zone = AI.GetPlayerOutdoorZone();

    if (Level.IsMissionFailed()) then
       return;
    end

    if (zone == 'DPLR') then
       Level.FailedMission( MissionText.Failed_RoomVisited );
       return;
    end
  end

  function Level.OnKilledDiplomat()
    -- If diplomat is dead fail mission always
    if (Level.IsMissionFailed() == false) then
       Level.FailedMission( MissionText.Failed_DiplomatDied );
    end

  end

  function Level.OnDiplomatBodyInfo( body )
 
     if (body == 'GAD1') then
        if (Level.IsMissionFailed() == false) then
           Level.FailedMission( MissionText.Failed_DiplomatBodyInfo );
        end
     end

  end

  function Level.OnHittedGad()

     if (Level.IsMissionTaskCompleted( 'FNDS' ) == false) then

        Level.FailedMission( MissionText.Failed_GadKilled );
        return;

     end

     Level.AddSmallMessage( MissionText.Message_NeedKillGad, 15.0, 255, 255, 255 );
     
  end

  function Level.SetupLeaveTask()

     Level.RemoveMissionTask('WEPN'); 
     Level.UninstallWeaponTask();

     Level.AddLargeMessage( MissionText.TaskChanged, 15.0 , 255, 255, 255 );
     Level.AddMissionTask( MissionText.Task_5, 'LEAV', "levels\\hotel\\leave_task.txt" );

     Level.EnableLevelMark('LEV1', true);
     Level.EnableLevelMark('LEV2', true); 

  end

  function Level.OnKilledGad()

     if (Level.IsMissionFailed() != false) then
        return;
     end

     if (Level.IsMissionTaskCompleted( 'FNDS' ) == false) then
        Level.FailedMission( MissionText.Failed_GadKilled );
        return;
     end                               

     if (Level.IsMissionTaskCompleted( 'DOCS' ) ) then
         Level.SetupLeaveTask();
     end

     Level.CompleteMissionTask( 'KILL', 15.0 );
     Level.EnableLevelMark('POOL', false);

     if (Level.IsPlayerAtLibrary()) then
         local gad = AI.FindNPC('HG42');
         if (gad != nil) then
            AI.SetGameFlag(gad, AI.F_ENABLE_ALWAYS, true);
         end
     end

  end


  function Level.OnExplodeBrush( id )

    if (id == 'TR01' or
        id == 'TR02') then

       Level.EnableLevelMark('PLAT', false);

       local a1 = AI.FindNPC( 'BC04' );
       local a2 = AI.FindNPC( 'HW04' );

       if (AI.IsDefault( a1 )) then

          local properties = Level.CreateCustomParams();
          Level.SetValue(properties, "CustomString_1", 'AN51');

          AI.RunScriptTask(a1, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
       end

       if (AI.IsDefault( a2 )) then

          local properties = Level.CreateCustomParams();
          Level.SetValue(properties, "CustomString_1", 'AN52');

          AI.RunScriptTask(a2, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
       end
    end
 end


 function Level.OnRefregTriggerTimer()
     local player = Level.GetPlayer();
     if (player != nil) then
        Actor.RecieveDamage( player, 0.1 );
     end
 end


 function Level.OnOpenDoor( door )

    if ( door == 'RFDR' ) then

       Level.RefrDoorBlocked = false;

       Level.RemovePlayerAction("CLDR");

       local npc = AI.FindNPC( 'BC06' );
       if ( AI.IsScriptTask( npc ) ) then
          AI.FailTask( npc, AI.TASK_SCRIPT_NEUTRAL );
           
          NPC.SetFlag( npc, NPC.F_CANT_OPEN_DOOR, false );
       end

    elseif (door == 'SFDR') then

       AI.StartDecamouflage( 50.0, 150.0, 4.0 );

       if (Level.SeifTrigger != nil) then
          Level.SeifTrigger:OnEnterArea();
       end

    end;

 end;  


 function Level.OnCloseDoor( door )

    if ( door == 'RFDR' ) then

       if (Level.CloseDoorTrigger != nil and
           Level.RefrDoorBlocked == false) then

            Level.CloseDoorTrigger:OnEnterArea();

       end

    elseif (door == 'SFDR') then

       Level.RemovePlayerAction("DOCS");

    end;

 end;  


 function Level.IsPlayerAtLibrary()
     local room = AI.GetPlayerRoom();
     local library = Level.GetRoom('LIBR');

     return library == room;
 end


 function Level.OnGadTimer()
    local gad = AI.FindNPC('GAD1');

    if (AI.IsDefault(gad)) then

       local properties = Level.CreateCustomParams();
       Level.SetValue(properties, "Can use anchors", true);
       Level.SetValue(properties, "Use anchor interval", 0.0);
       Level.SetValue(properties, "Find anchor radius", 300.0);
       Level.SetValue(properties, "Don't repeat anchors", false);
       Level.SetValue(properties, "AnchorQueue0", 'A101');
       Level.SetValue(properties, "AnchorQueue1", 'A100');
       Level.SetValue(properties, "AnchorQueue2", 'A130');
       Level.SetValue(properties, "AnchorQueue3", 'A104');
       Level.SetValue(properties, "Can Patrol Point", false);
       Level.SetValue(properties, "Can Smoke", false);
       Level.SetValue(properties, "Can Speak", false);
       Level.SetValue(properties, "Return spawn place", false);
       Level.SetValue(properties, "Restore spawn direction", false);
       Level.SetValue(properties, "Can idle animation", false);

       -- #TODO 
       AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GAD1", Actor.ACTOR_TYPE_CIVILIAN);

       AI.Idle( gad, properties );

       Level.RemoveTimer( 'GDTM' );
    end
 end

  function Level.IsPlayerHotelVisitor()
     local player = Level.GetPlayer();
     if (player == nil) then
        return false;
     end

     return Actor.HasCustomEquipment( player, 'TICK' );
  end

  function Level.RegisterHotelVisitors()

     local visitors = {
          'SM15', 'M105', 'SM17', 'SM51', 'SM52', 'M118', 'SM11', 'SM13',
          'M104', 'M203', 'SM12', 'H105', 'HG14', 'SM27', 'H101', 'SM28',
          'SM24', 'SM25', 'SM35', 'SM50', 'SM49', 'SM31', 'SM30', 'SM34',
          'M113', 'M110', 'M111', 'SM44', 'SM45', 'M117', 'M116', 'M207',
          'M208', 'SM46', 'SM47', 'SM37', 'M114', 'SM18', 'SM19', 'SM22',
          'SM20', 'M106', 'M107', 'M109', 'M108', 'SM23', 'SM29', 'SM36',
          'SM38', 'SM39', 'SM40', 'SM42', 'SM43', 'M115', 'SM48', 'GAD1', 
          'SM53' };

     local n = table.getn(visitors);

     for i = 1, n do
         local docs = Level.CreateItem( "Custom" , "Equipment" );

         if (docs != nil) then

            Entity.SetUniqueID( docs, 'TICK' );
         
            Level.SetCustomItemName( docs, MissionText.Message_Ticket );
            Level.SetCustomItemIcon( docs, "ammo_doc" );

            local visitor = Level.FindActor( visitors[i] );
            if ( visitor != nil ) then 
               Actor.PutPouch( visitor, Actor.GetEmptyPouch(visitor), docs );
            end
         end
     end
  end

  function Level.OnStopMove( actorId )

      if (actorId == 'HM03') then

        Level.AddSmallMessage( MissionText.Message_StopMove1, 15.0, 255, 255, 255 );
        return;

      elseif (actorId == 'HG30' or
              actorId == 'HG09' or
              actorId == 'HG10' or
              actorId == 'HG07') then

        Level.AddSmallMessage( MissionText.Message_StopMove2, 15.0, 255, 255, 255 );
        return;

      elseif (actorId == 'HG12') then

        Level.AddSmallMessage( MissionText.Message_StopMove5, 15.0, 255, 255, 255 );
        return;

      elseif (actorId == 'HG11' or
              actorId == 'HG21') then

        Level.AddSmallMessage( MissionText.Message_StopMove3, 15.0, 255, 255, 255 );
        return;

      elseif (actorId == 'HG22') then

        Level.AddSmallMessage( MissionText.Message_StopMove1, 15.0, 255, 255, 255 );
        return;

      elseif (actorId == 'HG50' or
              actorId == 'HG32') then

        Level.AddSmallMessage( MissionText.Message_StopMove4, 15.0, 255, 255, 255 );
        return;

      -- HG38 after local alert
      elseif (actorId == 'HG46' or
              actorId == 'DPM1' or
              actorId == 'HG38') then


        Level.AddSmallMessage( MissionText.Message_StopMove1, 15.0, 255, 255, 255 );
        return;

      end

  end

  function Level.CheckNeedStop( actorId )

      local player = Level.GetPlayer();
      if (player == nil) then 
         return false;
      end

      local form = Actor.GetActorType(player);

      if (actorId == 'HM03') then

          return true;

      elseif (actorId == 'HG30' or
              actorId == 'HG12' or
              actorId == 'HG09' or
              actorId == 'HG10' or
              actorId == 'HG07') then

          if (Level.IsPlayerHotelVisitor() != false and
              Level.IsPlayerCook() == false) then
             return false;
          end

          if (form != Actor.ACTOR_TYPE_CIVILIAN) then
             return false;
          end

          return true;

      elseif (actorId == 'HG11' or
              actorId == 'HG21' or
              actorId == 'HG32' or
              actorId == 'HG50') then

          return (form == Actor.ACTOR_TYPE_CIVILIAN);

      elseif (actorId == 'HG22') then

          return true;

      elseif (actorId == 'HG46' or
              actorId == 'DPM1' or
              actorId == 'HG38') then

          return true;
                                     
      end

      return true;

  end

  function Level.OnGadIdentified()

     if (Level.IsMissionFailed() != false) then
        return;
     end

     -- $TODO Add new mission tasks
     Level.AddMissionTask( MissionText.Task_3, 'KILL', "levels\\hotel\\kill_task.txt" );
     Level.AddMissionTask( MissionText.Task_4, 'DOCS', "levels\\hotel\\docs_task.txt" );

     -- Complete mission task...
     Level.CompleteMissionTask( 'FNDS', 15.0 );
     Level.EnableLevelMark( 'LIBR', false );

     -- Write information
     Level.AddLargeMessage( MissionText.TaskChanged, 15.0 , 255, 255, 255 );

     -- Mark gad
     local gad = AI.FindNPC( 'GAD1' );
     if (gad != nil) then
        Actor.MarkAsTarget( Level.FindActor('GAD1'), true );
     end

     Level.EnableLevelMark('POOL', true);
  end

  function Level.OnGadIdentifiedFailed()

     Level.FailedMission( MissionText.Failed_SpyOut );

  end

  function Level.UninstallWeaponTask()

       Level.EnableLevelMark('BRN1', false );
       Level.EnableLevelMark('BRN2', false );
       Level.EnableLevelMark('BRN3', false );

       local barns = { 'Barn1', 'Barn2', 'Barn3' };
       for i = 1, table.getn(barns) do

          local trg = Level.FindTrigger( barns[i] );

          if ((trg != nil) and 
              (Level.BarnTriggerUnregistred[i] == false)) then
             Level.UnregisterTrigger( trg );
             Level.BarnTriggerUnregistred[i] = true;
          end
       end
  end

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if (Level.IsMissionFailed() != false) then
       return;
    end

    if  ( trgname == 'LibraryTrigger' ) then

--       local gad = Level.FindActor( 'GAD1' );
--       if (gad != nil) then
--          Actor.MarkAsTarget( gad, true );
--       end

       return;

    elseif (trgname == 'HallTrigger') then

        Level.AtHallTrigger = true;
        Level.CheckDiplomatJob( true, false );

    elseif (trgname == 'StartDiplomatJob') then

        Level.CheckDiplomatJob( false, false );

    elseif (trgname == 'ExitKitchTrigger01' or
            trgname == 'ExitKitchTrigger02' or
            trgname == 'ExitKitchTrigger03') then

       if (Level.IsMissionTaskCompleted('WEAP')) then
           Level.EnableLevelMark('REFR', false);
           Level.EnableLevelMark('PLAT', false);
       end

    elseif (trgname == 'LeaveTrigger01' or
            trgname == 'LeaveTrigger02') then

       if (Level.IsMissionTaskCompleted('FNDS') and
           Level.IsMissionTaskCompleted('DOCS') and
           Level.IsMissionTaskCompleted('KILL') and
           Level.IsMissionTaskCompleted('LEAV') == false) then

           Level.CompleteMissionTask('LEAV');                 
           Level.CompleteMissionTask('WEAP');

           Level.EnableLevelMark('LEV1', false);
           Level.EnableLevelMark('LEV2', false);
       end

       return;

    elseif ( trgname == 'Barn1') then

       if (Level.IsMissionTaskCompleted('WEPN') == false) then
          Level.AddSmallMessage( MissionText.Message_Info, 15.0, 255, 255, 255 );
       end

       Level.EnableLevelMark('BRN1', false );

       if (Level.BarnTriggerUnregistred[1] == false) then

           Level.BarnTriggerUnregistred[1] = true;
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

       end

       return;

    elseif (trgname == 'Barn3') then

       if (Level.IsMissionTaskCompleted('WEPN') == false) then
          Level.AddSmallMessage( MissionText.Message_Info, 15.0, 255, 255, 255 );
       end

       Level.EnableLevelMark('BRN3', false );

       if (Level.BarnTriggerUnregistred[3] == false) then

           Level.BarnTriggerUnregistred[3] = true;
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

       end

       return;

    elseif (trgname == 'Barn2') then

       Level.CompleteMissionTask( 'WEPN', 15.0 );
       Level.UninstallWeaponTask();

    elseif (trgname == 'DiplomatRoomTrigger') then

       if (Level.IsMissionTaskCompleted('FNDS') != false and
           Level.IsMissionTaskCompleted('DOCS') == false) then

           Level.EnableLevelMark('DOCS', true);
       end

    end

  end

  function Level.OnLibrarySmallMessage()

    Level.RemoveTimer('LBSM');
    Level.BlockLbrMessage = false;

  end

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

    if (trgname == 'LibraryTrigger') then

      if (Level.IsMissionTaskCompleted( 'FNDS' ) == false) then

         local gad = Level.FindActor( 'GAD1' );
         if (gad != nil) then
            Actor.MarkAsTarget( gad, false );
         end

         return;
      end

    elseif (trgname == 'HallTrigger') then
      Level.AtHallTrigger = false; 
    end
  end

  function Level.OnFinishAlert( alertGroupId )
     
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     for i = 1, 7 do
        if (AI.IsLocalAlert(i) != false) then 
           return;
        end
     end

     Level.AddSmallMessage( MissionText.Message_AlarmFinished, 15.0, 255, 255, 255 );

  end

  function Level.OnInitCallAlert( alertGroupId )

    if (alertGroupId == 2) then
       return false; 
    end

    return true;
  end

  function Level.OnAlert( alertGroupId )

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    if (alertGroupId == 1) then

       AI.SetLocalAlert(1, 300);
       AI.SetLocalAlert(2, 300);
       AI.SetLocalAlert(3, 300);
       AI.SetLocalAlert(4, 300);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);

       Level.AddSmallMessage( MissionText.Message_AlarmCalled_1, 15.0, 255, 255, 255 );

    elseif (alertGroupId == 2) then

       AI.SetLocalAlert(2, 160);

    elseif (alertGroupId == 3) then

       AI.SetLocalAlert(3, 100);

    elseif (alertGroupId == 4) then

       AI.SetLocalAlert(4, 200);


    elseif (alertGroupId == 5) then

       AI.SetLocalAlert(5, 200);


    elseif (alertGroupId == 6) then

       AI.SetLocalAlert(6, 400);

       if (Level.IsMissionFailed() != false) then 
          return ;
       end 
 
       -- Diplomat alert script...
       if (Level.DocsInSeif != false) then

          local diplomat = AI.FindNPC('DPM1');

          if (diplomat != nil) then
             local properties = Level.CreateCustomParams();
             Level.SetValue(properties, "CustomString_1", 'A113');
  
             AI.RunScriptTask(diplomat, "scripts:job\\AnchorJob_safe_run.lua", AI.LOGIC_DEFAULT, properties);

             Level.AddSmallMessage( MissionText.Message_DiplomatGoGetDocs, 15.0, 255, 255, 255 );
          end

       end

       if (Level.DocsDiplomat != false and
           Level.DocsChanged == false) then
                                                                     
           Level.FailedMission( MissionText.Failed_DiplomatGetDocs );
           return;
       end

       if (Level.DocsDiplomat == false and
           Level.DocsInSeif == false) then

           Level.FailedMission( MissionText.Failed_DiplomatAlert );
           return;

       end

    elseif (alertGroupId == 7) then

       AI.SetLocalAlert(7, 300);

       -- Add additional guards...
       local guard = AI.FindNPC( 'HG38' );

       if (guard != nil) then
          local properties = Level.CreateCustomParams();
 
          Level.SetValue(properties, "Return spawn place", true);
          Level.SetValue(properties, "Animation name", "Relaxed_Idle_GuardLook");
          Level.SetValue(properties, "Can Patrol Point", false);
          Level.SetValue(properties, "Can Smoke", false);
          Level.SetValue(properties, "Can Speak", false);
          Level.SetValue(properties, "Restore spawn direction", true);
          Level.SetValue(properties, "Return place noise", 0.0);
          Level.SetValue(properties, "Can use anchors", false);
          Level.SetValue(properties, "Dont leeve room", false);
          Level.SetValue(properties, "Position", 783.0, -1.54, 330.4);
          Level.SetValue(properties, "Direction", -1.0, 0.0, 0.0);
          Level.SetValue(properties, "Return place waypoint", '7742');

          AI.SetGuardState( guard, true, 40.0, 782.0, -1.74, 331.0, 'DPLR', true );
          AI.Idle( guard, properties );
       end

       Level.AddSmallMessage( MissionText.Message_AlarmCalled_2, 15.0, 255, 255, 255 );
    end
  end

  function Level.GiveTicket()
     local docs = Level.CreateItem( "Custom" , "Equipment" );

     if ( docs != nil ) then

         Entity.SetUniqueID( docs, 'TICK' );
         
         Level.SetCustomItemName( docs, MissionText.Message_Ticket );
         Level.SetCustomItemIcon( docs, "ammo_doc" );

         local player = Level.GetPlayer();
         if ( player != nil ) then 
            Actor.PutPouch( player, Actor.GetEmptyPouch(player), docs );
         end

         Level.EnableLevelMark('TICK', false);
     end
  end


  function Level.CheckDiplomatJob( checkPass, restart )
     if (checkPass != false) then
        local player = Level.GetPlayer(); 
        if (Actor.HasCustomEquipment( player, 'TICK' ) == false) then
           return;
        end
     end

     if (restart == false) then
        if (Level.DiplomatInitialized != false) then
           return;
        end
     end

     if (Level.IsMissionTaskCompleted( 'FNDS' ) == false and
         Level.IsMissionFailed() == false) then

        local npc = AI.FindNPC('DPM1');

        if (npc != nil) then

           if (AI.IsDefault(npc) == false) then
              return;
           end

            -- Create new idle for diplomat...
           local properties = Level.CreateCustomParams();
 
           Level.SetValue(properties, "Can use anchors", true);
           Level.SetValue(properties, "Use anchor interval", 0.0);
           Level.SetValue(properties, "Ignore attention", false);
           Level.SetValue(properties, "Find anchor radius", 300.0);
           Level.SetValue(properties, "Don't repeat anchors", false);
           Level.SetValue(properties, "AnchorQueue0", 'AN91');
           Level.SetValue(properties, "AnchorQueue1", 'AN92');
           Level.SetValue(properties, "AnchorQueue2", 'AN90');
           Level.SetValue(properties, "Can Patrol Point", false);
           Level.SetValue(properties, "Can Smoke", false);
           Level.SetValue(properties, "Can Speak", false);
           Level.SetValue(properties, "Return spawn place", false);
           Level.SetValue(properties, "Restore spawn direction", false);
           Level.SetValue(properties, "Can idle animation", false);
      
           AI.Idle( npc, properties );

           Level.DiplomatInitialized = true;
        end
     end
  end
                           
  function Level.FinishFindGadTask( failed )

     if (Level.IsMissionFailed() == false) then
        if (failed != false) then
           Level.OnGadIdentifiedFailed();
        else
           Level.OnGadIdentified();
        end
     end

     local npc = AI.FindNPC('DPM1');

     if (npc != nil) then
         -- Create new idle for diplomat...
        local properties = Level.CreateCustomParams();
 
        Level.SetValue(properties, "Can use anchors", true);
        Level.SetValue(properties, "Use anchor interval", 0.0);
        Level.SetValue(properties, "Find anchor radius", 300.0);
        Level.SetValue(properties, "Don't repeat anchors", false);
        Level.SetValue(properties, "AnchorQueue0", 'A107');
        Level.SetValue(properties, "AnchorQueue1", 'A106');
        Level.SetValue(properties, "AnchorQueue2", 'A110');
        Level.SetValue(properties, "AnchorQueue3", 'A102');
        Level.SetValue(properties, "AnchorQueue4", 'A105');
        Level.SetValue(properties, "Can Patrol Point", false);
        Level.SetValue(properties, "Can Smoke", false);
        Level.SetValue(properties, "Can Speak", false);
        Level.SetValue(properties, "Return spawn place", false);
        Level.SetValue(properties, "Restore spawn direction", false);
        Level.SetValue(properties, "Can idle animation", false);
      
        AI.SetGuardState( npc, true, 40.0, 780.0, -1.5, 360.0, 'DPLR', true );
        AI.Idle( npc, properties );
      
        -- Create new script job for diplomat
        local prop2 = Level.CreateCustomParams();
        Level.SetValue(prop2, "CustomString_1", 'A109');
        Level.SetValue(prop2, "CustomString_2", 'A108');
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob2_safe.lua", AI.LOGIC_DEFAULT, prop2);
     end
 
     -- Setup gad timer
     Level.AddTimer( 'GDTM', "OnGadTimer", 60, true );

     Level.DocsDiplomat = true;
     Level.DocsInstalled = false;
     Level.DocsInSeif = false;
  end

  function Level.OnHotelManagerTimer()
    local manager = AI.FindNPC('HM03');

    if (Level.ManagerTriggerName == "") then
       return;
    end

    if (Level.IsPlayerHotelVisitor() == false) then
       if (AI.IsDefault(manager) != false) then
          if (Level.HasPlayerAction('VTHT') == false) then                 
             Level.AddPlayerAction("VTHT", MissionText.Message_Registrate, Level.ManagerTriggerName, false);
          end
       else
          if (Level.HasPlayerAction('VTHT') != false) then
             Level.RemovePlayerAction('VTHT');
          end
       end
    end
  end


  function Level.CheckCanCloseDoor()

       local npc = AI.FindNPC('BC06');

       if (npc != nil) then

         if (AI.GetRoom(npc) != Level.GetRoom('VA45')) then
            return false;
         end

         local n = Entity.GetNode(Level.FindActor('BC06') );
         local pos = {}; 
         pos.x, pos.y, pos.z = node.GetPosition( n );

         if (pos.x > 358.0) then
            return false;
         end

         return true;
       end

       return false;
  end

  function Level.OnAttentionCheckTimer()
     local spy = AI.FindNPC('GAD1');
     local diplomat = AI.FindNPC('DPM1');

     if (spy == nil or
         diplomat == nil) then

        Level.RemoveTimer('ACTR');

        if (Level.IsMissionFailed() == false) then
           Level.FailedMission(MissionText.Failed_Alert);
        end
     end

     if (AI.GetAttention(spy) == AI.ATTENTION_ALARM or
         AI.GetAttention(diplomat) == AI.ATTENTION_ALARM) then

        Level.RemoveTimer('ACTR');

        if (Level.IsMissionFailed() == false) then
           Level.FailedMission(MissionText.Failed_Alert);
        end
     end

  end

  function Level.EnableAttentionCheckTimer( bOnOff )

     if (bOnOff != false) then
        Level.AddTimer( 'GDTM', "OnAttentionCheckTimer", 0.5, true );
     else
        Level.RemoveTimer('ACTR');
     end
  end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformInputs(levelStats, aiStats, a, c, p, n, acc)
   p = Level.DefaultCalcProf(c, n, acc);
   return a, c, p, n;
end

--------------------------------------------------------
-- Name: Level.OnCalcScore()
-- Desc:
--------------------------------------------------------
function Level.OnCalcRateScore(rank, score, levelStats, aiStats, a, c, p, n, acc)
   return rank, score;
end

-- –укомахатели:
-- HM03 - регистраци€                   +
-- HG07 - номера (второй этаж)          +
-- HG09 - библиотека                    +
-- HG10 - номера                        +
-- HG11 - подсобные помещени€           +
-- HG12 - бассейн                       +
-- HG21 - подсобные помещени€           +
-- HG22 - электростанци€                +
-- HG30 - второй этаж                   +
-- HG32 - второй этаж                   +
-- HG46 - только менеджер               +
-- DPM1 - дипломат комната              +

-- A107
-- A106
-- A102
-- A105

-- A108

-- ”достоверитьс€ что предатель передал документы
-- ¬ычислить предател€
-- Ќайти спр€танное оружие
-- ”ничтожить предател€
-- «аменить документы
-- ѕокинуть отель