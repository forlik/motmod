
  MissionText = 
  {
      --Mission text
      Task_1                = " Sneak onto the base";
      Task_2                = " Get a uniform";
      Task_3                = " Hijack a truck";
      Task_4                = " Obtain the documents";
      Task_5                = " Neutralize the captive";
      Task_6                = " Carry out the captive";
      Fail_Alarm            = "Alarm has been raised";
      Fail_YKilled          = "Dietrich Meltzer has been killed";
      Message_2             = "Tasks have been updated";
      Message_Docs          = "GET DOCUMENTS";
      Message_DisableAlert  = "DISABLE ALARM";
      Fail_Vodila           = "Task has failed: The driver is dead";
      Fail_Bliz             = "Task has failed: The car has exploded";
      Message_3             = "Tasks have been changed";
      Key_Name              = "Key to the safe";
      Message_BunkerAlarm   = "The alarm has been raised around the bunker. ";
      Message_BaseAlarm_1   = "The alarm has been raised. The number of patrols has increased";
      Message_BaseAlarm_2   = "The alarm has been raised. Guards are on high alert.";
      Message_AlarmFinished = "Guards are standing down..";
      Message_StopMove_1    = "Only officers are allowed to enter this part of the building..";
      Message_StopMove_2    = "Only officers are allowed to enter this room..";
      Message_StopMove_3    = "Only officers are allowed to enter the radio room..";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnFinishLoad()

     -- forlik System:SetVar( 'r_glow' , true );
     -- forlik System:SetVar( 'r_glow_r' , 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); --forlik
    
     --- init music

     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_1.ogg" );

     -- init stuff

     Level.SeifDoor     = Level.FindDoor( 'SEIF' );
     Level.SeifTrigger  = nil;
     Level.Yazik        = nil;
     Level.YazikTrigger = nil;

     if ( Level.SeifDoor != nil ) then
       Level.SetDoorNotifyScript( Level.SeifDoor , true );
       Level.SetDoorUnlockKey( Level.SeifDoor, 'SFKY' );
     end;

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.OnSave()

     Stream.WriteInt ( Level.VodilaFormId );   
     Stream.WriteBool( Level.YazikMoved );
     Stream.WriteBool( Level.YazikHitted );  
     Stream.WriteBool( Level.HasDocs );
     Stream.WriteBool( Level.AlertBlock );
     Stream.WriteBool( Level.EnterBase );
     Stream.WriteBool( Level.AlertDisabled );

     Stream.WriteInt (Level.PlayerAtDitrihPlace);
     Stream.WriteBool(Level.ExecutedDitrihHack);

     Level.OnSave_Common(); -- forlik
  end;

  function Level.OnLoad()

     Level.VodilaFormId  = Stream.ReadInt();
     Level.YazikMoved    = Stream.ReadBool();
     Level.YazikHitted   = Stream.ReadBool();
     Level.HasDocs       = Stream.ReadBool();
     Level.AlertBlock    = Stream.ReadBool();
     Level.EnterBase     = Stream.ReadBool();
     Level.AlertDisabled = Stream.ReadBool();

     Level.PlayerAtDitrihPlace  = Stream.ReadInt();
     Level.ExecutedDitrihHack   = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();
  end;


  function Level.OnLoaded()

     Level.OnLoaded_Common(); -- forlik

     --- init tasks

     Level.AddMissionTask( MissionText.Task_2, 'VODL', "levels\\demoday\\vodila_task.txt" );
     Level.AddMissionTask( MissionText.Task_3, 'UGON', "levels\\demoday\\ugon_task.txt" );
     Level.AddMissionTask( MissionText.Task_1, 'BASA', "levels\\demoday\\basa_task.txt" );

     -- handlers

     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "YAZK" , "OnHittedYazik");
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "YAZK" , "OnKilledYazik");
     Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, "VODL", "OnVodilaCloth" );
     Level.AddActionHandler( Level.AH_ENTER_VEHICLE, "BLIZ", "OnBlitzEnter" );
     Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, "BLIZ", "OnBlitzLeave" );
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "VODL", "OnFailedTaskVodila" );
     Level.AddActionHandler( Level.AH_EXPLODE_VEHICLE, "BLIZ", "OnFailedTaskBliz" );


     Actor.MarkAsTarget( Level.FindActor( 'YAZK' ) , true );

     local vodila = Level.FindActor( 'VODL' );
   
     if ( vodila != nil ) then

        Actor.MarkAsTarget( vodila , true );

        Level.VodilaFormId = Actor.GetWearFormId( vodila );

     else

        Level.VodilaFormId = 0;

     end;

     Level.YazikMoved    = false;
     Level.YazikHitted   = false;
     Level.HasDocs       = false;
     Level.AlertBlock    = false;
     Level.EnterBase     = false;
     Level.AlertDisabled = false;
           
     Level.EnableLevelMark( 'YAZK', false );
     Level.EnableLevelMark( 'MAK1', false );
     Level.EnableLevelMark( 'MAK2', false );
     Level.EnableLevelMark( 'MAK3', false );
     Level.EnableLevelMark( 'MAK4', false );

     Level.PlayerAtDitrihPlace = -1;
     Level.ExecutedDitrihHack = false;

     -- init seif key

     local yazik = Level.FindActor( 'YAZK' );
     if ( yazik != nil ) then

       Actor.EnableHitFace( yazik, true );

       local key = Level.CreateItem( "Custom" , "Equipment" );
       if ( key != nil ) then

       Entity.SetUniqueID( key, 'SFKY' );

       Level.SetCustomItemName( key, MissionText.Key_Name );
       Level.SetCustomItemIcon( key, "ammo_key" );
     
       Actor.PutPouch( yazik, Actor.GetEmptyPouch(yazik), key );

       end;

     end;

    
     --- init player

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Summer" ); -- forlik

       if ( Level.HasPlayerEquipPack() == false ) then

         local machineGun = Level.CreateItem("ppsh","Weapon");
         local pistol     = Level.CreateItem("NaganSilencer","Weapon");
         local knife      = Level.CreateItem("knife","Weapon");
 
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );

         Actor.PutWeaponAmmo( player, "ppsh");
         Actor.PutWeaponAmmo( player, "ppsh");
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutWeaponAmmo( player, "nagan");

         Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
         Actor.PutEmptyPouch( player, "medikit", "Equipment" );

         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );

         Actor.PutEmptyPouch( player, "Smoke", "Weapon" );

         Actor.PutEmptyPouch( player, "binocular", "Equipment" );
         Actor.PutEmptyPouch( player, "lockpick", "Equipment" );

         local pack = Level.CreateItem( "playersack", "container" );
         if ( pack == nil ) 
           then
             error('Failed create player pack');
           end;

         Actor.PutBackPack( player, pack );

         ItemPack.AddItem( pack, Level.CreateItem( "pmd6", "Weapon" ) );
         ItemPack.AddItem( pack, Level.CreateItem( "dynamite", "Weapon" ) );
       end;

     end;

     Level.ChangePlayerStand( 2 );

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik

     Level.OnFinishLoad();

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnKilledYazik()

    Level.FailedMission( MissionText.Fail_YKilled );

  end;

  function Level.OnVodilaCloth()

    if ( Level.IsMissionFailed() != false or Level.HasMissionTask('VODL') == false ) then
      return;
    end;


    if ( Level.IsMissionTaskCompleted('VODL') == false ) then

       Level.CompleteMissionTask('VODL', 15.0 );
       Level.EnableLevelMark( 'VODL', false );

    end;
       
  end;

  function Level.OnFailedTaskVodila()

   if ( Level.IsMissionFailed() != false  ) then
      return;
    end;

   if ( Level.IsMissionTaskCompleted('VODL') == false and
        Level.HasMissionTask('UGON') != false and
        Actor.CanGetClothes( Level.FindActor('VODL') ) == false ) then

    -- strange?!
    Level.PlayMenuSound("task_finish");

    Level.AddLargeMessage( MissionText.Fail_Vodila , 15.0 , 255, 0, 0 );
    Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );

    Level.RemoveMissionTask('VODL');
    Level.RemoveMissionTask('UGON');

   end;

  end;

  function Level.OnFailedTaskBliz()

   if ( Level.IsMissionFailed() != false ) then
      return;
    end;

   if ( Level.IsMissionTaskCompleted('UGON') == false and 
        Level.HasMissionTask('VODL') != false ) then

    Level.AddLargeMessage( MissionText.Fail_Bliz , 15.0 , 255, 0, 0 );
    Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );

    -- strange?!
    Level.RemoveMissionTask('VODL');
    Level.RemoveMissionTask('UGON');

   end;
  

  end;

  function Level.OnBlitzEnter()

    if ( Level.IsMissionFailed() != false or Level.HasMissionTask('UGON') == false ) then
      return;
    end;
    
    if ( Level.IsMissionTaskCompleted('UGON') == false ) then

       Level.CompleteMissionTask('UGON', 15.0 );
       Level.EnableLevelMark( 'UGON', false );

    end;

    if (Level.EnterBase == false) then
       local player = Level.GetPlayer();
       if ( player != nil ) then
          local playerFormId = Actor.GetWearFormId( player );
          if (playerFormId == Level.VodilaFormId) then
             AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS20", Actor.ACTOR_TYPE_CIVILIAN);
             AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS21", Actor.ACTOR_TYPE_CIVILIAN);
          end
       end
    end

  end;

  function Level.OnBlitzLeave()

    if (Level.EnterBase == false) then
       AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS20", Actor.ACTOR_TYPE_SOLDIER);
       AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS21", Actor.ACTOR_TYPE_SOLDIER);
    end

  end;

  function Level.OnHittedYazik()

   Level.UpdateLeaveTask( "HITA" );
   Level.CompleteMissionTask( "HITA" );

   if (Level.HasMissionTask('YMOV')) then
       Level.AddLargeMessage( MissionText.Message_2 , 15.0 , 255, 255, 255 );
   end

   Level.EnableLevelMark( 'MAK1' , false );
   Level.EnableLevelMark( 'MAK2' , false );
   Level.EnableLevelMark( 'MAK3' , false );
   Level.EnableLevelMark( 'MAK4' , false );

   Level.YazikHitted = true;

  end;

  function Level.OnOpenDoor( door )

   if ( Level.SeifTrigger != nil and door == 'SEIF' ) then

      AI.StartDecamouflage( 50.0, 70.0, 2.0 );
      Level.SeifTrigger:OnEnterArea();

   end;

  end;

  function Level.OnCloseDoor( door )

    if ( door == 'SEIF' ) then

       Level.RemovePlayerAction("DOCS");

    end;

  end;

  function Level.UpdateLeaveTask( id )

    if ( Level.HasMissionTask('DOCS') == false or
         Level.HasMissionTask('HITA') == false ) then
       return;
    end

    if (Level.HasMissionTask('YMOV') != false) then
       return;
    end

    if ( (Level.IsMissionTaskCompleted('DOCS') != false or id == 'DOCS') and
         (Level.IsMissionTaskCompleted('HITA') != false or id == 'HITA') ) then

       Level.AddMissionTask( MissionText.Task_6, 'YMOV', "levels\\demoday\\ymov_task.txt" );

    end

  end
 
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( trgname == 'basa_Trigger' or trgname == 'basa_Trigger2' ) then

       if ( Level.IsMissionTaskCompleted('BASA') == false ) then

         Level.AddMissionTask( MissionText.Task_4, 'DOCS', "levels\\demoday\\docs_task.txt" );
         Level.AddMissionTask( MissionText.Task_5, 'HITA', "levels\\demoday\\hit_task.txt" );
         -- Level.AddMissionTask( MissionText.Task_6, 'YMOV', "levels\\demoday\\ymov_task.txt" );

         Level.CompleteMissionTask('BASA', 15.0 );
        
         Level.AddLargeMessage( MissionText.Message_2 , 15.0 , 255, 255, 255 );

         if ( Level.YazikMoved == true ) then
            Level.CompleteMissionTask( "YMOV", 0.0 );
         end;

         Level.EnableLevelMark( 'BASA', false );
         Level.EnableLevelMark( 'UGON', false );
         Level.EnableLevelMark( 'VODL', false );

         Level.EnableLevelMark( 'YAZK', true );
         Level.EnableLevelMark( 'MAK1', true );
         Level.EnableLevelMark( 'MAK2', true );
         Level.EnableLevelMark( 'MAK3', true );
         Level.EnableLevelMark( 'MAK4', true );

         Level.RemoveMissionTask('VODL');
         Level.RemoveMissionTask('UGON');

         -- Update base guarders decamouflage level
         AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS20", Actor.ACTOR_TYPE_CIVILIAN);
         AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GS21", Actor.ACTOR_TYPE_CIVILIAN);

         Level.EnterBase = true;
       end;

    elseif ( trgname == 'YazikTrigger') then
   
        if ( Level.IsMissionTaskCompleted('HITA') != false ) then

          local completed = false;

          local player = Level.GetPlayer();
          if ( player != nil ) then

               completed = Actor.HasPickupedActor( player, 'YAZK') or Level.IsBodyInPlayerVehicle('YAZK');

               if ( completed == false ) then

                 if ( Level.Yazik == nil ) then
                       Level.Yazik = Level.FindActor('YAZK');
                 end;
                 
                 if ( Level.YazikTrigger == nil ) then
                       Level.YazikTrigger = Level.FindTrigger( 'YazikTrigger' );
                 end;

                 if ( Level.Yazik != nil and Level.YazikTrigger != nil ) then

                    completed = Trigger.IsIntersectNode( Level.YazikTrigger, Entity.GetNode( Level.Yazik ) );
 
                 end;

               end;


          end;

          if ( completed != false ) then
             Level.CompleteMissionTask('YMOV', 15.0 );           
             Level.YazikMoved = true;
          end;
 
       end;

    elseif (trgname == 'DitrihPlaceTrigger') then

       Level.PlayerAtDitrihPlace = tonumber(trgcmd);

    end;
     

  end;

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

    if (trgname == 'DitrihPlaceTrigger') then

       Level.PlayerAtDitrihPlace = -1;

    end;

  end;

  function Level.OnStopMove( actorId )
     if (actorId == 'S146') then
         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );
         return;
     elseif (actorId == 'S154') then
         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );
         return;
     elseif (actorId == 'G160') then
         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );
         return;
     end
  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end
     local form = Actor.GetActorType(player);
     
     if (actorId == 'S154' or
         actorId == 'S146' or 
         actorId == 'G160') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;       
        else
           return true;
        end
     end

     return true;
  end;

  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level::OnFinishAlert", "group", alertGroupId);

     AI.SetLocalAlert( alertGroupId, false );

    if (AI.IsLocalAlert(1) == false and
        AI.IsLocalAlert(2) == false and
        AI.IsLocalAlert(3) == false and
        AI.IsLocalAlert(4) == false and
        AI.IsLocalAlert(5) == false) then

        Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
        Level.EnableAlarmSound( false );

    end

  end

  function Level.OnAlert( alertGroupId )

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    if (alertGroupId == 13) then 

       AI.SetLocalAlert(13, true);
       AI.AddAlertValue(1);

       Level.AddSmallMessage( MissionText.Message_BunkerAlarm, 10.0, 255, 0, 0);
       return;
    end

    if (alertGroupId == 1 or
        alertGroupId == 2 or
        alertGroupId == 3 or
        alertGroupId == 4 or
        alertGroupId == 5 or
        alertGroupId == 6) then

       AI.AddAlertValue(2);

       AI.SetLocalAlert(1, true, 400);
       AI.SetLocalAlert(2, true, 300);
       AI.SetLocalAlert(3, true, 300);
       AI.SetLocalAlert(4, true, 300);
       AI.SetLocalAlert(5, true, 300);
       AI.SetLocalAlert(6, true, 300);

       Level.EnableAlarmSound( true );

       if (Level.AlertBlock == false) then
          -- Add patrols...

          AI.Patrol(AI.FindNPC('PZ01'), 'Path32', nil);
          AI.PatrolFollow(AI.FindNPC('S128'), 'Path32', AI.FindNPC('PZ01'), 0.0, -12.0, nil);
          AI.PatrolFollow(AI.FindNPC('S127'), 'Path32', AI.FindNPC('PZ01'), 0.0, -24.0, nil);

          AI.Patrol(AI.FindNPC('OF03'), 'Path01', nil);
          AI.PatrolFollow(AI.FindNPC('GS41'), 'Path01', AI.FindNPC('OF03'), -5.0, -11.0, nil);
          AI.PatrolFollow(AI.FindNPC('GS27'), 'Path01', AI.FindNPC('OF03'),  5.0, -22.0, nil);

          Level.AddSmallMessage( MissionText.Message_BaseAlarm_1, 10.0, 255, 0, 0);
          Level.AlertBlock = true;
       else
          Level.AddSmallMessage( MissionText.Message_BaseAlarm_2, 10.0, 255, 0, 0);
       end
    end

    if (alertGroup == 1) then
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
    end

    if (alertGroup == 2) then
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
    end

    if (alertGroup == 3) then
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
    end

    if (alertGroup == 4 or
        alertGroup == 5) then
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "5", AI.ATTENTION_ALARM, true);
    end
    
  end;

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
