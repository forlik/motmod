
  MissionText =
  {
       Message_Move              = "ИДЕМ";
       Message_Stop              = "ЖДИ ЗДЕСЬ";
       Message_Read              = "ПОСМОТРЕТЬ ЗАПИСИ";

       Task_Find                 = " Найти осведомителя";
       Task_GetOut               = " Освободить агента"; 
       Fail_Killed               = "Осведомитель убит",

       Message_StopMove1         = "Вы не можете пройти на территорию склада..";
       Message_StopMove2         = "Только для офицеров..";
       Message_StopMove3         = "Необходим пропуск чтобы попасть на территорию лагеря..";
       Message_StopMove4         = "У вас нету доступа на территорию лагеря..";
       Message_StopMove5         = "Вы не можете покинуть территорию с заключенным..";

       Message_EnterAlarm        = "Поднята тревога.";
       Message_BaseAlarm         = "Поднята тревога. Охрана стала более подозрительна";
       Message_CampAlarm         = "Поднята тревога. Некоторые заключенные приговоренны к смерти";

       Message_AlarmFinished     = "Охрана успокоилась..";
       
       Message_PrisonerAreaLeave = "Вы не можете покинуть эту территорию с заключенным. Смените форму";
       Message_PrisonerCampLeave = "Вы не можете покинуть территорию с заключенным";

       Message_PrisonerWaitThink = "Вернитесь за осведомителем";

       Message_3                 = "Задания изменены";

--     подсказки (тест)
       Message_TestHelp          = { "Паника заключенных не приведет к тревоге",
                                     "Врач может увести любого заключенного в медпункт на обследование",
                                     "Смерть заключенных не беспокоит охрану",
                                     "Все охранники на территории бараков с заключенными имеют пропуск",
                                     "Надзиратель может уводить заключеннго на работы на территории лагеря",
                                     "Тревога на территории лагеря может привести к казни заключенных",
                                     "Врач может передвигаться на территории лагеря",
                                     "Большая часть территории лагеря контролируется снайперами на вышках",
                                     "Сетка, окружающяя бараки находится под напряжением"
                                   };

       Docs_Pass                 = "ПРОПУСК";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnSave()

     Stream.WriteBool( Level.EnableEatScript );
     Stream.WriteBool( Level.RaulMoving );
     Stream.WriteBool( Level.TimerInstalled );

     Stream.WriteBool( Level.AlertCalled );

     local n = table.getn( Level.DoctorFormId );
     Stream.WriteInt( n );
     for i = 1, n do
        Stream.WriteInt( Level.DoctorFormId[i] );
     end

     n = table.getn( Level.GreyFormId );
     Stream.WriteInt( n );
     for i = 1, n do
        Stream.WriteInt( Level.GreyFormId[i] );
     end

     Stream.WriteBool( Level.PassMarksDisabled );

     for i = 1, 4 do
       if (Level.DecamouflageStatus[i] == nil) then
          Stream.WriteInt( -1 ); 
       else
          Stream.WriteInt( Level.DecamouflageStatus[i] );
       end
     end
     Level.OnSave_Common(); -- forlik
  end

  function Level.OnLoad()

     Level.EnableEatScript = Stream.ReadBool();
     Level.RaulMoving      = Stream.ReadBool();
     Level.TimerInstalled  = Stream.ReadBool();

     Level.AlertCalled     = Stream.ReadBool( );

     local n = Stream.ReadInt( );
     Level.DoctorFormId = { };
     for i = 1, n do
        Level.DoctorFormId[i] = Stream.ReadInt( );
     end

     n = Stream.ReadInt( );
     Level.GreyFormId = { };
     for i = 1, n do
        Level.GreyFormId[i] = Stream.ReadInt( );
     end

     Level.PassMarksDisabled = Stream.ReadBool();

     Level.DecamouflageStatus = {};
     for i = 1, 4 do
       local state = Stream.ReadInt();

       if (state == -1) then
          Level.DecamouflageStatus[i] = nil;
       else
          Level.DecamouflageStatus[i] = state;
       end
     end

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

  end

  function Level.OnFinishLoad()

     -- forlik System:SetVar( "r_farclip" , 4000.0 );
     -- forlik System:SetVar( "r_glow", true );
     -- forlik System:SetVar( "r_glow_r", 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); --forlik

     --- init music

--     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
--     Level.AddMusic( Level.MUSIC_MOOD_ACTION      , "sounds\\music\\action_1.ogg" );

     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_4.ogg" );


     Level.RaulActor     = Level.FindActor('RAUL');

     if ( Level.RaulActor != nil ) then
        Actor.EnableHitFace( Level.RaulActor, true );
     end;

     Level.GetoTrigger = Level.FindTrigger( 'GetoTrigger' );

     Level.DefaultDecamouflageTemplate = { 0, 1, 1, 0 };
     Level.DoctorDecamouflageTemplate  = { 0, 0, 1, 0 };
     Level.GreyDecamouflageTemplate    = { 0, 0, 0, 0 };

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end
  end

  function Level.OnLoaded()

     Level.OnLoaded_Common(); -- forlik
     Level.AddMissionTask( MissionText.Task_Find, 'FIND', "levels\\izyatie\\find_task.txt" );
     Level.AddMissionTask( MissionText.Task_GetOut, 'GETO', "levels\\izyatie\\out_task.txt" );

     Level.AddActionHandler( Level.AH_ACTOR_KILLED ,      "RAUL" , "OnKilledRaul");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED ,      "RAUL" , "OnHitedRaul");
     Level.AddActionHandler( Level.AH_FOLLOW_WAIT_THINK , "RAUL" , "OnFollowWaitThink");

     Level.AddActionHandler( Level.AH_CHANGE_CLOTH );
     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     Level.EnableEatScript   = false;
     Level.RaulMoving        = false;
     Level.TimerInstalled    = false;
     Level.AlertCalled       = false;
     Level.PassMarksDisabled = false;

     Level.DecamouflageStatus = {};

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Summer" ); -- forlik
       if ( Level.HasPlayerEquipPack() == false ) then

         local machineGun = Level.CreateItem("delisle","Weapon");
         local pistol     = Level.CreateItem("NaganSilencer","Weapon");
         local knife      = Level.CreateItem("knife","Weapon");

         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );
       
         Actor.PutWeaponAmmo( player, "delisle");
         Actor.PutWeaponAmmo( player, "delisle");
         Actor.PutWeaponAmmo( player, "delisle");
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
         ItemPack.AddItem( pack, Level.CreateItem( "pmk40", "Weapon" ) );
 
         ItemPack.AddItem( pack, Level.CreateItem( "wirecut", "Equipment" ) );
       end;

     end;

      Level.AddTimer( 'DRTR', "OnDinnerTimer", 400, true );

      -- Only for test...
      Level.AddTimer( 'STHL', "OnShowTestHelp", 200, true );

      -- Set guard state to officer
      local officer = AI.FindNPC( 'GO08' );
      if (officer != nil) then
         AI.SetGuardState( officer, true, 50.0, -1039.0, -100.0, -106, 'VA19', false );
      else
         print('Error: Cant find officer GO08');
      end

      Level.SetupPass();

      -- setup doctors
      local DoctorUID = { 'DCT1',
                          'DCT2' };

      Level.DoctorFormId = {}; 

      for i in DoctorUID do
         local doctor = Level.FindActor( DoctorUID[i] );

         if (doctor != nil) then
            Level.DoctorFormId[i] = Actor.GetWearFormId( doctor );
         else
            Level.DoctorFormId[i] = 0;
         end
      end

      -- setup grey
      local GreyUID = { 'GG01',
                        'GG02',
                        'GG03',
                        'GG04',
                        'GG05',
                        'GG06',
                        'GG07',
                        'GG08',
                        'GG09' };

      Level.GreyFormId = {}; 

      for i in GreyUID do
         local grey = Level.FindActor( GreyUID[i] );

         if (grey != nil) then
            Level.GreyFormId[i] = Actor.GetWearFormId( grey );
         else
            Level.GreyFormId[i] = 0;
         end
      end

      AI.SetTaskLimit( AI.TASK_FOLLOW_PLAYER, 20 );
      AI.SetTaskLimit( AI.TASK_INVESTIGATE_COMBAT, 20 );

      Level.ChangePlayerStand( 2 );

      Level.AddPlayerActorAction( 'MOVE', 'RAUL', MissionText.Message_Move, "OnActorPlayerAction" , false, true );

      local raul = Level.FindActor('RAUL');
      if raul != nil then
         Actor.SetMapHidden( raul, true );
      end

      -- setup easy
      if (Level.GetDifficulty() == 0) then
        local soldier = AI.FindNPC('GS68');

        if (soldier != nil) then
           local properties = Level.CreateCustomParams();
           Level.SetValue(properties, "Can use anchors", true);
           Level.SetValue(properties, "Use anchor interval", 0.0);
           Level.SetValue(properties, "Find anchor radius", 300.0);
           Level.SetValue(properties, "Don't repeat anchors", false);
           Level.SetValue(properties, "AnchorQueue0", 'A188');
           Level.SetValue(properties, "AnchorQueue1", 'A189');
           Level.SetValue(properties, "Can Patrol Point", false);
           Level.SetValue(properties, "Can Smoke", false);
           Level.SetValue(properties, "Can Speak", false);
           Level.SetValue(properties, "Return spawn place", false);
           Level.SetValue(properties, "Restore spawn direction", false);
           Level.SetValue(properties, "Can idle animation", false);

           AI.Idle( soldier, properties );
        end
      end

      AI.AddHideBodyBox(-558.6, -29.6, -315.1, -529.0, -15.5 + 10.0, -287.7);
      AI.AddHideBodyBox( 305.4, -30.1,   61.7,  335.8, -15.5 + 10.0,   83.9);

      AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
      Level.OnFinishLoad();
  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnDinnerTimer()

    if (Level.EnableEatScript != false) then
       Level.StartEatScript();
    end

  end

  function Level.OnKilledRaul()
    Level.FailedMission( MissionText.Fail_Killed );
  end;

  function Level.ChangeTask()
      if (Level.IsMissionFailed() == false and
          Level.IsMissionTaskCompleted('FIND') == false) then

--         Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );
--         Level.AddMissionTask( MissionText.Task_GetOut, 'GETO', "levels\\izyatie\\out_task.txt" );

         Level.CompleteMissionTask('FIND', 15.0 );
      end
  end

  function Level.OnHitedRaul()
    Level.EnableLevelMark( 'GETO', true );
    Level.ChangeTask();
  end;

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )
    if     ( trgname == 'BaseTrigger_01' ) then
        Level.EnableEatScript = true;
    elseif ( trgname == 'RaulTrigger_1' or trgname == 'RaulTrigger_2' ) then

        Level.ChangeTask();

        Actor.SetMapHidden( Level.FindActor('RAUL'), false );
        Level.EnableLevelMark( 'RAUL', false );
        Level.EnableLevelMark( 'GETO', true );

        Level.UnregisterTrigger( Level.FindTrigger('RaulTrigger_1') );
        Level.UnregisterTrigger( Level.FindTrigger('RaulTrigger_2') );

    elseif ( trgname == 'GetoTrigger') then

        if ( Level.IsMissionFailed() == true ) then
           return;
        end;

        local completed = false;

        local player = Level.GetPlayer();
        if ( player != nil ) then

          completed = Actor.HasPickupedActor( player, 'RAUL');

          if ( completed == false and Level.RaulActor != nil and Level.GetoTrigger != nil ) then

             completed = Trigger.IsIntersectNode( Level.GetoTrigger, Entity.GetNode( Level.RaulActor ) );

          end;

        end;

        if ( completed != false ) then
           if ( Level.IsMissionTaskCompleted('FIND') == false ) then
             Level.CompleteMissionTask('FIND', 15.0 );
             Level.EnableLevelMark( 'DOCS', false );
           end;

           Level.EnableLevelMark( 'RAUL', false );
           Level.CompleteMissionTask('GETO', 15.0 );
        else
          if ( Level.TimerInstalled == false ) then
             Level.AddTimer( 'CHEK', "OnCheckRaulArea", 0.25, true );
             Level.TimerInstalled = true;
          end;
        end;

    end;
  end

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )
    if     ( trgname == 'BaseTrigger_01' ) then
        Level.EnableEatScript = false;
    elseif ( trgname == 'GetoTrigger' ) then

        if ( Level.TimerInstalled == true ) then
             Level.RemoveTimer( 'CHEK' );
             Level.TimerInstalled = false;
        end;

    end;
  end

  function Level.OnCheckRaulArea()

    if ( Level.RaulActor != nil and Level.GetoTrigger != nil ) then

      if ( Trigger.IsIntersectNode( Level.GetoTrigger, Entity.GetNode( Level.RaulActor ) ) == true ) then

          if ( Level.IsMissionTaskCompleted('FIND') == false ) then
             Level.CompleteMissionTask('FIND', 15.0 );
             Level.EnableLevelMark( 'DOCS', false );
          end;

          Level.EnableLevelMark( 'RAUL', false );
          Level.CompleteMissionTask('GETO', 15.0 );
          Level.RemoveTimer( 'CHEK' );
          Level.TimerInstalled = false;
      end;

    end;

  end;


  function Level.StartEatScript()
     AI.Debug(nil, "Level::StartEatScript", "");

     local actors  = { 'GS55', 'GS56', 'GS54', 'GS53', 'GS36', 'GS37', 'GS38', 'GS39', 'GS88', 'GO06', 'GS57', 'GO08' };
     local anchors = { 'AN43', 'AN44', 'AN45', 'AN46', 'AN48', 'AN49', 'AN50', 'AN51', 'AN52', 'AN53', 'AN54', 'A187' };

     local n = table.getn( anchors );

     for i = 1, n do
        local actor = AI.FindNPC( actors[i] );

        if (actor != nil) then
           if (AI.GetAttention(actor) == AI.ATTENTION_RELAX) then
              local properties = Level.CreateCustomParams();

              Level.SetValue(properties, "CustomString_1", anchors[i] );

              AI.RunScriptTask(actor, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_DEFAULT, properties);
           end
        end
     end

  end

  function Level.Execution()
     AI.Debug(nil, "Level.Execution", "");

     local prisoners = {'PR53', 'RAUL', 'PR61', 'PR57', 'PR63', 'PR64'};
     local p_anchors = {'A135', 'A129', 'A140', 'A141', 'A143', 'A144'};
     local executors = {'LS89', 'LS87', 'LS88'};
     local e_anchors = {'A139', 'A142', 'A145'};

     local player = Level.GetPlayer();

     for i = 1, table.getn(prisoners) do
        local properties = Level.CreateCustomParams();
        local actor = AI.FindNPC( prisoners[i] );

        if (AI.IsFollowingActor(actor, player) == false) then

           Level.SetValue(properties, "CustomString_1", p_anchors[i] );

           AI.RunScriptTask(actor, "scripts:job\\AnchorJob_safe_run.lua", AI.LOGIC_NEUTRAL, properties);
        end
     end

     for i = 1, table.getn(executors) do
        local properties = Level.CreateCustomParams();
        local actor = AI.FindNPC( executors[i] );

        Level.SetValue(properties, "CustomString_1", e_anchors[i] );
                              
        AI.RunScriptTask(actor, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_NEUTRAL, properties);
     end

  end


  function Level.FollowPlayer( bWait ) 

    local raul = AI.FindNPC('RAUL');
    local player = Level.GetPlayer();

    if (raul != nil and player != nil) then
      if (AI.IsFollowingActor(raul, player) != false) then

         AI.EnableFollowActorPause(raul, bWait);
         AI.CheckNeedStop();

         local raul = Level.FindActor('RAUL');
         if (bWait != false) then
    
            if (Level.PlayerInCampArea() == false) then

               AI.SetWatchActor( raul );

            else

               if (Level.PlayerInDecamouflageZone()) then
                   AI.SetWatchActor( raul );
               else
                   AI.SetWatchActor( nil );
               end

            end

         else
            AI.SetWatchActor( raul ); 
         end

      else

        local properties = Level.CreateCustomParams();
        Level.SetValue(properties, "DistanceRun", true);
        Level.SetValue(properties, "ParentPolicy", true);
        Level.SetValue(properties, "IdlePolicy", true);
        Level.SetValue(properties, "FollowActorPause", bWait);
        Level.SetValue(properties, "CriticPathDistance", 350.0);

        AI.FollowActor( raul, player, 0.0, -20.0, properties);

        Actor.SetMapHidden( Level.FindActor('RAUL'), false );
                                                  	
        AI.SetWatchActor( Level.FindActor('RAUL') );
        AI.CheckNeedStop();

      end
    end

  end

  function Level.OnActorPlayerAction( actionId )

    if ( Level.IsMissionTaskCompleted('FIND') == false and Level.IsMissionFailed() == false ) then
          Level.CompleteMissionTask('FIND', 15.0 );
          Level.EnableLevelMark( 'DOCS', false );
          Level.EnableLevelMark( 'RAUL', false );
    end;

    if ( actionId == 'MOVE' ) then

      if ( Level.RaulMoving == false ) then
         Level.FollowPlayer( false );
         Level.RaulMoving = true;
         Level.SetPlayerActorActionDesc( 'MOVE', MissionText.Message_Stop ); 
      else
         Level.FollowPlayer( true );
         Level.RaulMoving = false;
         Level.SetPlayerActorActionDesc( 'MOVE', MissionText.Message_Move );
      end;

      Level.EnableLevelMark( 'GETO', true );
    end;

  end;

  function Level.HasPass()
     local player = Level.GetPlayer();
     if (player == nil) then
        return false;
     end

     return Actor.HasCustomEquipment( player, 'PASS' );
  end


  function Level.OnStopMove( actorId )

     if (actorId == 'GS33' or
         actorId == 'GS34') then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove1, 15.0, 255, 255, 255 );
        return;

     elseif (actorId == 'GS66' or 
             actorId == 'GS68') then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
        Level.AddSmallMessage( MissionText.Message_StopMove2, 15.0, 255, 255, 255 );
        return;

     elseif ( actorId == 'GS85') then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
        Level.AddSmallMessage( MissionText.Message_StopMove2, 15.0, 255, 255, 255 );
        return;

     elseif ( actorId == 'S117' or
              actorId == 'S116' ) then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove4, 15.0, 255, 255, 255 );
        return;
    
     elseif ( actorId == 'GS97' ) then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove3, 15.0, 255, 255, 255 );
        return;

     elseif (actorId == 'GS99' or
             actorId == 'GS98' ) then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove3, 15.0, 255, 255, 255 );
        return;

     elseif (actorId == 'GS84') then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove3, 15.0, 255, 255, 255 );
        return;

     elseif (actorId == 'GS93') then

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove1, 15.0, 255, 255, 255 );
        return;

     elseif (actorId == 'S133' or 
             actorId == 'S134') then 

        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
        Level.AddSmallMessage( MissionText.Message_StopMove5, 15.0, 255, 255, 255 );
        return;

     end

  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end

     local form = Actor.GetActorType(player);
     
     if (actorId == 'GS33' or
         actorId == 'GS34') then

        return (form != Actor.ACTOR_TYPE_OFFICER);

     elseif (actorId == 'GS66' or 
             actorId == 'GS68') then

        return (form != Actor.ACTOR_TYPE_OFFICER);

     elseif ( actorId == 'GS85') then

        return (form != Actor.ACTOR_TYPE_OFFICER);

     elseif ( actorId == 'S117' or
              actorId == 'S116' ) then

        return (Level.HasPass() == false) and
               (form != Actor.ACTOR_TYPE_OFFICER) and
               Level.IsDoctor() == false;
    
     elseif ( actorId == 'GS97' ) then

        return (Level.HasPass() == false) and
               (form != Actor.ACTOR_TYPE_OFFICER) and
               Level.IsDoctor() == false;

     elseif (actorId == 'GS99' or
             actorId == 'GS98' ) then

        return (Level.HasPass() == false) and
               (form != Actor.ACTOR_TYPE_OFFICER) and
               Level.IsDoctor() == false;

     elseif (actorId == 'GS84') then

        return (Level.HasPass() == false) and
               (form != Actor.ACTOR_TYPE_OFFICER) and
               Level.IsDoctor() == false;

     elseif (actorId == 'GS93') then

        return form != Actor.ACTOR_TYPE_OFFICER;

     elseif (actorId == 'S133' or 
             actorId == 'S134') then 

        local raul = AI.FindNPC('RAUL');
        if (AI.IsFollowingActor(raul, Level.GetPlayer()) != false) then
           if (AI.IsFollowActorPause(raul) == false ) then
              return true;
           end
        end

        return false;
     end

     return true;

  end;

  function Level.OnFinishAlert( alertGroupId )
     
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     local alertLast = true;
     for i = 1, 7 do
        if (AI.IsLocalAlert( i ) != false) then
           alertLast = false;
        end
     end

     if (alertLast != false) then
        AI.Debug(nil, "Level.OnFinishAlert", "EnableAlarmSound:false");

        Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
        Level.EnableAlarmSound( false );

        Level.AlertCalled = false;
     end 
  end

  function Level.OnAlert( alertGroupId )

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    if (alertGroupId == 0) then

       AI.SetLocalAlert(0, true, AI.TransformAlertTime(300));
       AI.SetLocalAlert(1, true, AI.TransformAlertTime(300));

       AI.AddAlertValue(1);
       Level.AddSmallMessage( MissionText.Message_EnterAlarm, 10.0, 255, 0, 0);
    elseif (alertGroupId == 1) then

       AI.SetLocalAlert(0, true, AI.TransformAlertTime(300));
       AI.SetLocalAlert(1, true, AI.TransformAlertTime(300));

       AI.AddAlertValue(1);
       Level.AddSmallMessage( MissionText.Message_EnterAlarm, 10.0, 255, 0, 0);

    elseif (alertGroupId == 2) then

       AI.SetLocalAlert(0, true, AI.TransformAlertTime(400));
       AI.SetLocalAlert(1, true, AI.TransformAlertTime(400));
       AI.SetLocalAlert(2, true, AI.TransformAlertTime(400));
 
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);

       Level.AddSmallMessage( MissionText.Message_BaseAlarm, 10.0, 255, 0, 0);

       Level.AlertCalled = true;
       Level.EnableAlarmSound( true );

       AI.AddAlertValue(2);

    elseif (alertGroupId == 4) then

       Level.AddSmallMessage( MissionText.Message_EnterAlarm, 10.0, 255, 0, 0);

       AI.AddAlertValue(1);
       AI.SetLocalAlert(4, true, AI.TransformAlertTime(300));

    elseif (alertGroupId == 3 or
            alertGroupId == 5 or 
            alertGroupId == 6 or
            alertGroupId == 7) then

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, tostring(alertGroupId), AI.ATTENTION_ALARM, true);

       AI.SetLocalAlert(3, true, AI.TransformAlertTime(500));
       AI.SetLocalAlert(4, true, AI.TransformAlertTime(500));
       AI.SetLocalAlert(5, true, AI.TransformAlertTime(500));
       AI.SetLocalAlert(6, true, AI.TransformAlertTime(500));
       AI.SetLocalAlert(7, true, AI.TransformAlertTime(500));

       Level.AddSmallMessage( MissionText.Message_CampAlarm, 10.0, 255, 0, 0);

       Level.EnableAlarmSound( true );
       Level.AlertCalled = true;
       AI.AddAlertValue(3);
       Level.Execution();       
    end

  end


  function Level.SetupPass()

     local passActors = { 'GS57', 'S127',
                          'GG01', 'GG02', 'GG03', 'GG04', 'GG05', 'GG06', 'GG07', 'GG08', 'GG09',
                          'GO01', 'GO02', 'GO04', 'GO06', 'GG08', 'GO09', 'GO11', 'GO12', 'GO13', 'GO14',
                          'S135', 'S132', 'S140', 'S141',
                          'S108', 'GS93', 'S152',

                          'GS51', 'GS58', 'GS60', 'GS73', 'GS83', 'GS95', 
                          'GS97', 'GS98', 'GS99', 'LS61', 'LS62', 'LS63', 'LS64', 
                          'LS65', 'LS66', 'LS67', 'LS68', 'LS69', 'LS70', 'LS71', 
                          'LS72', 'LS74', 'LS75', 'LS76', 'LS77', 'LS78', 'LS79', 
                          'LS80', 'LS81', 'LS82', 'LS83', 'LS84', 'LS85', 'LS86', 
                          'LS87', 'LS88', 'LS89', 'LS90', 'LS92', 'LS93', 'LS94', 
                          'LS97', 'LS98', 'LS99', 'S115', 'S123', 'S124', 'S133', 
                          'S134', 'S114', 'S142', 'S143', 'S144', 'S146', 'S147',
                          'S126', 
                          'DCT1', 'DCT2'
                        };

     local n = table.getn(passActors);

     for i = 1, n do

        local docs = Level.CreateItem( "Custom" , "Equipment" );

        if ( docs != nil ) then

            Entity.SetUniqueID( docs, 'PASS' );

            Level.SetCustomItemName( docs, MissionText.Docs_Pass );
            Level.SetCustomItemIcon( docs, "ammo_doc" );
     
            local soldier = Level.FindActor( passActors[i] );
            if ( soldier != nil ) then 
               Actor.PutPouch( soldier, Actor.GetEmptyPouch(soldier), docs );
            end
        end
     end
  end

  function Level.IsGreyOfficer()
     local player = Level.GetPlayer(); 
     if (player == nil) then
        return false;
     end

     local form = Actor.GetWearFormId( player );

     for i in Level.GreyFormId do
         if (Level.GreyFormId[i] == form) then
            return true;
         end
     end

     return false;
  end

  function Level.IsDoctor()
     local player = Level.GetPlayer(); 
     if (player == nil) then
        return false;
     end

     local form = Actor.GetWearFormId( player );

     for i in Level.DoctorFormId do
         if (Level.DoctorFormId[i] == form) then
            return true;
         end
     end

     return false;
  end

  function Level.UpdateFromDecamouflageStatus(rebuild)
     AI.Debug(nil, "Level.UpdateFromDecamouflageStatus", "rebuild", rebuild);

     if (rebuild != false) then
        local str = Level.GetDecamouflageTemplate();

        for w in Level.DecamouflageStatus do
          local c = Level.DecamouflageStatus[w];
          if (c != nil) then
             Level.DecamouflageStatus[w] = str[w];
          end
        end
     end

     local dc = false;

     for w in Level.DecamouflageStatus do

       local c = Level.DecamouflageStatus[w];

       if (c == 0) then
          AI.EnableDecamouflageWatchActor( false );
          return;
       elseif (c == 1) then
          dc = true;
       end

     end;

     if (dc != false) then
        AI.EnableDecamouflageWatchActor( true );
        return
     end;

     -- set default decamouflage state...
     AI.EnableDecamouflageWatchActor( true );
  end

  function Level.GetDecamouflageTemplate()
     if (Level.IsDoctor()) then
        return Level.DoctorDecamouflageTemplate;
     end

     if (Level.IsGreyOfficer()) then
        return Level.GreyDecamouflageTemplate;
     end

     return Level.DefaultDecamouflageTemplate;
  end

  function Level.HackCreatePlayerPass()
 
    local docs = Level.CreateItem( "Custom" , "Equipment" );
 
    if ( docs != nil ) then

        Entity.SetUniqueID( docs, 'PASS' );

        Level.SetCustomItemName( docs, MissionText.Docs_Pass );
        Level.SetCustomItemIcon( docs, "ammo_doc" );

        local player = Level.GetPlayer();
        Actor.PutPouch( player, Actor.GetEmptyPouch(player), docs );
     end
  end

  function Level.PlayerInDecamouflageZone()
     for i in Level.DecamouflageStatus do
        if (Level.DecamouflageStatus[i] == 1) then
           return true;
        end
     end

     return false;
  end

  function Level.PlayerInCampArea()
     for i in Level.DecamouflageStatus do
        if (Level.DecamouflageStatus[i] != nil) then
           return true;
        end
     end

     return false
  end

  function Level.OnShowTestHelp()

     if (Random() < 0.4) then

        local index = AI.RandomSample(table.getn(MissionText.Message_TestHelp), 1, false);

        if (index != nil) then
           local msg = MissionText.Message_TestHelp[ index ];
           Level.AddSmallMessage( msg, 10.0, 255, 255, 255 );
        end

     end
  end

  function Level.DisablePassMarks()
      if (Level.PassMarksDisabled == false) then
         Level.PassMarksDisabled = true;
         Level.EnableLevelMark('KAZA', false);
         Level.EnableLevelMark('BOTT', false);
         Level.EnableLevelMark('BARK', false);
      end
  end

  function Level.OnInventoryChanged()
      local player = Level.GetPlayer();

      if ( Actor.HasCustomEquipment( player, 'PASS' ) ) then
         Level.DisablePassMarks();
      end
  end

  function Level.OnChangeCloth()
     AI.Debug(nil, "Level.OnChangeCloth", "form:", Actor.GetWearFormId(Level.GetPlayer()));
     local player = Level.GetPlayer();
     local form = Actor.GetActorType(player);

     if (Level.IsDoctor()) then        
        AI.DecamouflageWeaponAlways( true );
     else
        AI.DecamouflageWeaponAlways( false );
     end

     Level.UpdateFromDecamouflageStatus( true );

     if (Level.IsGreyOfficer() != false) then
         Level.EnableLevelMark('WORK', false);
     end

     if (form == Actor.ACTOR_TYPE_OFFICER or
         Level.IsGreyOfficer() != false or
         Level.IsDoctor()) then
        Level.DisablePassMarks();
     end

     if (Level.IsGreyOfficer() != false or
         Level.IsDoctor() != false) then
        Level.EnableLevelMark('MEDK', false);
     end

     if (Level.IsGreyOfficer() != false) then
        Level.EnableLevelMark('WORK', false);
        Level.EnableLevelMark('INSP', false);
     end
 
     Level.EnableLevelMark('MOGL', false);
  end

  function Level.OnFollowWaitThink()
     Level.AddSmallMessage( MissionText.Message_PrisonerWaitThink, 10.0, 255, 255, 255 );
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
   return a, c, p, n;
end

--------------------------------------------------------
-- Name: Level.OnCalcScore()
-- Desc:
--------------------------------------------------------
function Level.OnCalcRateScore(rank, score, levelStats, aiStats, a, c, p, n, acc)
   return rank, score;
end
