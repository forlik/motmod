
  MissionText =
  {
       Task_1                 = " Проникнуть в школу",
       Task_2                 = " Добыть картотеку";
       Task_3                 = " Уничтожить Г. Химелля";
       Task_4                 = " Уничтожить А. Шт-ца";
       Task_5                 = " Покинуть местность";
       Task_6                 = " Выманить А. Шт-ца";

       Message_2              = "Задания обновлены";
       Message_Docs           = "ВЗЯТЬ ДОКУМЕНТЫ";
       Message_3              = "Задания изменены";

       Key_Name               = "Ключ от сейфа";
       Key_Door21             = "Ключ от кабинета начальника";
       Key_Door20             = "Ключ от кабинета";

       Docs_Student           = "Удостоверение";

       Message_FireAlarm      = "СООБЩ. О ПОЖ. ТРЕВОГЕ";
       Message_ReadInfo       = "ПРОЧИТАТЬ ЖУРНАЛ";
       Message_ReportVisit    = "СООБЩИТЬ О ПРИБЫТИИ";

       Message_Alarm_1        = "Поднята тревога..";
       Message_Alarm_2        = "Поднята тревога. Учащиеся эвакуируются..";
       Message_AlarmFinished  = "Охрана успокоилась..";

       Message_StopMove_1     = "Гражданские не могут пройти здесь..";
       Message_StopMove_2     = "Вы не можете пройти здесь..";
       Message_StopMove_3     = "Только офицеры могут пройти в это здание..";
       Message_StopMove_4     = "Только офицеры могут попасть в эту комнату..";
       Message_StopMove_5     = "Только офицеры имеют доступ в комнату с архивами..";
       Message_StopMove_6     = "Только офицеры или инструкторы могут пройти в библиотеку..";
       Message_StopMove_7     = "Только инструкторы могут пройти здесь..";
       Message_StopMove_8     = "Только офицеры могут пройти здесь..";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnFinishLoad()

     -- forlik System:SetVar('r_glow', true );
     -- forlik System:SetVar('r_glow_r' , 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); --forlik

     local player = Level.GetPlayer();
     if ( player != nil ) then 
       Level.CreateEffect( 'RAIN' , Actor.GetNode( player ) );
     end;


     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "#0.5#sounds\\music\\action_5.ogg" );

     Level.SeifDoor     = Level.FindDoor( 'SEIF' );
     Level.SeifTrigger  = nil;

     if ( Level.SeifDoor != nil ) then
       Level.SetDoorNotifyScript( Level.SeifDoor , true );
       Level.SetDoorUnlockKey( Level.SeifDoor, 'SFKY' );
     end;

     Level.SetDoorKey('DR21', 'KY21' );
     Level.SetDoorKey('DR20', 'KY20' );

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.OnSave()

     Stream.WriteBool( Level.Docs[1] );
     Stream.WriteBool( Level.Docs[2] );

     Stream.WriteInt(Level.InstructorNumber);
     for i = 1, Level.InstructorNumber do
        Stream.WriteInt(Level.InstructorFormId[i]) ;
     end

     Stream.WriteBool( Level.FireAlert );

     Stream.WriteInt ( Level.StudentNumber );
     for i = 1, Level.StudentNumber do
        Stream.WriteInt(Level.StudentFormId[i]) ;
     end

	     Stream.WriteBool  (Level.ReadInfo);
     Stream.WriteInt   (Level.ReshFormId);
     Stream.WriteBool  (Level.AlarmCalled);
     Stream.WriteString(Level.ReshTriggerName);
     Stream.WriteBool  (Level.KilledGuardian);
     Level.OnSave_Common(); -- forlik
  end;

  function Level.OnLoad()

    Level.Docs={};

    Level.Docs[1] = Stream.ReadBool();
    Level.Docs[2] = Stream.ReadBool();

    Level.InstructorNumber = Stream.ReadInt();
    Level.InstructorFormId = {};

    for i = 1, Level.InstructorNumber do
       Level.InstructorFormId[i] = Stream.ReadInt() ;
    end

    Level.FireAlert = Stream.ReadBool();

    Level.StudentNumber = Stream.ReadInt();
    Level.StudentFormId = {};

    for i = 1, Level.StudentNumber do
       Level.StudentFormId[i] = Stream.ReadInt() ;
    end

    Level.ReadInfo        = Stream.ReadBool();
    Level.ReshFormId      = Stream.ReadInt();
    Level.AlarmCalled     = Stream.ReadBool();
    Level.ReshTriggerName = Stream.ReadString();
    Level.KilledGuardian  = Stream.ReadBool();

    Level.OnLoad_Common(); -- forlik
    Level.OnFinishLoad();
  end;

  function Level.SetDoorKey(door, key)
     local d = Level.FindDoor(door);
     if (d != nil) then
        Level.SetDoorUnlockKey( d, key );
     end
  end

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
     Level.AddMissionTask( MissionText.Task_1, 'RAZV', "levels\\razvedshkola\\raz_task.txt" );
     Level.AddMissionTask( MissionText.Task_2, 'KART', "levels\\razvedshkola\\kar_task.txt", 2 );
     Level.AddMissionTask( MissionText.Task_3, 'KIL1', "levels\\razvedshkola\\k1_task.txt" , 3 );
     Level.AddMissionTask( MissionText.Task_4, 'KIL2', "levels\\razvedshkola\\k2_task.txt" , 4 );

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "SDAN" , "OnKilledShtandartenfurer");
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "SBAN" , "OnKilledShturmbanfurer" );
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GS99" , "OnKilledGuardian" );
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "GS99" , "OnKilledGuardian" );

     Level.AddActionHandler( Level.AH_CHANGE_CLOTH );
     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     Level.Docs={};

     Level.Docs[1] = false;
     Level.Docs[2] = false;

     Level.FireAlert = false;
     Level.ReadInfo = false;
     Level.AlarmCalled = false;

     Level.ReshTriggerName = "";
     Level.KilledGuardian = false;
     
     Actor.MarkAsTarget( Level.FindActor( 'SBAN' ) , true );
     Actor.MarkAsTarget( Level.FindActor( 'SDAN' ) , true );

     local of = Level.FindActor( 'ZO07' );
     if ( of != nil ) then

       local key = Level.CreateItem( "Custom" , "Equipment" );
       if ( key != nil ) then

         Entity.SetUniqueID( key, 'SFKY' );

         Level.SetCustomItemName( key, MissionText.Key_Name );
         Level.SetCustomItemIcon( key, "ammo_key" );
     
         Actor.PutPouch( of, Actor.GetEmptyPouch(of), key );

       end;
     end;

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then
 
       Actor.SetActorTypeId( player, Actor.ACTOR_TYPE_CIVILIAN, Actor.ACTOR_TYPE_GERMAN );
       Actor.ChangeActorSkin( player, "FrenchWorker" ); -- forlik

       if ( Level.HasPlayerEquipPack() == false ) then

        local pistol     = Level.CreateItem("NaganSilencer","Weapon");
        local knife      = Level.CreateItem("knife","Weapon");

        Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
        Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );
       
        Actor.PutWeaponAmmo( player, "nagan");
        Actor.PutWeaponAmmo( player, "nagan");
        Actor.PutWeaponAmmo( player, "nagan");

        Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
        Actor.PutEmptyPouch( player, "medikit", "Equipment" );

        Actor.PutEmptyPouch( player, "f1", "Weapon" );
        Actor.PutEmptyPouch( player, "f1", "Weapon" );

        Actor.PutEmptyPouch( player, "lockpick", "Equipment" );

       end;

       AI.RebuildPlayerForm();

     end;

     local InstructorUID = { 'GY01',
                             'GY02',
                             'GY03',
                             'GY04',
                             'GY05',
                             'GY06' };

     Level.InstructorNumber = table.getn(InstructorUID);
     Level.InstructorFormId = {}; 

     for i = 1, Level.InstructorNumber do
        local instructor = Level.FindActor( InstructorUID[i] );

        if (instructor != nil) then
           Level.InstructorFormId[i] = Actor.GetWearFormId( instructor );
        else
           Level.InstructorFormId[i] = 0;
        end
     end

     local resh = Level.FindActor( 'GO23' );
     Level.ReshFormId = Actor.GetWearFormId( resh );

     local studentUID = { 'GO17', 'GO18', 'GO19', 
                          'GO13', 'GO14', 'GO11', 'GO26',
                          'GO27', 'GO28', 'GO29',
                          'GO30', 'GO31', 'GO32' };

     Level.StudentFormId = {};
     Level.StudentNumber = table.getn(studentUID);

     for i = 1, Level.StudentNumber do
       local student = Level.FindActor( studentUID[i] );

       if (student != nil) then
          local docs = Level.CreateItem( "Custom" , "Equipment" );
          if ( docs != nil ) then

              Entity.SetUniqueID( docs, 'SDOC' );

              Level.SetCustomItemName( docs, MissionText.Docs_Student );
              Level.SetCustomItemIcon( docs, "ammo_doc" );
     
              Actor.PutPouch( student, Actor.GetEmptyPouch(student), docs );
          end

           Level.StudentFormId[i] = Actor.GetWearFormId( student );
   
           if (Level.StudentFormId[i] == nil) then
              print("Error. Student " .. studentUID[i] .. " can't get wear form id");
           end

       else
           print("Error. Student " .. studentUID[i] .. " is not founded");
           Level.StudentsFormId[i] = nil;
       end
     end

     AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "G100", Actor.ACTOR_TYPE_SOLDIER);
     AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "S110", Actor.ACTOR_TYPE_SOLDIER);

     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "DistanceRun", true);
     Level.SetValue(properties, "ParentPolicy", true);

     AI.FollowActor( AI.FindNPC('GS98'), Level.FindActor('SDAN'), 0.0, -15.0, properties);

     Level.AddKey('GS98', 'KY21', MissionText.Key_Door21 );
     Level.AddKey('GS99', 'KY21', MissionText.Key_Door21 );
     Level.AddKey('SDAN', 'KY21', MissionText.Key_Door21 );

     Level.AddKey('S103', 'KY20', MissionText.Key_Door20 );
     Level.AddKey('S104', 'KY20', MissionText.Key_Door20 );
     Level.AddKey('GO23', 'KY20', MissionText.Key_Door20 );

     AI.SetCustomGuarderBox( AI.FindNPC('GS76'), true, -507, -10.15, -699.88, -491.0, 5.0, -674.77 );

     local diff = Level.GetDifficulty();
     if (diff == 2 or
         diff == 3) then

        AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GO03", Actor.ACTOR_TYPE_OFFICER);

        local officer = AI.FindNPC('GO03');

        if (officer != nil) then

           local properties = Level.CreateCustomParams();
    
           Level.SetValue(properties, "Return spawn place", true);
           Level.SetValue(properties, "Animation name", "Act_Rasplata_Reading");
           Level.SetValue(properties, "Can Patrol Point", false);
           Level.SetValue(properties, "Can Smoke", false);
           Level.SetValue(properties, "Can Speak", false);
           Level.SetValue(properties, "Restore spawn direction", true);
           Level.SetValue(properties, "Return place noise", 0.0);
           Level.SetValue(properties, "Can use anchors", false);
           Level.SetValue(properties, "Dont leeve room", false);
           Level.SetValue(properties, "Position", -415.0, -8.49, -686.4);
           Level.SetValue(properties, "Direction", -1.0, 0.0, 0.0);
           Level.SetValue(properties, "Return place waypoint", '5871');

           AI.Idle( officer, properties );
        end
     end

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();
  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.CheckLeaveTask(task)

        if ((Level.IsMissionTaskCompleted('KART') or task == 'KART') and 
            (Level.IsMissionTaskCompleted('KIL1') or task == 'KIL1') and
            (Level.IsMissionTaskCompleted('KIL2') or task == 'KIL2')) then

            Level.EnableLevelMark( 'LEVV' , true );
            Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );
            Level.AddMissionTask( MissionText.Task_5, 'LEAV', "levels\\razvedshkola\\leav_task.txt" );

        end
  end

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

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
       return;
    end;

    if ( trgname == 'RazvTrigger_1' or trgname == 'RazvTrigger_2' or
         trgname == 'RazvTrigger_3' ) then

       if ( Level.IsMissionTaskCompleted('RAZV') == false ) then

           Level.CompleteMissionTask('RAZV' , 15.0 );

           Level.EnableLevelMark( 'RAZ1', false );
           Level.EnableLevelMark( 'RAZ2', false );
           Level.EnableLevelMark( 'RAZ3', false );

       end;

       Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

    elseif ( trgname == 'LeaveTrigger' ) then

       if ( Level.IsMissionTaskCompleted('KART') and 
            Level.IsMissionTaskCompleted('KIL1') and
            Level.IsMissionTaskCompleted('KIL2') ) then

          Level.CompleteMissionTask( 'LEAV' , 15.0 );

       end;

    end;

  end;


  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

  end;

  function Level.OnKilledShtandartenfurer()
     if ( Level.IsMissionFailed() != false ) then
       return;
     end;

     Level.CheckLeaveTask('KIL1');
     Level.CompleteMissionTask( 'KIL1' , 15.0 );
     Level.EnableLevelMark( 'KIL1' , false );
  end;

  function Level.OnKilledShturmbanfurer()

     if ( Level.IsMissionFailed() != false ) then
        return;
     end;
     
     Level.UninstallReshTask();

     Level.CheckLeaveTask('KIL2');
     Level.CompleteMissionTask( 'KIL2' , 15.0 );
     Level.EnableLevelMark( 'KIL2' , false );
     Level.EnableLevelMark( 'INS1', false );
  end;

  function Level.IsPlayerStudent()
      local player = Level.GetPlayer();
      if ( player == nil ) then
         return false;
      end;

      local playerFormId = Actor.GetWearFormId( player );

      if (Level.StudentNumber == nil) then
         return false;
      end

      for i = 1, Level.StudentNumber do
          if (playerFormId == Level.StudentFormId[i]) then
             return true;
          end
      end

      local form = Actor.GetActorType(player);
      if (form != Actor.ACTOR_TYPE_OFFICER) then 
         return false;
      end;

      return Actor.HasCustomEquipment( player, 'SDOC' );
  end;

  function Level.IsPlayerInstructor()
      local player = Level.GetPlayer();
      if ( player == nil ) then
         return false;
      end;

      if (Level.InstructorNumber == nil) then
          return false; 
      end

      local playerFormId = Actor.GetWearFormId( player );

      for i = 1, Level.InstructorNumber do
        if ( playerFormId == Level.InstructorFormId[i] ) then
           return true;
        end;
      end

      return false;
  end;


  function Level.OnStopMove( actorId )

     if (actorId == 'GS33') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );
         return;

     elseif (actorId == 'GS52') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );
         return;
                                 
     elseif (actorId == 'GS23' or
             actorId == 'GS25') then
                         
         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );
         return;

     elseif (actorId == 'GS76') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_4, 15.0 , 255, 255, 255 );
         return;

     elseif (actorId == 'GS75' or
             actorId == 'GS96') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_5, 15.0 , 255, 255, 255 );
         return;

     elseif (actorId == 'GS95') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_6, 15.0 , 255, 255, 255 );
         return;

     elseif (actorId == 'S108' or
             actorId == 'GS99' or
             actorId == 'S111') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_7, 15.0 , 255, 255, 255 );
         return;         
                                           
     elseif (actorId == 'S103' or
             actorId == 'S104') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_8, 15.0 , 255, 255, 255 );
         return;         

     end

  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end

     local form = Actor.GetActorType(player);
     
     if (actorId == 'GS33') then

        if (form == Actor.ACTOR_TYPE_CIVILIAN) then
           return true;       
        else
           return false;
        end

     elseif (actorId == 'GS52') then

        return true;
                                 
     elseif (actorId == 'GS23' or
             actorId == 'GS25') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;
        else
           return true;
        end

     elseif (actorId == 'GS76') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;
        else
           return true;
        end

     elseif (actorId == 'GS75' or
             actorId == 'GS96') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;
        else
           return true;
        end

     elseif (actorId == 'GS95') then

        if (form == Actor.ACTOR_TYPE_OFFICER or
            Level.IsPlayerInstructor() or 
            Level.IsPlayerStudent()) then
           return false;
        else
           return true;
        end

     elseif (actorId == 'S108' or
             actorId == 'S111') then

        if (Level.IsPlayerInstructor()) then
           return false;
        else
           return true;
        end

     elseif (actorId == 'GS99') then

        return (Level.IsPlayerInstructor() == false) and 
               (Level.IsPlayerResh() == false);

     elseif (actorId == 'S103' or
             actorId == 'S104') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;
        else
           return true;
        end

     end

     AI.Debug( nil, "WARNING: Incorrent stop actor", actorId );

     return true;
  end;

  function Level.FinishStudentsPanic()
     local students = {'GO27', 'GO28', 'GO29',
                       'GO30', 'GO31', 'GO32', 'GO33', 'GO35' };

     local stud = table.getn(students);

     for i = 1, stud do
       local npc = AI.FindNPC( students[i] );
       if (npc != nil) then
          AI.FailTask( npc, AI.TASK_SCRIPT_DEFAULT ); 
       end
     end

     AI.FailTask( AI.FindNPC( 'GY02' ), AI.TASK_SCRIPT_DEFAULT ); 
     AI.FailTask( AI.FindNPC( 'GY03' ), AI.TASK_SCRIPT_DEFAULT ); 

  end

  function Level.DoSudentsPanicImpl(anchors, students, instr, ia)
     local stud = table.getn(students);

     for i = 1, stud do
       local properties = Level.CreateCustomParams();
       Level.SetValue(properties, "CustomString_1", anchors[i]);

       local npc = AI.FindNPC( students[i] );
       if (npc != nil) then
         AI.RunScriptTask(npc, "scripts:job\\AnchorJob_safe_run.lua", AI.LOGIC_DEFAULT, properties);
       end
     end

     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "CustomString_1", ia);

     local npc = AI.FindNPC( instr );
     if (npc != nil) then
       AI.RunScriptTask(npc, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_DEFAULT, properties);
     end
  end

  function Level.DoStudentsPanic(klass)

     if (klass == 1) then

       local anchors  = {'A129', 'A130', 'A131' };
       local students = {'GO27', 'GO28', 'GO29' };

       Level.DoSudentsPanicImpl(anchors, students, 'GY02', 'A147');

     elseif (klass == 2) then

       local anchors  = { 'A132', 'A133', 'A134', 'A135', 'A136' };
       local students = { 'GO30', 'GO31', 'GO32', 'GO33', 'GO35' };

       Level.DoSudentsPanicImpl(anchors, students, 'GY03', 'A148');

     end

  end


  function Level.OnFinishAlert( alertGroupId )
     
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     local alertLast = true;
     for i = 1, 8 do
        if (AI.IsLocalAlert( i ) != false) then
           alertLast = false;
        end
     end

     if (alertLast != false) then
        AI.Debug(nil, "Level.OnFinishAlert", "EnableAlarmSound:false");

        Level.FinishStudentsPanic();
        Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
     end 
  end

  function Level.OnAlert( alertGroupId )
    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    Level.AlarmCalled = true;
    Level.UninstallReshTask();

    AI.SetLocalAlert(1, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(2, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(3, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(4, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(5, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(6, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(7, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(8, true, AI.TransformAlertTime(300));

    if (alertGroupId == 2 or
        alertGroupId == 3 or
        alertGroupId == 4) then

       local squad = {'GO01', 'GS06', 'GS05'};

       local n = table.getn( squad );
       for i = 1, n do
          AI.SafeFind(AI.FindNPC(squad[i]), true);
       end

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);

       AI.AddAlertValue(1);
       Level.AddSmallMessage( MissionText.Message_Alarm_1, 10.0, 255, 0, 0);

    elseif (alertGroupId == 5 or
            alertGroupId == 6 or
            alertGroupId == 7 or 
            alertGroupId == 8) then

       Level.AddSmallMessage( MissionText.Message_Alarm_2, 10.0, 255, 0, 0);

       AI.AddAlertValue(2);
       Level.DoStudentsPanic(1);
       Level.DoStudentsPanic(2);
    end
  end

  function Level.CheckPlayerIsReshTask()
     if (Level.IsPlayerResh() and
         Level.HasMissionTask('RESH') != false and
         Level.IsMissionTaskCompleted('RESH') == false) then

         Level.EnableLevelMark('RSH1', false);
         Level.EnableLevelMark('RSH2', true);
         Level.SetMissionTaskFloor('RESH', 4);
     end
  end

  function Level.OnInventoryChanged()
     Level.CheckPlayerIsReshTask();
  end

  function Level.OnChangeCloth()
     AI.Debug(nil, "Level.OnChangeCloth", "form:", Actor.GetWearFormId(Level.GetPlayer()));

     Level.CheckPlayerIsReshTask();

     if (Level.IsPlayerInstructor() != false) then
        AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "S110", Actor.ACTOR_TYPE_SOLDIER);
        AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "G100", Actor.ACTOR_TYPE_SOLDIER);
        AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GY01", Actor.ACTOR_TYPE_SOLDIER);

        Level.EnableLevelMark( 'INS1', false );
     else
        AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "S110", Actor.ACTOR_TYPE_OFFICER);

        if (Level.IsPlayerStudent()) then
            AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "G100", Actor.ACTOR_TYPE_SOLDIER);
            AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GY01", Actor.ACTOR_TYPE_SOLDIER);
        else
            AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "G100", Actor.ACTOR_TYPE_OFFICER);
            AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "GY01", Actor.ACTOR_TYPE_OFFICER);
        end
     end

  end

  function Level.DoAnchor(actorId, anchorUID)
    local npc = AI.FindNPC( actorId );
    if (AI.IsDefault( npc ) ) then 
       local properties = Level.CreateCustomParams();
       Level.SetValue(properties, "CustomString_1", anchorUID);

       AI.RunScriptTask(npc, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
    end
  end

  function Level.DoAnchor2(actorId, anchorUID_1, anchorUID_2)
    local npc = AI.FindNPC( actorId );
    if (AI.IsDefault( npc ) ) then 
       local properties = Level.CreateCustomParams();
       Level.SetValue(properties, "CustomString_1", anchorUID_1);
       Level.SetValue(properties, "CustomString_2", anchorUID_2);
                                                   
       AI.RunScriptTask(npc, "scripts:job\\AnchorJob2.lua", AI.LOGIC_DEFAULT, properties);
    end
  end

  function Level.AddReshTask()
    local resh = AI.FindNPC( 'GO23' );

    if ( Level.ReadInfo != false or
         Level.AlarmCalled != false or
         Level.KilledGuardian != false) then
         return false;
    end

    Level.EnableLevelMark('READ', false);

    if (resh != nil) then

       Level.PlayMenuSound("task_finish");
       Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );
       Level.AddMissionTask( MissionText.Task_6, 'RESH', "levels\\razvedshkola\\resh_task.txt", 3);

       Level.EnableLevelMark('RSH1', true);
       Actor.MarkAsTarget( Level.FindActor( 'GO23' ) , true );
    else
       if (Level.IsPlayerResh() != false) then
          Level.PlayMenuSound("task_finish");
          Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );
          Level.AddMissionTask( MissionText.Task_6, 'RESH', "levels\\razvedshkola\\resh_task.txt", 3);
          Level.EnableLevelMark('RSH1', true);
          Level.CheckPlayerIsReshTask();
       end
    end
  end

  function Level.IsPlayerResh()
    local player = Level.GetPlayer();
    local playerFormId = Actor.GetWearFormId( player );
    return playerFormId == Level.ReshFormId;
  end

  function Level.TestReshTask()
     return Level.HasMissionTask('RESH') and
            Level.IsMissionTaskCompleted('RESH') == false and
            Level.IsPlayerResh() != false;
  end

  function Level.UninstallReshTask()
     if (Level.HasPlayerAction('RESH') != false) then
         Level.RemovePlayerAction('RESH');
     end

     Level.EnableLevelMark('READ', false);
     Level.EnableLevelMark('RSH1', false);
     Level.EnableLevelMark('RSH2', false);

     local actor = Level.FindActor( 'GO23' );
     if (actor != nil) then
        Actor.MarkAsTarget( actor , false );
     end

     if (Level.HasMissionTask('RESH') != false) then
         if (Level.IsMissionTaskCompleted('RESH') == false) then

            Level.PlayMenuSound("task_finish"); -- strange?!
            Level.RemoveMissionTask('RESH');
            Level.AddLargeMessage( MissionText.Message_3 , 15.0 , 255, 255, 255 );
         end
     end
  end

  function Level.OnKilledGuardian()
     Level.KilledGuardian = true;
     Level.UninstallReshTask();
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
