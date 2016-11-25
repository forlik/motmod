  MissionText = 
  {
     Task_1               = " Достать оружие";
     Task_2               = " Уничтожить Волкова";
     Task_3               = " Покинуть здание";

     Key_Name             = "Ключ от склада";
     Key3f_Name           = "Ключ от картотеки";

     Message_StopMove_1   = "Вы не можете пройти здесь..";
     Message_StopMove_2   = "Только для охраны..";
     Message_StopMove_3   = "Только для служащих посольства..";

     Message_HaveNoKey    = "Дверь заперта. Ключ находится у заведующего архивами..";
     Message_IsNotSilence = "В посольстве поднята тревога. Обнаружили тело или уровень настороженности охраны достаточно высок";

     Kill_Agents          = "Вы уничтожили слишком много агентов. ";
     Kill_Civilians       = "Вы уничтожили слишком много работников посольства. ";
     Kill_Diplomats       = "Вы уничтожили слишком много дипломатов. ";
     Kill_Guards          = "Вы уничтожили слишком много охранников. ";

     Fail_Alarm           = "ПОДНЯТА ТРЕВОГА";

     Message_Poison       = "ОТРАВИТЬ КОФЕ";
     Poison_Name          = "Яд";

     Kill_Msg_1           = "Осталось ";
     Kill_Msg_3           = "Остался ";
     Kill_Msg_2           = " до инициализации крупного дипломатического скандала.";

     Message_TestHelp   = { "Убийство большого количества человек может привести к дипломатическому скандалу",
                            "Убийство дипломатов может привести к дипломатическому скандалу",
                            "На третьем этаже расположена комната отдыха персонала",
                            "Первый этаж открыт для посетителей посольства",
                            "Волков охраняется специальными агентами посольства",
                            "Комнаты с архивами расположены в подвале посольства",
                            "Смерть в результате несчастного случая не является причиной тревоги"
                          };

     Message_CloseDoor    = "ПОВЕСИТЬ ТАБЛИЧКУ";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnSave()
      Stream.WriteInt   (Level.PlayerFormId );
      Stream.WriteString(Level.PoisonCup );
      Stream.WriteBool  (Level.CanPoison);
      Stream.WriteBool  (Level.VolkovPoissoned);
      Stream.WriteBool  (Level.PianoMusicPlaying);

      for i = 1, 6 do
        Stream.WriteBool(Level.ClosedDoor[i]);
      end
      Level.OnSave_Common(); -- forlik
  end

  function Level.OnLoad()
      Level.PlayerFormId      = Stream.ReadInt();
      Level.PoisonCup         = Stream.ReadString();
      Level.CanPoison         = Stream.ReadBool();
      Level.VolkovPoissoned   = Stream.ReadBool();
      Level.PianoMusicPlaying = Stream.ReadBool();

      Level.ClosedDoor = {};
      for i = 1, 6 do
        Level.ClosedDoor[i] = Stream.ReadBool();
      end

      Level.OnLoad_Common(); -- forlik
      Level.OnFinishLoad();
  end

  function Level.OnFinishLoad()

      -- forlik System:SetVar( "r_glow", true );
      -- forlik System:SetVar( "r_glow_r", 1.5 );
      Level.OnFinishLoad_Common(); -- forlik
      Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik

      local doors = { 'DR06', 'DR07', 'DR04' };

      for i = 1, 2 do
         local door = Level.FindDoor( doors[i] ); 

         if ( door != nil ) then
             Level.SetDoorUnlockKey( door, 'SKKY' );
         end
      end;

      local door3f = Level.FindDoor( 'DR24' ); 

      if ( door3f != nil ) then
          Level.SetDoorUnlockKey( door3f, '3FKY' );
      end

      if (Level.PianoMusicPlaying != false) then
         Level.PlayPianoSound( true );
      end

      Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\danger.ogg");
      Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_3.ogg" );
      Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.25#sounds\\music\\new_found_power.ogg" );
      Level.SetDefaultMusicPause( 250.0, 360.0, 20.0, 120.0 );

      local tualetDoorUid = { 'TLD1', 'TLD2', 'TLD3', 'TLD4', 'TLD5', 'TLD6' };
      for i = 1, 6 do
          Level.InstallDoorScript( tualetDoorUid[i] );

          if (Level.ClosedDoor[i] != false) then
             local door = Level.FindDoor( tualetDoorUid[i] );
             if (door != nil) then
                AI.RegisterClosedDoor(door, true);
             else 
                print("Cant find door " .. tualetDoorUid[i] );
             end
          end
      end

      Level.DoorTrigger = nil;

      -- patch
      local backpack = Level.FindContainer();
      if (backpack != nil) then
          Level.EnableItemPickup(backpack, true);
      end

  end

  function Level.InstallDoorScript(doorUID)
     local door = Level.FindDoor( doorUID );

     if ( door != nil ) then
       Level.SetDoorNotifyScript( door, true );
     end;
  end

  function Level.OnLoaded()

      Level.OnLoaded_Common(); -- forlik
      Level.AddMissionTask( MissionText.Task_1, 'WEPN', "levels\\posolstvo\\weapon_task.txt" , 1 );
      Level.AddMissionTask( MissionText.Task_2, 'KILL', "levels\\posolstvo\\kill_task.txt"   , 3 );
                                                              
      Level.EnableLevelMark( 'LEAV', false );
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , "VOLK" , "OnKilledVolkov");

      Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'E213' , "OnKilledTualetBot");
      Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'E213' , "OnKilledTualetBot");
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'E202' , "OnKilledTualetBot");
      Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'E202' , "OnKilledTualetBot");
      Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'E210' , "OnKilledTualetBot");
      Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'E210' , "OnKilledTualetBot");

      Level.AddActionHandler( Level.AH_CHANGE_CLOTH );

      Actor.MarkAsTarget( Level.FindActor( 'KEYM' ) , true );
      Actor.MarkAsTarget( Level.FindActor( 'VOLK' ) , true );

      Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Soldier',  1 );
      Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Civilian', 3 );
      Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Officer',  0 );
      Level.AddActionHandler( Level.AH_ACTOR_NUMKILLED, 'Majors',   0 );
      Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

      NPC.SetFlag( AI.FindNPC('M207'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
      NPC.SetFlag( AI.FindNPC('M209'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
      NPC.SetFlag( AI.FindNPC('M210'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
      NPC.SetFlag( AI.FindNPC('E206'), NPC.F_CANT_OPEN_LOCK_DOOR, true );

      AI.EnableGrenades( false );

      local player = Level.GetPlayer();

      Level.PianoMusicPlaying = false;

      if (player != nil) then
         Actor.SetActorTypeId(player, Actor.ACTOR_TYPE_CIVILIAN, Actor.ACTOR_NATION_BRITISH );

         Actor.ChangeActorSkin( player, "WhiteHands" );
         Actor.EnableMesh( player, "mesh_hat2" , false );

         Actor.PutEmptyPouch( player, "lockpick", "Equipment" );

         Actor.PutEmptyPouch( player, "chloroform", "Weapon" );

         Level.PlayerFormId = Actor.GetWearFormId( player );

         local poison = Level.CreateItem( "Custom" , "Equipment" );
         if ( poison != nil ) then

            Entity.SetUniqueID( poison, 'POIS' );

            Level.SetCustomItemName( poison, MissionText.Poison_Name );
            Level.SetCustomItemIcon( poison, "g_pois" );
            Actor.PutPouch( player, Actor.GetEmptyPouch( player ), poison );

         end;

         AI.RebuildPlayerForm();
         AI.AddFormChangedValue();
      end

      local keyMaster = Level.FindActor( 'KEYM' );
      if (keyMaster != nil) then

         local key = Level.CreateItem( "Custom" , "Equipment" );
         if ( key != nil ) then

             Entity.SetUniqueID( key, 'SKKY' );

             Level.SetCustomItemName( key, MissionText.Key_Name );
             Level.SetCustomItemIcon( key, "ammo_key" );
     
             Actor.PutPouch( keyMaster, Actor.GetEmptyPouch(keyMaster), key );
          end;
      end

      local keyFloor3 = { 'Z214', 'ZG16', 'ZG15' };

      for i = 1, table.getn(keyFloor3) do

        local keyMaster = Level.FindActor( keyFloor3[i] );
        if (keyMaster != nil) then

           local key = Level.CreateItem( "Custom" , "Equipment" );
           if ( key != nil ) then

               Entity.SetUniqueID( key, '3FKY' );

               Level.SetCustomItemName( key, MissionText.Key_Name );
               Level.SetCustomItemIcon( key, "ammo_key" );
     
               Actor.PutPouch( keyMaster, Actor.GetEmptyPouch(keyMaster), key );
            end;
        end
      end


      AI.EnableFloorRiskTest( true );

      -- Install timers...
      Level.AddTimer( 'DRTR', "OnDinnerTimer", 400, true );
      Level.AddTimer( 'PTTR', "OnPianistTimer", 250, true );

      Level.PoisonCup = "";
      Level.CanPoison = true;
      Level.VolkovPoissoned = false;
      Level.ClosedDoor = { false, false, false, 
                           false, false, false };
      Level.AddTimer( 'STHL', "OnShowTestHelp", 110, true );

      AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
      Level.OnFinishLoad();
  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnStopMove( actorId )

      if (actorId == 'HG06' or
          actorId == 'HG21') then

         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );

      elseif (actorId == 'HG09' or
              actorId == 'HG10' or
              actorId == 'HG16') then

         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );

      elseif (actorId == 'HG12' or
              actorId == 'HG13' or
              actorId == 'HG15') then

         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );

      elseif (actorId == 'E231' or
              actorId == 'HG14') then

         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );

      end

  end


  function Level.CheckNeedStop( actorId )

      local player = Level.GetPlayer();
      if (player == nil) then
         return false;
      end;

      local type = Actor.GetActorType( player );

      if (actorId == 'HG06' or
          actorId == 'HG21') then

          if (Actor.GetWearFormId( player ) == Level.PlayerFormId) then
             return true;
          else
             return false;
          end;

      elseif (actorId == 'HG09' or
              actorId == 'HG10' or
              actorId == 'HG16') then

          if (type == Actor.ACTOR_TYPE_CIVILIAN) then
             return true;
          else
             return false;
          end

      elseif (actorId == 'HG12' or
              actorId == 'HG13' or
              actorId == 'HG15') then

          if (type == Actor.ACTOR_TYPE_OFFICER) then
             return false;
          else
             return true;
          end

      elseif (actorId == 'E231' or
              actorId == 'HG14') then

          return true;

      end;

      return true;
  end

  function Level.OnDinnerTimer()

     AI.Debug(nil, "Level::OnDinnerTimer", "");

     local actors  = { 'HG08', 'HG04', 'HG05', 'M125', 'MC03', 'HG11' };
     local anchors = { 'A104', 'A105', 'A106', 'A107', 'A108', 'A143' };

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

  function Level.PlayPianoSound( bOnOff )

    local sound = Level.FindSound( 'piano01' );

    if ( sound != -1 ) then
   
      if (bOnOff != false) then

         Level.PianoMusicPlaying = true;

         Level.PlaySound( sound );

      else

         Level.PianoMusicPlaying = false;

         Level.StopSound( sound );

      end;

    end

  end 

  function Level.OnPianistTimer()

     AI.Debug(nil, "Level::OnPianistTimer", "");

     local pianist = AI.FindNPC( 'E222' );
     local madam = AI.FindNPC( 'M220' );

     if (AI.IsDefault(pianist) and
         AI.IsDefault(madam)) then

         AI.RunScriptTask( pianist, "game:Levels\\Posolstvo\\Jobs\\PianoJob.lua",  AI.LOGIC_DEFAULT, nil );

         local properties = Level.CreateCustomParams();

         Level.SetValue(properties, "CustomString_1", 'A112' );
                                                                                                 
         AI.RunScriptTask(madam, "game:Levels\\Posolstvo\\Jobs\\MadamJob.lua", AI.LOGIC_DEFAULT, properties);
     end

  end

  function Level.OnAlert( alertGroupId )

    AI.SetLocalAlert(1, true);
    AI.SetLocalAlert(2, true);
    AI.SetLocalAlert(3, true);
    AI.SetLocalAlert(4, true);

    Level.FailedMission( MissionText.Fail_Alarm );

  end

  function Level.OnKilledVolkov()

      Level.AddMissionTask( MissionText.Task_3, 'LEAV', "levels\\posolstvo\\leave_task.txt", 1 );

      if (Level.IsMissionTaskCompleted( 'WEPN' ) == false) then
         Level.RemoveMissionTask('WEPN');
      end

      Level.CompleteMissionTask('KILL', 15.0 );

      Level.EnableLevelMark( 'COFF', false );
      Level.EnableLevelMark( 'VOLK', false );

      Level.EnableLevelMark( 'LEAV', true );
  end

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if     ( trgname == 'SkladTrigger_01' ) then

         Level.EnableLevelMark('SKD1', false );
         Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

    --elseif ( trgname == 'SkladTrigger_02' ) then

    --     Level.EnableLevelMark('SKD2', false );
    --     Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

    elseif ( trgname == 'WeaponTrigger_01') then

         Level.CompleteMissionTask('WEPN', 15.0 );
         Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

         Level.EnableLevelMark('SKD1', false );
         Level.EnableLevelMark('SKD2', false );
         Level.EnableLevelMark('BOTP', false );

    elseif (trgname == 'PodvalTrigger_01') then

         Level.EnableLevelMark('BOTP', false );
         Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

    elseif (trgname == 'LeaveTrigger_01') then

         if ( Level.IsMissionTaskCompleted('KILL')) then

              if (AI.IsSilence() != false) then

                Level.CompleteMissionTask('LEAV', 15.0 );
                Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

              else

                Level.AddSmallMessage( MissionText.Message_IsNotSilence, 15.0 , 255, 50, 0 );
                
              end

              return;
         end


    elseif ( trgname == 'DoorTrigger_01' or
             trgname == 'DoorTrigger_02') then

         if ( Actor.HasCustomEquipment( Level.GetPlayer(), 'SKKY' ) == false ) then
           Level.AddSmallMessage( MissionText.Message_HaveNoKey, 15.0 , 255, 255, 255 );
         end;

         Level.UnregisterTrigger( Level.FindTrigger( 'DoorTrigger_01' ) );
         Level.UnregisterTrigger( Level.FindTrigger( 'DoorTrigger_02' ) );

    end;

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

   -- print("Level.OnActorNumKilled");
--    print("Level.OnActorNumKilled", numCivilian, numSoldiers, numOfficers, numMajors, numOverall, actorTypeId);

    if ( (AI.IsLocalAlert(1) != false) or
         (AI.IsLocalAlert(2) != false) or
         (AI.IsLocalAlert(3) != false) or
         (AI.IsLocalAlert(4) != false) ) then 
        return;
    end;

    if ( actorTypeId == Actor.ACTOR_TYPE_SOLDIER ) then

       Level.PersonKillHandler( 3, numSoldiers, MissionText.Kill_Guards );
       return;

    elseif ( actorTypeId == Actor.ACTOR_TYPE_CIVILIAN ) then

       Level.PersonKillHandler( 5, numCivilian, MissionText.Kill_Civilians );
       return;     

    elseif ( actorTypeId == Actor.ACTOR_TYPE_OFFICER ) then

       Level.PersonKillHandler( 2, numOfficers, MissionText.Kill_Agents );
       return;

    elseif ( actorTypeId == Actor.ACTOR_TYPE_MAJOR ) then

       Level.PersonKillHandler( 1, numMajors, MissionText.Kill_Diplomats );
       return;

    end;
  end;

  function Level.OnShowTestHelp()

     if (Random() < 0.4) then
        local index = AI.RandomSample(table.getn(MissionText.Message_TestHelp), 1, false);

        if (index != nil) then
           local msg = MissionText.Message_TestHelp[ index ];
           Level.AddSmallMessage( msg, 10.0, 255, 255, 255 );
        end
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

  function Level.SetDoorKey(door, key)
     local d = Level.FindDoor(door);
     if (d != nil) then
        Level.SetDoorUnlockKey( d, key );
     end
  end

  function Level.GetTualetDoorIndex( tualetUID )
    if     (tualetUID == 'TLD1') then
       return 1;
    elseif (tualetUID == 'TLD2') then
       return 2;
    elseif (tualetUID == 'TLD3') then   
       return 3;
    elseif (tualetUID == 'TLD4') then
       return 4;
    elseif (tualetUID == 'TLD5') then
       return 5;
    elseif (tualetUID == 'TLD6') then
       return 6;
    end

    print('Cant find door ' .. tualetUID);
    return nil;
  end

  function Level.IsTualetDoorClosed( tualetUID )
    local index = Level.GetTualetDoorIndex(tualetUID);
    return Level.ClosedDoor[index];
  end

  function Level.CanCloseTualetDoor( tualetUID )
    local index = Level.GetTualetDoorIndex(tualetUID);
    if (Level.ClosedDoor[index] != false) then 
       return false;
    end

    if (Actor.HasEquipment( Level.GetPlayer(), 'TOOO' ) == false) then 
       return false;
    end  

    local npc = Level.GetTualetNPC(index);
    if (npc == nil) then
       return true;
    end

    local anchor = Level.GetTualetNPC_Anchor(index);
    if (anchor == nil) then
       return true;
    end

    if (AI.IsDefault(npc) == false) then
       return true;
    end
 
    if (AI.IsUsingAnchor(npc, anchor) != false or
        AI.IsNearAnchor(npc, anchor, 15.0)) then
       return false;
    end

    return true;
  end

  function Level.CloseTualetDoor( tualetUID )
    if (Level.CanCloseTualetDoor(tualetUID) == false) then
       return false;
    end

    local door = Level.FindDoor( tualetUID );

    if (Level.IsDoorOpened(door) != false) then
        Level.CloseDoor( door, true, Level.GetPlayer() );
    end

    local index = Level.GetTualetDoorIndex(tualetUID);
    Level.ClosedDoor[index] = true;

    Level.InstallTualetJob( tualetUID, true );

    Level.RemovePlayerAction("CLDR");
    AI.RegisterClosedDoor(door, true);

    -- Update ooo table
    if (Actor.HasEquipment( Level.GetPlayer(), 'TOOO' )) then
       Actor.RemoveEquipment(Level.GetPlayer(), 'TOOO');
    end

    local n = Actor.GetNode( Level.GetPlayer() );
    local pos = {};
    pos.x, pos.y, pos.z = node.GetPosition( n );
    local tab = Level.CreateWorldItem("Throw:OutofOrder", "Equipment",
                                      pos.x, pos.y + 2.0, pos.z,
                                      0.0, 0.0, 0.0, 
                                      'TOOO');

    if (tab != nil) then
       Level.AttachItemWorldObject( tab, tualetUID, 0.0, 5.0, 0.3, 180.0 );
    else
       print("Warning! Can't create [Equipment.Throw:OutofOrder]");
    end
  end

  function Level.GetTualetNPC( tualetIndex )
    local actors = { 'E213', 'E202', 'E210' };
    if (actors[tualetIndex] == nil) then
       return nil;
    end

    return AI.FindNPC(actors[tualetIndex]);
  end

  function Level.GetTualetNPC_Anchor( tualetIndex, bNotClosed )
    local anchors_opened = { 'AN08', 'AN32', 'AN51' };
    local anchors_closed = { 'A155', 'A156', 'A157' };

    if (anchors_opened[tualetIndex] == nil and
        anchors_closed[tualetIndex] == nil) then
        return nil;
    end

    if (bNotClosed != false) then
       return AI.FindAnchor(anchors_opened[tualetIndex]);
    else
       return AI.FindAnchor(anchors_closed[tualetIndex]);
    end

    return nil;
  end

  function Level.StartAnchor3_Idle( npc, anchor1, anchor2, anchor3 )
    local properties = Level.CreateCustomParams();
    Level.SetValue(properties, "Can use anchors", true);
    Level.SetValue(properties, "Use anchor interval", 0.0);
    Level.SetValue(properties, "Find anchor radius", 300.0);
    Level.SetValue(properties, "Don't repeat anchors", false);
    Level.SetValue(properties, "AnchorQueue0", anchor1);
    Level.SetValue(properties, "AnchorQueue1", anchor2);
    Level.SetValue(properties, "AnchorQueue2", anchor3);
    Level.SetValue(properties, "Can Patrol Point", false);
    Level.SetValue(properties, "Can Smoke", false);
    Level.SetValue(properties, "Can Speak", false);
    Level.SetValue(properties, "Return spawn place", false);
    Level.SetValue(properties, "Restore spawn direction", false);
    Level.SetValue(properties, "Can idle animation", false);

    AI.Idle( npc, properties );
  end

  function Level.StartAnchor2_Idle( npc, anchor1, anchor2 )
    local properties = Level.CreateCustomParams();
    Level.SetValue(properties, "Can use anchors", true);
    Level.SetValue(properties, "Use anchor interval", 0.0);
    Level.SetValue(properties, "Find anchor radius", 300.0);
    Level.SetValue(properties, "Don't repeat anchors", false);
    Level.SetValue(properties, "AnchorQueue0", anchor1);
    Level.SetValue(properties, "AnchorQueue1", anchor2);
    Level.SetValue(properties, "Can Patrol Point", false);
    Level.SetValue(properties, "Can Smoke", false);
    Level.SetValue(properties, "Can Speak", false);
    Level.SetValue(properties, "Return spawn place", false);
    Level.SetValue(properties, "Restore spawn direction", false);
    Level.SetValue(properties, "Can idle animation", false);

    AI.Idle( npc, properties );
  end

  function Level.StartIdleEx( npc, anchor )
    local properties = Level.CreateCustomParams();
    Level.SetValue(properties, "Can Patrol Point", false);
    Level.SetValue(properties, "Can Smoke", false);
    Level.SetValue(properties, "Can Speak", true);
    Level.SetValue(properties, "Return spawn place", true);
    Level.SetValue(properties, "Restore spawn direction", true);
    Level.SetValue(properties, "Return place noise", 0.0);
    Level.SetValue(properties, "Spawn place return limit", 0.0);
    Level.SetValue(properties, "Spawn place return limit", 0.0);
    Level.SetValue(properties, "Smoke Interval", 60.0);
    Level.SetValue(properties, "Idle animation interval", 10.0);
    Level.SetValue(properties, "Conference interval", 30.0);
    Level.SetValue(properties, "Default point as speak point", true);
    Level.SetValue(properties, "Can use anchors", true);
    Level.SetValue(properties, "Use anchor interval", 10.0);
    Level.SetValue(properties, "Find anchor radius", 300.0);
    Level.SetValue(properties, "Position", 198.0, 1.45, -11.95);
    Level.SetValue(properties, "Direction", -1.0, 0.0, 0.0);
    Level.SetValue(properties, "Can idle animation", true);
    Level.SetValue(properties, "Don't repeat anchors", false);
    Level.SetValue(properties, "Use dynamic speak point", false);
    Level.SetValue(properties, "Don't change speak direction", true);
    Level.SetValue(properties, "Don't rotate speak head", true);
    Level.SetValue(properties, "Return place waypoint", "");
    Level.SetValue(properties, "AnchorQueue0", anchor);

    AI.Idle( npc, properties );
  end

  function Level.InstallTualetJob( tualetUID, bOnOff )
    local index = Level.GetTualetDoorIndex(tualetUID);
    local npc = Level.GetTualetNPC(index);

    if (npc == nil) then
       return true;
    end

    if (tualetUID == 'TLD1') then
       if (bOnOff == false) then
          Level.StartAnchor3_Idle( npc, 'AN08', 'AN10', 'AN61' );
       else
          Level.StartAnchor3_Idle( npc, 'A155', 'AN10', 'AN61' );
       end
    elseif (tualetUID == 'TLD2') then
       if (bOnOff == false) then
          Level.StartAnchor2_Idle( npc, 'AN31', 'AN32' );
       else
          Level.StartAnchor2_Idle( npc, 'AN31', 'A156' );
       end
    elseif (tualetUID == 'TLD3') then
       if (bOnOff == false) then
          Level.StartIdleEx( npc, 'AN51' );
       else
          Level.StartIdleEx( npc, 'A157' );
       end
    end

    return true;
  end

  function Level.DecloseDoor( door )
    if (Level.IsTualetDoorClosed(door) != false) then
       Level.InstallTualetJob( door, false );

       local index = Level.GetTualetDoorIndex(door);
       Level.ClosedDoor[index] = false;
       AI.RegisterClosedDoor(Level.FindDoor(door), false);
    end
  end

  function Level.OnOpenDoor( door )
--    local b = false;
--    if (Level.IsTualetDoorClosed(door) != false) then
--       b = true; 
--    end

--    Level.DecloseDoor( door );

    if (Level.GetTualetDoorIndex(door) != nil) then
       if (Level.DoorTrigger != nil) then
          Level.DoorTrigger:OnEnterArea();
       end
    end

--    if (b != false) then
--       local t = Level.FindItem('TOOO');
--       if (t != nil) then
--          Level.UnattachItemWorldObject( t );
--          Level.DeleteItem( t );
--       else
--          print("Warning. Cant find equipment TOOO");
--       end
 
--       local tab = Level.CreateItem("Throw:OutofOrder", "Equipment");
--       Entity.SetUniqueID( tab, 'TOOO' );
--       Actor.PutPouch( Level.GetPlayer(), Actor.GetEmptyPouch( player ), tab );
--    end
  end

  function Level.OnCloseDoor( door )
    if (Level.GetTualetDoorIndex(door) != nil) then
       if (Level.DoorTrigger != nil) then  
          Level.DoorTrigger:OnEnterArea();
       end
    end
  end

  function Level.OnKilledTualetBot()
     if (Level.DoorTrigger != nil) then
        Level.DoorTrigger:OnEnterArea();
     end
  end

  function Level.OnInventoryChanged()
     local tualetUID = { 'TLD1', 'TLD2', 'TLD3', 'TLD4', 'TLD5', 'TLD6' };
     local update = false;
     if (Actor.HasEquipment( Level.GetPlayer(), 'TOOO' ) != false) then
        for i = 1, 6 do
           if (Level.ClosedDoor[i] != false) then
              Level.DecloseDoor(tualetUID[i]);
              update = true;
           end
        end

        Level.EnableLevelMark( 'TOOO', false );
     end

     if (update != false) then
        if (Level.DoorTrigger != nil) then
           Level.DoorTrigger:OnEnterArea();
        end
     end
  end

  function Level.OnChangeCloth()
     Level.EnableLevelMark( 'TOOO', false );
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
