
                  
  MissionText =
  {
       Task_1                          = " Найти капитана",
       Task_2                          = " Освободить капитана";
       Task_3                          = " Покинуть замок";
       Task_4                          = " Вывести капитана";

       Message_2                       = "Задания обновлены";
       Message_3                       = "Задания изменены";
       Message_4                       = "Задание выполнено : Ликвидировать Полякова";

       Message_Alarm                   = "Поднята тревога. Охрана стала более внимательна..";
       Message_AlarmFinished           = "Охрана успокоилась..";

       Docs_Access                     = "Разрешение на доступ к заключенному";
       Docs_Extra                      = "Бумаги для вызова на допрос";

       Message_ShowEnterDocument       = "РАЗРЕШЕНИЕ НА ДОСТУП";
       Message_ShowExtraditionDocument = "ВЫЗВАТЬ НА ДОПРОС";

       Message_StopMove_1              = "Только комендант может пройти в тюрьму..";
       Message_StopMove_2              = "Только офицеры могут проходить в эту часть здания..";
       Message_StopMove_3              = "Только офицеры могут пройти в зал для конференций..";
       Message_StopMove_4              = "У вас нету доступа в тюрьму..";

       Message_MoveSpy                 = "Капитана отконвоируют к офицеру на допрос (синяя отметка). ";

       Message_Move                    = "ИДЕМ";
       Message_Stop                    = "ЖДИ ЗДЕСЬ";

       Message_Key                     = "Ключ от камер";

       Message_SpyWaitThink            = "Вернитесь за капитаном";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnFinishLoad()

      -- forlik System:SetVar( "r_glow", true );
      -- forlik System:SetVar( "r_glow_r", 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik

      --- init music

      Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\danger.ogg");
      Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_3.ogg" );
      Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.15#sounds\\music\\stealth_1.ogg" );

      local cameraDoor = Level.FindDoor('CAMD');

      if ( cameraDoor != nil ) then
        Level.SetDoorNotifyScript( cameraDoor , true );       
      end;

      Level.SpyActor     = Level.FindActor('GSPY');

      if ( Level.SpyActor != nil ) then
        Actor.EnableHitFace( Level.SpyActor, true );
      end;

      Level.SetDoorUnlockKey(Level.FindDoor('CAMD'), 'KEY1');
      Level.SetDoorUnlockKey(Level.FindDoor('DR01'), 'KEY1');
      Level.SetDoorUnlockKey(Level.FindDoor('DR02'), 'KEY1');
      Level.SetDoorUnlockKey(Level.FindDoor('DR03'), 'KEY1');
      Level.SetDoorUnlockKey(Level.FindDoor('DR04'), 'KEY1');

      Level.SetDoorUnlockKey(Level.FindDoor('DR06'), 'KEY2');
      Level.SetDoorUnlockKey(Level.FindDoor('DR07'), 'KEY2');

      Level.LeaveTrigger = Level.FindTrigger( 'LeaveTrigger' );

      -- patch
      local backpack = Level.FindContainer();
      if (backpack != nil) then
          Level.EnableItemPickup(backpack, true);
      end

  end;

  function Level.OnSave()

     Stream.WriteBool( Level.SpyKilled );
     Stream.WriteBool( Level.SpyMoving );
     Stream.WriteBool( Level.TimerInstalled );
     Stream.WriteBool( Level.MarkRemoved );

     Stream.WriteBool( Level.EnterDocumentShowed );
     Stream.WriteBool( Level.ExtraditionDocumentShowed );
     Stream.WriteBool( Level.RoomTrigger_1 );

     Stream.WriteInt ( Level.ComendatFormId ); 
     Stream.WriteBool( Level.SpyCheckGuards );
     Stream.WriteBool( Level.AtCameraTrigger );
     Level.OnSave_Common(); -- forlik

  end;

  function Level.OnLoad()

     Level.SpyKilled                 = Stream.ReadBool();
     Level.SpyMoving                 = Stream.ReadBool();
     Level.TimerInstalled            = Stream.ReadBool();
     Level.MarkRemoved               = Stream.ReadBool();

     Level.EnterDocumentShowed       = Stream.ReadBool();
     Level.ExtraditionDocumentShowed = Stream.ReadBool();
     Level.RoomTrigger_1             = Stream.ReadBool();

     Level.ComendatFormId            = Stream.ReadInt();
     Level.SpyCheckGuards            = Stream.ReadBool();
     Level.AtCameraTrigger           = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

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
     Level.AddMissionTask( MissionText.Task_1, 'FIND', "levels\\krasavitca\\find_task.txt", 1);
     Level.AddMissionTask( MissionText.Task_2, 'RELS', "levels\\krasavitca\\get_task.txt" );

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GSPY" , "OnKilledSpy");
     Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, "GCOM", "OnComendatCloth" );

     Level.AddActionHandler( Level.AH_FOLLOW_WAIT_THINK , "GSPY" , "OnFollowWaitThink");

     Level.SpyKilled      = false;
     Level.SpyMoving      = false;
     Level.TimerInstalled = false;
     Level.MarkRemoved    = false;

     Level.SpyCheckGuards = true;

     Level.EnterDocumentShowed       = false;
     Level.ExtraditionDocumentShowed = false;

     Level.RoomTrigger_1   = false;
     Level.AtCameraTrigger = false;

     local comendat = Level.FindActor( 'GCOM' );
   
     if ( comendat != nil ) then
        Actor.MarkAsTarget( comendat , true );
        Actor.EnableHitFace( comendat, true );
        Level.ComendatFormId = Actor.GetWearFormId( comendat );
     else
        Level.ComendatFormId = 0;
     end;

     local spy = Level.FindActor( 'GSPY' );
     if ( spy != nil ) then
       Actor.SetMapHidden( spy, true );
     end;

     NPC.SetFlag( AI.FindNPC('GSPY'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
     -- access docs

     local access_docs = Level.CreateItem( "Custom" , "Equipment" );
     if ( access_docs != nil ) then

       Entity.SetUniqueID( access_docs, 'ADOC' );

       Level.SetCustomItemName( access_docs, MissionText.Docs_Access );
       Level.SetCustomItemIcon( access_docs, "ammo_doc" );
     
       local officer = Level.FindActor('GO05');
       if ( officer != nil ) then 
         Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), access_docs );
         Actor.MarkAsTarget( officer, true );
       end;

     end;

     local dopros_docs = Level.CreateItem( "Custom", "Equipment" );
     if ( dopros_docs != nil ) then
       Entity.SetUniqueID( dopros_docs, 'DDOC' );

       Level.SetCustomItemName( dopros_docs, MissionText.Docs_Extra );
       Level.SetCustomItemIcon( dopros_docs, "ammo_doc" );

       local officer = Level.FindActor('ZO16' );
       if ( officer != nil ) then
          Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), dopros_docs );
          Actor.MarkAsTarget( officer, true );
       end;

     end;

     NPC.SetFlag( AI.FindNPC('GSPY'), NPC.F_CANT_OPEN_LOCK_DOOR, true );

     Level.AddKey('GRD1', 'KEY1', MissionText.Message_Key);
     Level.AddKey('GRD2', 'KEY1', MissionText.Message_Key);
     Level.AddKey('GO01', 'KEY1', MissionText.Message_Key);

     Level.AddKey('GO02', 'KEY2', MissionText.Message_Key);
     Level.AddKey('GS23', 'KEY2', MissionText.Message_Key);

     --- init player

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Summer" );
       Level.ChangePlayerStand( 2 );

       if ( Level.HasPlayerEquipPack() == false ) then

         local machineGun = Level.CreateItem("delisle","Weapon");
         local pistol     = Level.CreateItem("NaganSilencer","Weapon");
         local knife      = Level.CreateItem("knife","Weapon");

         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );

         Actor.PutWeaponAmmo( player, "delisle");
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutWeaponAmmo( player, "nagan");
 
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );

         Actor.PutEmptyPouch( player, "lockpick", "Equipment" );
         Actor.PutEmptyPouch( player, "fiberwire", "Weapon"  );

       end;

     end;

     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     local diff = Level.GetDifficulty();
     if (diff == 0 or
         diff == 1) then

        -- forlik Level.StartCustomAnimationJob('GO14', "Act_ProjectY_WatchDevice", -42.0, -1.0, 662.5, -1.0, 0.0, 0.0);
        Level.StartCustomAnimationJob('GO14', "Act_ProjectY_WatchDevice", -42.0, -5.0, 662.5, -1.0, 0.0, 0.0);
        Level.StartCustomAnimationJob('GS48', "Relaxed_Idle_Guard", 32.35, 80.9, 1026.9, 0.0, 0.0, -1.0);

        if ( diff == 0 ) then
           Level.StartCustomAnimationJob('GS67', "Relaxed_Idle_Guard", 244.17, -5.0, 1105.19, 0.0, 0.0, -1.0);
        end

     end

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnComendatCloth()
     Level.EnableLevelMark('YOFS' , false );
  end;

  function Level.CompleteTaskFind()

    if ( Level.IsMissionTaskCompleted('FIND') == true ) then
       return;
    end;

    if ( Level.IsMissionFailed() == true ) then
       return; 
    end;

    Level.CompleteMissionTask('FIND', 15.0 );
    Level.EnableLevelMark( 'TUR1', false );
    Level.EnableLevelMark( 'TUR2', false );

    --Level.MarkRemoved = true;
    --Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );

    local spy = Level.FindActor('GSPY');

    if ( spy != nil ) then
       Actor.MarkAsTarget( spy, true );
       Actor.SetMapHidden( spy, false );
    end;

    Level.AddPlayerActorAction( 'MOVE', 'GSPY', MissionText.Message_Move, "OnActorPlayerAction" , false, true );

  end;

  function Level.OnInventoryChanged()

    if ( Level.MarkRemoved == false ) then

      local player = Level.GetPlayer();

      local adoc = false;
      local ddoc = false;
      
      if ( Actor.HasCustomEquipment( player, 'ADOC' ) ) then

         Level.EnableLevelMark( 'ADOC', false );
         Level.EnableLevelMark( 'TUR2', false );

         adoc = true;

      end;

      if ( Actor.HasCustomEquipment( player, 'DDOC' ) ) then
         Level.EnableLevelMark( 'DDOC', false );
         Level.EnableLevelMark( 'TUR2', false );

         ddoc = true;
      end;

      if ( adoc == true and ddoc == true ) then     

         Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );
         Level.MarkRemoved = true;

      end;

    else

      Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );
      Level.MarkRemoved = true;

    end;

  end;

  function Level.CompleteTaskFree()

    if ( Level.IsMissionFailed() != false or Level.IsMissionTaskCompleted('RELS') == true ) then
      return;
    end;

    Level.AddMissionTask( MissionText.Task_4, 'OUTS', "levels\\krasavitca\\out_task.txt", 2 );
    Level.CompleteMissionTask('RELS', 15.0 );
    Level.AddLargeMessage( MissionText.Message_2, 15.0, 255, 255, 255 );

    Level.EnableLevelMark( 'OUTS', true );
    Level.EnableLevelMark( 'DDOC', false );
    Level.EnableLevelMark( 'ADOC', false );
    Level.EnableLevelMark( 'YOFS', false );
    Level.EnableLevelMark( 'DEST', false );

    Level.MarkRemoved = true;
    Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );

  end;

  function Level.OnOpenDoor( door )

   if ( door == 'CAMD' ) then

      Level.CompleteTaskFree();

      local cameraDoor = Level.FindDoor('CAMD');

      if ( cameraDoor != nil ) then
        Level.SetDoorNotifyScript( cameraDoor , false );
      end;

   end;

  end;

  function Level.OnCloseDoor( door )

  end;  

  function Level.HasAccessDocs()

      local player = Level.GetPlayer();
      if ( player == nil ) then
         return;
      end;

      return Actor.HasCustomEquipment( player, 'ADOC' );

  end;

  function Level.HasInterrogationDocs()
      local player = Level.GetPlayer();
      if ( player == nil ) then
         return;
      end;

      return Actor.HasCustomEquipment( player, 'DDOC' );
 
  end;

  function Level.OnKilledSpy()

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( Level.SpyKilled == true ) then
      return;
    end;

    Level.AddMissionTask( MissionText.Task_3, 'LEAV', "levels\\krasavitca\\leav_task.txt", 2 );
    Level.RemoveMissionTask( 'OUTS' );
    Level.EnableLevelMark('OUTS',false );

    if ( Level.IsMissionTaskCompleted('RELS') == false ) then
         Level.RemoveMissionTask('RELS');
    end;

    -- PATCH
    if (Level.IsMissionTaskCompleted('FIND') == false) then
         Level.RemoveMissionTask('FIND');
    end;

    Level.AddLargeMessage( MissionText.Message_4, 15.0, 255, 255, 255 );
    Level.AddLargeMessage( MissionText.Message_3, 15.0, 255, 255, 255 );

    Level.SpyKilled = true;

    if ( Level.LeaveTrigger != nil ) then

      if ( Trigger.IsIntersectNode( Level.LeaveTrigger, Entity.GetNode( Level.GetPlayer() ) ) == true ) then

          Level.CompleteMissionTask('LEAV', 15.0 );

          if ( Level.TimerInstalled == true ) then
            Level.RemoveTimer( 'CHEK' );
            Level.TimerInstalled = false;
          end;

      end;  

    end;

    if (Level.IsMissionTaskCompleted('LEAV') == false) then
       Level.PlayMenuSound("task_finish");
    end

  end;

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( trgname == 'FindTrigger' ) then

       Level.CompleteTaskFind();
       Level.UnregisterTrigger( Level.FindTrigger( 'FindTrigger' ) );

    elseif ( trgname == 'LeaveTrigger' ) then

         if ( Level.SpyKilled == true ) then
              Level.CompleteMissionTask( 'LEAV', 15.0 );
         else

            if ( Level.HasMissionTask('OUTS') == true ) then
                
               local completed = false;

               local player = Level.GetPlayer();
               if ( player != nil ) then

                  completed = Actor.HasPickupedActor( player, 'GSPY');

                  if ( completed == false and Level.SpyActor != nil and Level.LeaveTrigger != nil ) then

                    completed = Trigger.IsIntersectNode( Level.LeaveTrigger, Entity.GetNode( Level.SpyActor ) );
  
                  end;

               end;
 
               if ( completed != false ) then
                 Level.CompleteMissionTask('OUTS', 15.0 );
               else
                 if ( Level.TimerInstalled == false ) then
                   Level.AddTimer( 'CHEK', "OnCheckSpyArea", 0.25, true );
                   Level.TimerInstalled = true;
                 end;
               end;

            end;
        end;

    end;

  end;

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

    if ( trgname == 'LeaveTrigger' ) then
        if ( Level.TimerInstalled == true ) then
             Level.RemoveTimer( 'CHEK' );
             Level.TimerInstalled = false;
        end;
    end;

  end;

  function Level.OnCheckSpyArea()

    if ( Level.SpyActor != nil and Level.LeaveTrigger != nil ) then

      if ( Trigger.IsIntersectNode( Level.LeaveTrigger, Entity.GetNode( Level.SpyActor ) ) == true ) then
          Level.CompleteMissionTask('OUTS', 15.0 );
          Level.RemoveTimer( 'CHEK' );
          Level.TimerInstalled = false;
      end;  
    end;

  end;

  function Level.FollowPlayer( bWait ) 

    local spy = AI.FindNPC('GSPY');
    local player = Level.FindActor('PLYR');

    if (spy != nil and player != nil) then
      if (AI.IsFollowingActor(spy, player) != false) then
         AI.EnableFollowActorPause(spy, bWait);
      else
        local properties = Level.CreateCustomParams();
        Level.SetValue(properties, "DistanceRun", true);
        Level.SetValue(properties, "ParentPolicy", true);
        Level.SetValue(properties, "IdlePolicy", true);
        Level.SetValue(properties, "FollowActorPause", bWait);
        Level.SetValue(properties, "CriticPathDistance", 270.0);

        AI.FollowActor( spy, player, 0.0, -20.0, properties);

        AI.SetWatchActor( Level.FindActor('GSPY') );
        AI.EnableDecamouflageWatchActor( true );
      end
    end

  end

  function Level.OnActorPlayerAction( actionId )

    if ( actionId == 'MOVE' ) then

      if ( Level.SpyMoving == false ) then
         Level.FollowPlayer( false );
         Level.SpyMoving = true;
         Level.SetPlayerActorActionDesc( 'MOVE', MissionText.Message_Stop );
  
         if ( Level.IsMissionTaskCompleted('RELS') == false ) then
              Level.CompleteTaskFree();
         end;

      else
         Level.FollowPlayer( true );
         Level.SpyMoving = false;
         Level.SetPlayerActorActionDesc( 'MOVE', MissionText.Message_Move );
      end;

    end;

  end;

  function Level.OnStopMove( actorId )

     if (actorId == 'GS13' or
         actorId == 'GS12' or 
         actorId == 'GS19' or
         actorId == 'GS20') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_1, 15.0 , 255, 255, 255 );
         return;

     elseif( actorId == 'GS97' or
             actorId == 'GS74') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_2, 15.0 , 255, 255, 255 );
         return;

     elseif( actorId == 'GS36' or
             actorId == 'GS35') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove_3, 15.0 , 255, 255, 255 );
         return;

     elseif( actorId == 'GRD1' or
             actorId == 'GS08' or
             actorId == 'GS23') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE );
         Level.AddSmallMessage( MissionText.Message_StopMove_4, 15.0 , 255, 255, 255 );
         return;
     end

  end

 function Level.IsPlayerCommendant()

     local player = Level.GetPlayer();
     if ( player == nil ) then
        return false;
     end;

     if ( Actor.GetWearFormId( player ) == Level.ComendatFormId ) then
        return true;
     else
        return false;
     end;
  end


  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end

     local form = Actor.GetActorType(player);
     
     if (actorId == 'GS13' or
         actorId == 'GS12' or 
         actorId == 'GS19' or
         actorId == 'GS20') then

        if (Level.IsPlayerCommendant() != false) then
           return false;       
        else
           return true;
        end

     elseif (actorId == 'GS97' or
             actorId == 'GS74' or
             actorId == 'GS36' or
             actorId == 'GS35') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;       
        else
           return true;
        end

     elseif (actorId == 'GRD1' or
             actorId == 'GS08') then

        if (Level.EnterDocumentShowed != false) then
           return false;       
        else
           return true;
        end

     elseif (actorId == 'GS23') then
        return true;
     end

     return true;
  end;

  function Level.OnFinishAlert( alertGroupId )
     
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     local alertLast = true;
     for i = 1, 8, 1 do
        if (AI.IsLocalAlert( i ) != false) then
           alertLast = false;
        end
     end

     if (alertLast != false) then
        AI.Debug(nil, "Level.OnFinishAlert", "EnableAlarmSound:false");

        Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);

        Level.AlertCalled = true;
     end 
  end

  function Level.OnAlert( alertGroupId )

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    Level.AddSmallMessage( MissionText.Message_Alarm, 10.0, 255, 0, 0);

    AI.SetLocalAlert(1, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(2, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(3, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(4, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(5, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(6, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(7, true, AI.TransformAlertTime(300));
    AI.SetLocalAlert(8, true, AI.TransformAlertTime(300));

    Level.AlertCalled = true;

    if (alertGroupId == 8) then

       AI.SafeFind(AI.FindNPC('SS60'), true);
       AI.SafeFind(AI.FindNPC('SS63'), true);
       AI.SafeFind(AI.FindNPC('SS64'), true);
       AI.SafeFind(AI.FindNPC('SS65'), true);

       AI.AddAlertValue(1);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);

    elseif (alertGroupId == 2 or
            alertGroupId == 3 or
            alertGroupId == 4) then

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);

       AI.SafeFind(AI.FindNPC('GS31'), true);
       AI.SafeFind(AI.FindNPC('GS32'), true);

       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
       AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);

       AI.AddAlertValue(2);
    end
  end

  function RunS()
    local officer = AI.FindNPC('GO01');

    local properties = Level.CreateCustomParams();
    Level.SetValue(properties, "CustomString_1", 'AN16');
    Level.SetValue(properties, "CustomString_2", 'AN18');
    AI.RunScriptTask(officer, "scripts:job\\AnchorJob2.lua", AI.LOGIC_DEFAULT, properties);
  end

  function Level.StartCustomAnimationJob( botUID, anim, posX, posY, posZ, dirX, dirY, dirZ )
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
     AI.Idle( bot, properties );
    else
     print("Warning. Can't find npc " .. botUID);
    end
  end

  function Level.OnFollowWaitThink()
     Level.AddSmallMessage( MissionText.Message_SpyWaitThink, 10.0, 255, 255, 255 );
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
