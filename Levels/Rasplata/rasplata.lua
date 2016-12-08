
  MissionText = 
  {
      --Mission text
      Task_1             = " Kill A. Mader";
      Task_2             = " Kill W. Bartels";
      Task_3             = " Kill H. Knutt";
      Task_4             = " Leave the village";
      Message_1          = "Targets have changed";
      Message_2          = "The alarm has been raised. The number of patrols has increased..";
      Message_3          = "The alarm has been raised. The guards are on high alert..";
      Message_4          = "Guards are standing down..";
      Message_StopMove_1 = "Access to the building is not authorized..";
      Message_StopMove_2 = "Only officers are allowed to enter this building..";
      Message_StopMove_3 = "Access to the room is not authorized..";
      Message_Station    = "FUSE THE RADIO";
      Message_Poison     = "POISON";
      Fail_Alarm         = "The alarm has been raised";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnFinishLoad()

     -- forlik System:SetVar( "r_farclip" , 3000.0 );
     -- forlik System:SetVar( "r_glow", true );
     -- forlik System:SetVar( "r_glow_r", 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); --forlik

     --Level.AddMusic( Level.MUSIC_MOOD_DEFAULT  , "sounds\\music\\stealth_1.ogg" );
     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_1.ogg" );

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.OnLoad()

     Level.NumKilled            = Stream.ReadInt();
     Level.RadioBroken          = Stream.ReadBool();
     Level.ShnapsPoisoned       = Stream.ReadBool();
     Level.ShnapsPoisonedGet    = Stream.ReadBool();
     Level.ShnapsPoisonedActive = Stream.ReadBool();

     Level.AlertBlock = {};

     Level.AlertBlock[1]        = Stream.ReadBool();
     Level.AlertBlock[3]        = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

  end;

  function Level.OnSave()

     Stream.WriteInt( Level.NumKilled );
     Stream.WriteBool( Level.RadioBroken );
     Stream.WriteBool( Level.ShnapsPoisoned );
     Stream.WriteBool( Level.ShnapsPoisonedGet );
     Stream.WriteBool( Level.ShnapsPoisonedActive );

     Stream.WriteBool( Level.AlertBlock[1] );
     Stream.WriteBool( Level.AlertBlock[3] );
     Level.OnSave_Common(); -- forlik

  end;

  function Level.OnLoaded()

      Level.OnLoaded_Common(); -- forlik
      -- init tasks

      Level.AddMissionTask( MissionText.Task_1, 'LIQ1', "levels\\rasplata\\liq1_task.txt" );
      Level.AddMissionTask( MissionText.Task_2, 'LIQ2', "levels\\rasplata\\liq2_task.txt" );
      Level.AddMissionTask( MissionText.Task_3, 'LIQ3', "levels\\rasplata\\liq3_task.txt" );

      Level.EnableLevelMark( 'LEAV', false );

      Level.AddActionHandler( Level.AH_ACTOR_KILLED , "LIQ1" , "OnKilledLIQ1");
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , "LIQ2" , "OnKilledLIQ2");
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , "LIQ3" , "OnKilledLIQ3");

      -- patch
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GO08" , "OnKilledMarkedOfficer");
      Level.AddActionHandler( Level.AH_ACTOR_HITTED , "GO08" , "OnKilledMarkedOfficer");

      Actor.MarkAsTarget( Level.FindActor( 'LIQ1' ) , true );
      Actor.MarkAsTarget( Level.FindActor( 'LIQ2' ) , true );
      Actor.MarkAsTarget( Level.FindActor( 'LIQ3' ) , true );

      NPC.SetFlag( AI.FindNPC('RB31'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
      -- init params
      
      Level.NumKilled            = 0;
      Level.RadioBroken          = false;
      Level.ShnapsPoisoned       = false;
      Level.ShnapsPoisonedGet    = false;
      Level.ShnapsPoisonedActive = false;

      Level.AlertBlock = {};

      Level.AlertBlock[1] = false;
      Level.AlertBlock[3] = false;

      -- init player

      local player     = Level.FindActor('PLYR');
      if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Summer" ); -- forlik

       if ( Level.HasPlayerEquipPack() == false ) then
 
         local machineGun = Level.CreateItem("ppsh","Weapon");
         local pistol     = Level.CreateItem("nagansilencer","Weapon");
         local knife      = Level.CreateItem("knife","Weapon");

         Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL    , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE     , knife );

         Actor.PutEmptyPouch( player, "binocular", "Equipment" );

         local pack = Level.CreateItem( "playersack", "container" );
         if ( pack == nil ) 
           then
             error('Failed create player pack');
         end;

         Actor.PutBackPack( player, pack );

         ItemPack.AddItem( pack, Level.CreateItem( "pmd6", "Weapon" ) );
         ItemPack.AddItem( pack, Level.CreateItem( "pmd6", "Weapon" ) );
         ItemPack.AddItem( pack, Level.CreateItem( "knife", "Weapon" ) );

         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );

         Actor.PutEmptyPouch( player, "smoke", "Weapon" );
         Actor.PutEmptyPouch( player, "smoke", "Weapon" );
         Actor.PutEmptyPouch( player, "smoke", "Weapon" );

         Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );

         Actor.PutWeaponAmmo( player, "ppsh");
         Actor.PutWeaponAmmo( player, "nagan");

         Actor.PutEmptyPouch( player, "lockpick", "Equipment" );
         Actor.PutEmptyPouch( player, "medikit", "Equipment" );
       end;

      Level.ChangePlayerStand( 2 );

      end;

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();

      -- demo stuff..

      --Level.AddLargeMessage( MissionText.Message_Demo_1, 20.0 , 255, 255, 255 );
      --Level.AddLargeMessage( MissionText.Message_Demo_2, 20.0 , 255, 255, 255 );

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  -- patch
  function Level.OnKilledMarkedOfficer()
      if (AI.FindNPC('GO08') == nil) then 
         Level.EnableLevelMark( 'MAK4' , false );
      end
  end 

  function Level.OnKilledActor( actorId, markId )

     if ( Level.IsMissionFailed() != false ) then
       return;
     end;

     if ( Level.IsMissionTaskCompleted( actorId ) == false ) then

        Level.NumKilled = Level.NumKilled + 1;

        if ( Level.NumKilled == 3 ) then

         Level.EnableLevelMark( 'MAK4', false );
         Level.EnableLevelMark( 'LEAV', true );

         Level.AddMissionTask( MissionText.Task_4, 'LEAV', "levels\\rasplata\\leave_task.txt" );

        end;

        if ( markId != nil ) then
           Level.EnableLevelMark( markId, false );
        end

        Level.CompleteMissionTask( actorId , 15.0 ); 

        if ( Level.NumKilled == 3 ) then

         Level.AddLargeMessage( MissionText.Message_1 , 15.0 , 255, 255, 255 );

        end;

     end

  end;

  function Level.OnStopMove( actorId )

     if (actorId == 'G130') then
         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         return;
     end

     if (actorId == 'A4S1' or
         actorId == 'A4S2') then
         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         return;
     end

     if (actorId == 'GS73' or actorId == 'GS38' ) then
         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         return;
     end

     if (actorId == 'GS39') then
         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         return;
     end
  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end
     local form = Actor.GetActorType(player);
     
     if (actorId == 'GS73' or
         actorId == 'A4S1' or
         actorId == 'A4S2' or 
         actorId == 'GS38' ) then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;       
        else
           return true;
        end
     end

     if (actorId == 'G130' or
         actorId == 'GS39') then
        return true;
     end

     return true;
  end;


  function Level.OnKilledLIQ1()

     Level.EnableLevelMark( 'MAK6', false );
     Level.OnKilledActor( 'LIQ1', 'MAK3' );

  end;

  function Level.OnKilledLIQ2()

     Level.EnableLevelMark( 'MAK7', false );
     Level.OnKilledActor( 'LIQ2', 'MAK2' );

  end;

  function Level.OnKilledLIQ3()

     Level.OnKilledActor( 'LIQ3', 'MAK1' );

  end;
 
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
       return;
     end;

    if ( trgname == 'MarkTrigger' ) then

      Level.EnableLevelMark( 'MAK4', false );
     
    elseif ( trgname == 'LeaveTrigger' ) then

      if ( Level.NumKilled == 3 ) then

        Level.CompleteMissionTask( 'LEAV' , 15.0 );          

      end;

    end;    

  end;

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

  end;



  function Level.OnFinishAlert( alertGroupId )

     AI.Debug(nil, "Level::OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     if (AI.IsLocalAlert(1) == false and
         AI.IsLocalAlert(2) == false and
         AI.IsLocalAlert(3) == false and
         AI.IsLocalAlert(4) == false and
         AI.IsLocalAlert(5) == false and
         AI.IsLocalAlert(6) == false and
         AI.IsLocalAlert(8) == false) then

            Level.AddSmallMessage( MissionText.Message_4, 10.0, 255, 255, 0);
     end

  end


  function Level.OnAlert( alertGroupId )

     if (alertGroupId == 1) then
       AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

       AI.SetLocalAlert(1, true, AI.TransformAlertTime(300.0));
       AI.SetLocalAlert(2, true, AI.TransformAlertTime(400.0));
                     
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);

       if (Level.AlertBlock[1] == false) then

         AI.Patrol(AI.FindNPC('A1P1'), 'Path_A1_01', nil);
         AI.Patrol(AI.FindNPC('A1P2'), 'Path_A1_02', nil);
         AI.Patrol(AI.FindNPC('A1P3'), 'Path_A1_03', nil);
         AI.Patrol(AI.FindNPC('A1P4'), 'Path_A1_04', nil);

         Level.AlertBlock[1] = true;
       end

       Level.AddSmallMessage( MissionText.Message_2, 10.0, 255, 0, 0);
       AI.AddAlertValue(1);

     elseif ( (alertGroupId == 3) or 
              (alertGroupId == 4) or 
              (alertGroupId == 5) )  then
       AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

       AI.SetLocalAlert(3, true, AI.TransformAlertTime(300.0));
       AI.SetLocalAlert(4, true, AI.TransformAlertTime(300.0));
       AI.SetLocalAlert(5, true, AI.TransformAlertTime(300.0));

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "5", AI.ATTENTION_ALARM, true);

       if (Level.AlertBlock[3] == false) then
         AI.Patrol(AI.FindNPC('A5P1'), 'Path_A5_01', nil);
         AI.PatrolFollow(AI.FindNPC('A5P2'), 'Path_A5_01', AI.FindNPC('A5P1'), -5.0, -10.0, nil);

         Level.AlertBlock[3] = true;
       end

       Level.AddSmallMessage( MissionText.Message_3, 10.0, 255, 0, 0);
       AI.AddAlertValue(1);

     elseif (alertGroupId == 6) then
       AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

       AI.SetLocalAlert(6, true, AI.TransformAlertTime(250.0));
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "6", AI.ATTENTION_ALARM, true);

       Level.AddSmallMessage( MissionText.Message_3, 10.0, 255, 0, 0);
       AI.AddAlertValue(1);

     elseif (alertGroupId == 8) then
       AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

       AI.SetLocalAlert(8, true, AI.TransformAlertTime(250.0));
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);

       Level.AddSmallMessage( MissionText.Message_3, 10.0, 255, 0, 0);
       AI.AddAlertValue(1);
     end;

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

--  function Level.Test()
--
--     local n = Entity.GetNode( Level.FindActor('LIQ1') );
--     local pos = {};
--     pos.x, pos.y, pos.z = node.GetPosition( n );
--     
--     node.SetPosition(n, pos.x, -50000.0, pos.y);
--     node.InvalidateTransforms( n );
--
--  end