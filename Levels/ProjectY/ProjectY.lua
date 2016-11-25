
  MissionText =
  {
       Task_1                = " Переснять чертежи";
       Task_2                = " Достать документы";
       Task_3                = " Покинуть здание";
    
       Fail_Cris             = "Полковник Скот Бэкер убит";
       Fail_Prof             = "Профессор Чарльз Браун убит";

       Message_Foto          = "СФОТОГРАФИРОВАТЬ";
       Foto_Made             = "Чертеж сфотографирован";
       Foto_Fail             = "Чертеж заснят не полностью";

       Message_2             = "Задания обновлены";
       Message_Docs          = "ВЗЯТЬ ДОКУМЕНТЫ";
       Message_DisableAlert  = "ОТКЛЮЧИТЬ ТРЕВОГУ";
       Message_3             = "Задания изменены";

       Key_Name_1            = "Ключ от сейфа в лаборатории";
       Key_Name_2            = "Ключ от сейфа в кабинете полковника";

       Alarm_Timer           = "Поднята тревога. У вас осталось %02d:%02d на выполнение задания до того как все выходы из здания будут заблокированы";
       Fail_Alarm            = "Все выходы из здания заблокированы";
       
       Kill_Msg_1            = "Еще ";
       Kill_Msg_3            = "Еще ";
       Kill_Msg_2            = " до того как охрана обнаружит неладное и поднимет тревогу.";

       Kill_Soldiers         = "Вы уничтожили слишком много солдат. ";
       Kill_Civilian         = "Вы уничтожили слишком много ученных. ";
       Kill_Officers         = "Вы унчитожили слишком много офицеров. ";

       Message_Alarm         = "Поднята тревога. Охрана стала более внимательна..";
       Message_AlarmFinished = "Охрана успокоилась..";

       Message_Key           = "У вас нету ключа, чтобы открыть сейф..";
       Message_NoFoto        = "У вас нету фотоаппарата..";

       Message_StopMove_1    = "Ученые не имеют доступа в эту часть здания..";
       Message_StopMove_2    = "Только офицеры могут проходить в эту часть здания..";
       Message_StopMove_3    = "Только ученые или офицеры имеют доступ в лабораторию..";
       Message_StopMove_4    = "Только офицеры могут инспектировать циклотрон..";
       Message_StopMove_5    = "Вы не можете пройти здесь..";

       Message_SmokeStation  = "СИМУЛИРОВАТЬ ПОЛОМКУ";
       Message_CrashAlert    = "АВАРИЙНЫЙ СИГНАЛ";
       Message_AlarmSignal   = "ВЫЗВАТЬ ДЕЖУРНОГО";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.PlayCrashAlertSound( onOff )

   local sound = Level.FindSound( 'broke01' );

   if ( sound == -1 ) then
      return;
   end;

   if ( onOff == true ) then

       Level.PlaySound( sound );
       Level.CrashSound = true;
 
   else

       Level.StopSound( sound );
       Level.CrashSound = false;

   end;


  end;

  function Level.PlayCrashAlertSound_2( onOff )

   local sound = Level.FindSound( 'broke02' );

   if ( sound == -1 ) then
      return;
   end;

   if ( onOff == true ) then

       Level.PlaySound( sound );
       Level.CrashSound2 = true;
 
   else

       Level.StopSound( sound );
       Level.CrashSound2 = false;

   end;


  end;

  function Level.OnFinishLoad()

     -- forlik System:SetVar( 'r_glow' , true );
     -- forlik System:SetVar( 'r_glow_r' , 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik

     --- init music

     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\danger.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_3.ogg" );

     Level.SeifLabDoor = Level.FindDoor( 'SEF1' );
     Level.SeifKabDoor = Level.FindDoor( 'SEF2' );
     Level.SeifTrigger = nil;
     Level.FotoTrigger = nil;

     if ( Level.SeifLabDoor != nil ) then
       Level.SetDoorNotifyScript( Level.SeifLabDoor , true );
       Level.SetDoorUnlockKey( Level.SeifLabDoor, 'KLAB' );
       Level.SetDoorLockPick( Level.SeifLabDoor, 0 );
     end;

     if ( Level.SeifKabDoor != nil ) then
       Level.SetDoorNotifyScript( Level.SeifKabDoor, true );
       Level.SetDoorUnlockKey( Level.SeifKabDoor, 'KKAB' );
       Level.SetDoorLockPick( Level.SeifKabDoor, 0 );
     end;

     if ( Level.CrashSound == true ) then

        Level.PlayCrashAlertSound(true);

     end;

     if ( Level.CrashSound2 == true ) then

        Level.PlayCrashAlertSound_2(true);

     end;

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.OnSave()

     Stream.WriteBool( Level.FotoMade[1] );
     Stream.WriteBool( Level.FotoMade[2] );
     Stream.WriteBool( Level.FotoMade[3] );
     Stream.WriteBool( Level.FotoMade[4] );

     Stream.WriteBool( Level.AlertCalled );

     Stream.WriteBool( Level.StationSmoke );
     Stream.WriteBool( Level.CrashAlert );
     Stream.WriteBool( Level.LocalAlarm );

     Stream.WriteBool( Level.CrashSound );
     Stream.WriteBool( Level.CrashSound2 );
                       
     Stream.WriteBool( Level.EnterRoom );
     Level.OnSave_Common(); -- forlik

  end;

  function Level.OnLoad()

     Level.FotoMade = {};

     Level.FotoMade[1] = Stream.ReadBool();
     Level.FotoMade[2] = Stream.ReadBool();
     Level.FotoMade[3] = Stream.ReadBool();
     Level.FotoMade[4] = Stream.ReadBool();

     Level.AlertCalled    = Stream.ReadBool();

     Level.StationSmoke   = Stream.ReadBool();
     Level.CrashAlert     = Stream.ReadBool();
     Level.LocalAlarm     = Stream.ReadBool();

     Level.CrashSound     = Stream.ReadBool();
     Level.CrashSound2    = Stream.ReadBool();
     
     Level.EnterRoom      = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

  end;

  function Level.EnableExitTask( task )

     if ( (Level.IsMissionTaskCompleted('FOTO') == true or task == 'FOTO') and
          (Level.IsMissionTaskCompleted('SEF1') == true or task == 'SEF1') and
          (Level.IsMissionTaskCompleted('SEF2') == true or task == 'SEF2') ) then

        Level.AddMissionTask( MissionText.Task_3, 'LEAV', "levels\\projecty\\leave_task.txt" );
        Level.EnableLevelMark( 'LEVV', true );

      end;

  end;

  function Level.RemoveTaskMarks()

    if ( Level.IsMissionTaskCompleted('SEF1') == true ) then
       Level.EnableLevelMark('MAK2', false );
    end;

    if ( Level.IsMissionTaskCompleted('SEF2') == true ) then
      Level.EnableLevelMark('MAK1', false );
    end;

  end;

  function Level.OnLoaded()

     Level.OnLoaded_Common(); -- forlik
     Level.AddMissionTask( MissionText.Task_1, 'FOTO', "levels\\projecty\\foto_task.txt" );
     Level.AddMissionTask( MissionText.Task_2, 'SEF1', "levels\\projecty\\docs1_task.txt" );
     Level.AddMissionTask( MissionText.Task_2, 'SEF2', "levels\\projecty\\docs2_task.txt" );

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "CRIS" , "OnKilledCris");
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "MGAS" , "OnKilledProfessor");

     Level.AddActionHandler( Level.AH_FOTO_CAMERA );

     Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Soldier', 5 );
     Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Civilian', 3 );
     Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Officer', 0 );

     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     -- patch
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "PS02" , "OnKilledMarkedBot");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "PS02" , "OnKilledMarkedBot");

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "PS04" , "OnKilledMarkedBot");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "PS04" , "OnKilledMarkedBot");


     Level.EnableLevelMark( 'LEVV', false );
     Actor.MarkAsTarget( Level.FindActor( 'CRIS' ) , true );
     Actor.MarkAsTarget( Level.FindActor( 'MGAS' ) , true );

     Level.FotoMade = {};

     Level.FotoMade[1] = false;
     Level.FotoMade[2] = false;
     Level.FotoMade[3] = false;
     Level.FotoMade[4] = false;

     Level.AlertCalled    = false;

     Level.CrashAlert     = false;
     Level.StationSmoke   = false;
     Level.LocalAlarm     = false;

     Level.CrashSound     = false;
     Level.CrashSound2    = false;

     Level.EnterRoom      = false;

     --- init player 

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       local pistol     = Level.CreateItem("NaganSilencer","Weapon");
       local knife      = Level.CreateItem("knife","Weapon");

       Actor.ChangeActorSkin( player, "FrenchWorker" );
       Actor.EnableMesh( player, "mesh_hat1" , false );

       Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
       Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );

       Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
       Actor.PutEmptyPouch( player, "medikit", "Equipment" );
       Actor.PutEmptyPouch( player, "foto", "Equipment" );
       Actor.PutEmptyPouch( player, "lockpick", "Equipment" );

       Actor.PutEmptyPouch( player, "chloroform", "Weapon" );
       Actor.PutEmptyPouch( player, "chloroform", "Weapon" );

       Actor.PutWeaponAmmo( player, "nagan");

     end;

     -- keys

     local key_1 = Level.CreateItem( "Custom" , "Equipment" );
     if ( key_1 != nil ) then

       Entity.SetUniqueID( key_1, 'KLAB' );

       Level.SetCustomItemName( key_1, MissionText.Key_Name_1 );
       Level.SetCustomItemIcon( key_1, "ammo_key" );
     
       local megaScientist = Level.FindActor('MGAS');
       if (megaScientist != nil) then 
          Actor.PutPouch( megaScientist, Actor.GetEmptyPouch(megaScientist), key_1 );          
       end
     end;

     local key_2 = Level.CreateItem( "Custom" , "Equipment" );
     if ( key_2 != nil ) then

       Entity.SetUniqueID( key_2, 'KKAB' );

       Level.SetCustomItemName( key_2, MissionText.Key_Name_2 );
       Level.SetCustomItemIcon( key_2, "ammo_key" );
     
       local officer = Level.FindActor('CRIS');
       if ( officer != nil ) then 
         Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), key_2 );         
       end;

     end;

     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "DistanceRun", true);
     Level.SetValue(properties, "ParentPolicy", true);

     AI.FollowActor( AI.FindNPC('MS03'), Level.FindActor('MO02'), 0.0, -15.0, properties);
     AI.FollowActor( AI.FindNPC('MS05'), Level.FindActor('MO03'), 0.0, -15.0, properties);

     AI.SetCustomGuarderBox( AI.FindNPC('AS02'), true, -63.0, 25.0, -479.0, -36.0, 40.0, -472.0 );

     AI.AddHideBodyBox(-301.7, -27.3, 62.2, -154.0, -0.1, 152.8);

     -- setup easy...
     if (Level.GetDifficulty() == 0) then
        Level.SetupEasy();
     end

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  -- patch
  function Level.OnKilledMarkedBot()

      if (AI.FindNPC('PS04') == nil) then 
         Level.EnableLevelMark( 'TUAL' , false );
      end

      if (AI.FindNPC('PS02') == nil) then 
         Level.EnableLevelMark( 'MAK3' , false );
      end

  end

  function Level.OnKilledCris()

     Level.FailedMission( MissionText.Fail_Cris );

  end;

  function Level.OnKilledProfessor()

     Level.FailedMission( MissionText.Fail_Prof );

  end;

  function Level.OnFotoCamera()

   if ( Level.FotoTrigger != nil ) then

     if ( Level.IsMissionFailed() != false or Level.IsMissionTaskCompleted('FOTO') != false ) then

       return;

     end;

     local fotoNumber = Trigger.GetUniqueIdAsNumber( Level.FotoTrigger );

     if ( fotoNumber == nil or Level.FotoMade[fotoNumber] != false ) then
        return;
     end;

     -- forlik
     Level.PlayMenuSound("foto");

     if ( Level.CheckFotoTrigger( Level.FotoTrigger ) != false ) then

        Level.AddLargeMessage( MissionText.Foto_Made, 5.0, 255, 255, 255 );

        Level.FotoMade[fotoNumber] = true;

        Level.UnregisterTrigger( Level.FotoTrigger );
        Level.RemovePlayerAction("FOTO");
        Level.EnableLevelMark( Trigger.GetScriptCmd( Level.FotoTrigger ), false );

        Level.FotoTrigger = nil;

        if ( Level.FotoMade[1] == true and Level.FotoMade[2] == true and
             Level.FotoMade[3] == true and Level.FotoMade[4] == true ) then

            Level.EnableExitTask('FOTO');

            Level.EnableLevelMark( 'MAK5', false );
            Level.CompleteMissionTask('FOTO', 15.0 );
        end;

     else

        Level.AddLargeMessage( MissionText.Foto_Fail, 5.0, 255, 255, 255 );

     end;

   end;

  end;

  function Level.OnOpenDoor( door )

   if ( Level.SeifTrigger != nil ) then

      AI.StartDecamouflage( 50.0, 70.0, 2.0 );
      Level.SeifTrigger:OnEnterArea();

   end;

  end;

  function Level.OnCloseDoor( door )

    if ( door == 'SEF1' or door == 'SEF2' ) then

       Level.RemovePlayerAction("DOCS");

    end;

  end;  

  function Level.OnFinishMessageTimer()

    Level.FailedMission( MissionText.Fail_Alarm );

  end;

  function Level.PersonKillHandler( maxKill, killedAlready, killMessage )

      local left = maxKill - killedAlready;

      if ( left <= 0 ) then

          AI.CallAlert( 20 );
          return;

      end;

      local messageFirst;

      if ( left == 1 ) then
         messageFirst = MissionText.Kill_Msg_3;
      else
         messageFirst = MissionText.Kill_Msg_1;
      end;
    
      local message = killMessage .. messageFirst .. tostring( left ) .. MissionText.Kill_Msg_2;
      Level.SetLargeMessage( message, 15.0, 255, 255, 255 );

  end;

  function Level.OnActorNumKilled( numCivilian, numSoldiers, numOfficers, numMajors, numOverall, actorTypeId )

    if ( Level.AlertCalled == true ) then 
        return;
    end;

    if ( actorTypeId == Actor.ACTOR_TYPE_SOLDIER ) then

       Level.PersonKillHandler( 8, numSoldiers, MissionText.Kill_Soldiers );
       return;

    elseif ( actorTypeId == Actor.ACTOR_TYPE_CIVILIAN ) then

       Level.PersonKillHandler( 6, numCivilian, MissionText.Kill_Civilian );
       return;     

    elseif ( actorTypeId == Actor.ACTOR_TYPE_OFFICER ) then

       Level.PersonKillHandler( 2, numOfficers, MissionText.Kill_Officers );
       return;

    end;

  end;

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( trgname == 'ExitTrigger' ) then

       if ( Level.IsMissionTaskCompleted('FOTO') == true and
            Level.IsMissionTaskCompleted('SEF1') == true and
            Level.IsMissionTaskCompleted('SEF2') == true ) then

         Level.CompleteMissionTask('LEAV', 15.0 );
        
       end;

   elseif ( trgname == 'MarkTualet' ) then

         Level.EnableLevelMark('TUAL', false );
         Level.UnregisterTrigger( Level.FindTrigger( 'MarkTualet' ) );

   --elseif ( trgname == 'MarkTrigger_2' ) then
 
         --Level.UnregisterTrigger( Level.FindTrigger( 'MarkTrigger_2' ) );

   elseif ( trgname == 'MarkTrigger_3' ) then

         Level.EnableLevelMark('MAK3', false );
         Level.UnregisterTrigger( Level.FindTrigger( 'MarkTrigger_3' ) );

   elseif ( trgname == 'CheckKey_1' ) then

         if ( Actor.HasCustomEquipment( Level.FindActor('PLYR'), 'KLAB' ) == false ) then

            Level.AddSmallMessage( MissionText.Message_Key, 10.0 , 255, 255, 255 );

         end;

   elseif ( trgname == 'CheckKey_2' ) then

         if ( Actor.HasCustomEquipment( Level.FindActor('PLYR'), 'KKAB' ) == false ) then

            Level.AddSmallMessage( MissionText.Message_Key, 10.0 , 255, 255, 255 );

         end;
  
   end;  

  end;

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

  end;

  function Level.OnStopMove( actorId )
     if (actorId == 'AS02' or actorId == 'AS08' or actorId == 'AS14' ) then

         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );

     elseif (actorId == 'AS06' or actorId == 'AS13' ) then

         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );

     elseif (actorId == 'MS18') then

         Level.AddSmallMessage( MissionText.Message_StopMove_5, 15.0 , 255, 255, 255 );

     elseif (actorId == 'MS09') then

         Level.AddSmallMessage( MissionText.Message_StopMove_4, 15.0 , 255, 255, 255 );

     elseif (actorId == 'MS08') then

         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );

     else
         
         print("Warning: Level.OnStopMove: Can't recognise actor " .. actorId);
         
     end
  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end

     local form = Actor.GetActorType(player);
     
     if (actorId == 'AS02' or 
         actorId == 'AS08' or 
         actorId == 'AS14' or 
         actorId == 'MS09') then

        -- Only officers can go
        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;       
        else
           return true;
        end
     elseif ( actorId == 'AS06' or actorId == 'AS13' ) then
        -- Civilian can't go

        if ( form == Actor.ACTOR_TYPE_CIVILIAN ) then
           return true;
        else
           return false;
        end          

     elseif (actorId == 'MS08') then

        -- Only civilian can go
        return form == Actor.ACTOR_TYPE_SOLDIER;
--        if (form == Actor.ACTOR_TYPE_CIVILIAN) then
--           return false;
--        else
--           return true;
--        end;

     elseif (actorId == 'MS18') then

        if (form == Actor.ACTOR_TYPE_SOLDIER) then
           return true;
        else
           return false;
        end

     else
        
        print("Warning: Level.CheckNeedStop: Can't recognise actor " .. actorId);

     end;
     

     return true;
  end;


  function Level.OnFinishAlert( alertGroupId )
     
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     local alertLast = true;
     for i = 1, 11, 1 do
        if (AI.IsLocalAlert( i ) != false) then
           alertLast = false;
        end
     end

     if (AI.IsLocalAlert( 20 ) != false ) then
        alertLast = false;
     end

     if (alertLast != false) then
        AI.Debug(nil, "Level.OnFinishAlert", "EnableAlarmSound:false");

        Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
        Level.EnableAlarmSound( false );

        Level.AlertCalled = true;
     end 
  end

  function Level.OnRoomTriggerTime()

    Level.EnterRoom = false;
    Level.RemoveTimer( 'TGTM' );

  end

  function Level.OnAlert( alertGroupId )

    local alertSoldierTime = 180;
    local alertScientistTime = 120;

    Level.AddSmallMessage( MissionText.Message_Alarm, 10.0, 255, 0, 0);
    Level.EnableAlarmSound( true );

    if ( Level.AlertCalled == false ) then
      Level.AlertCalled = true;

      AI.AddAlertValue(2); 
      Level.StartMessageTimer( MissionText.Alarm_Timer, 180.0, 255, 255, 255 );

    end;

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    if (alertGroupId == 1 or alertGroupId == 2) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "4");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "8");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "9");

       AI.SafeFind(AI.FindNPC('MS23'), true);
       AI.SafeFind(AI.FindNPC('MS24'), true);
       AI.SafeFind(AI.FindNPC('MS25'), true);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);

    elseif (alertGroupId == 3 or 
            alertGroupId == 4 or 
            alertGroupId == 5) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "8");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "9");

       AI.SafeFind(AI.FindNPC('MS23'), true);
       AI.SafeFind(AI.FindNPC('MS24'), true);
       AI.SafeFind(AI.FindNPC('MS25'), true);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "5", AI.ATTENTION_ALARM, true);

    elseif (alertGroupId == 6 or alertGroupId == 7) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "1");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "4");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "9");

       AI.SafeFind(AI.FindNPC('MS20'), true);
       AI.SafeFind(AI.FindNPC('MS21'), true);
       AI.SafeFind(AI.FindNPC('MS27'), true);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "5", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "6", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "7", AI.ATTENTION_ALARM, true);

    elseif (alertGroupId == 8) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "1");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "4");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "9");

    elseif (alertGroupId == 9 or
            alertGroupId == 10 or 
            alertGroupId == 11) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "1");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "4");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");

       AI.SafeFind(AI.FindNPC('MS20'), true);
       AI.SafeFind(AI.FindNPC('MS21'), true);
       AI.SafeFind(AI.FindNPC('MS27'), true);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "9", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "10", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "11", AI.ATTENTION_ALARM, true);

    elseif (alertGroupId == 20) then

       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "1");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "4");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "8");
       AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "9");

    end

    AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
    AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
    AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "6", AI.ATTENTION_ALARM, true);
    AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);
    AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "9", AI.ATTENTION_ALARM, true);

    -- Common things
    AI.SetLocalAlert(1, true, alertSoldierTime);
    AI.SetLocalAlert(4, true, alertSoldierTime);
    AI.SetLocalAlert(6, true, alertSoldierTime);
    AI.SetLocalAlert(8, true, alertSoldierTime);
    AI.SetLocalAlert(9, true, alertSoldierTime);

    AI.SetLocalAlert(2, true, alertScientistTime);
    AI.SetLocalAlert(3, true, alertScientistTime);
    AI.SetLocalAlert(5, true, alertScientistTime);
    AI.SetLocalAlert(7, true, alertScientistTime);
    AI.SetLocalAlert(10, true, alertScientistTime);
    AI.SetLocalAlert(11, true, alertScientistTime);

    AI.SetLocalAlert(20, true, alertSoldierTime);

  end

  function Level.OnInventoryChanged()
    local player = Level.GetPlayer();
    if (Actor.HasCustomEquipment(player, 'KLAB') != false) then
       Level.EnableLevelMark( 'MAK4', false );
       Level.EnableLevelMark( 'MAK6', false );
       Level.EnableLevelMark( 'MAK2', false );
    end

    if (Actor.HasCustomEquipment(player, 'KKAB') != false) then
       Level.EnableLevelMark( 'MAK1', false );
    end
  end


  function Level.StartCustomAnimationJob( botUID, anim, posX, posY, posZ, dirX, dirY, dirZ, wp )
    local bot = AI.FindNPC(botUID);
    if (bot != nil) then
     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "Return spawn place", true);
     Level.SetValue(properties, "Animation name", anim);
     Level.SetValue(properties, "Can Patrol Point", false);
     Level.SetValue(properties, "Can Smoke", false);
     Level.SetValue(properties, "Can Speak", false);
     Level.SetValue(properties, "Restore spawn direction", true);
     Level.SetValue(properties, "Return place noise", 0.0);
     Level.SetValue(properties, "Can use anchors", false);
     Level.SetValue(properties, "Spawn place return limit", 0.0);
     Level.SetValue(properties, "Ignore attention", false);

     Level.SetValue(properties, "Position", posX, posY, posZ);
     Level.SetValue(properties, "Direction", dirX, dirY, dirZ);
     Level.SetValue(properties, "Return place waypoint", wp );
	
     AI.Idle( bot, properties );
    else
     print("Warning. Can't find npc " .. botUID);
    end
  end

  function Level.SetupEasy()
    Level.StartCustomAnimationJob('AS15', "Act_Rasplata_Smoking", -107.0, -44.0, -862.0, 0.0, 0.0, -1.0, '2796');
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
