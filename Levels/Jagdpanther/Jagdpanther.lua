
  MissionText =
  {
       Task_1                 = " Проникнуть на базу",
       Task_2                 = " Добыть форму";
       Task_3                 = " Угнать грузовик";
       Task_4                 = " Добыть документы";
       Task_5                 = " Обезвредить языка",
       Task_6                 = " Вывезти языка",

       Fail_Alarm             = "Поднята тревога",
       Fail_YKilled           = "Дитрих Мельтцер убит",

       Message_2              = "Задания обновлены";
       Message_Docs           = "ВЗЯТЬ ДОКУМЕНТЫ";
       Message_DisableAlert   = "ОТКЛЮЧИТЬ ТРЕВОГУ";

       Fail_Vodila            = "Задание провалено: Водитель погиб";
       Fail_Bliz              = "Задание провалено: Машина взорвана";
       Message_3              = "Задания изменены";

       Key_Name               = "Ключ от сейфа";
       Key_Name2              = "Ключ от кабинета";
       Docs_Name              = "Документы по проекту \"Jagdpanther\"";

       Message_BunkerAlarm    = "В районе бункера поднята тревога.";
       Message_BaseAlarm_1    = "Поднята тревога. Число патрулей увеличено.";
       Message_BaseAlarm_2    = "Поднята тревога. Охрана стала более внимательна.";
       Message_AlarmFinished  = "Охрана успокоилась.";

       -- forlik
       MM_StopMove_FGS = "@ Фельдполиции здесь делать нечего!";
       MM_StopMove_OFF = "@ Извините, господин офицер, но Вам сюда нельзя!";
       MM_StopMove_Truck = "@ Только водитель может использовать грузовик!";
       MM_StopMove_Tower = "@ Никто не имеет право находиться на вышке! Немедленно спускайтесь!";
       MM_StopMove_Bunker = "@ Вам тут нечего делать!";
       MM_StopMove_Base = "@ Я не могу Вас пропустить!";
       MM_StopMove_MeltzerRoom = "@ Господина полковника сейчас нет, зайдите попозже!";
       MM_StopMove_Warehouse = "@ У меня приказ никого не пускать на территорию склада!";
  };


  function Level.OnFinishLoad()

     -- forlik System:SetVar( 'r_glow' , true );
     -- forlik System:SetVar( 'r_glow_r' , 2.0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); -- forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); -- forlik
    
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

     -- forlik
     Level.MeltzerRoomDoor = Level.FindDoor('MRDR');
     if (Level.MeltzerRoomDoor != nil) then
       Level.SetDoorUnlockKey(Level.MeltzerRoomDoor, 'MRKY');
     end;

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

     -- forlik
     Entity.SetSkin(Level.FindVehicle('BENZ'), 2);
     Entity.SetSkin(Level.FindVehicle('BLIZ'), 1);
     Entity.SetSkin(Level.FindVehicle('BLI2'), 2);
     Entity.SetSkin(Level.FindVehicle('BLI3'), 3);
     Entity.SetSkin(Level.FindVehicle('KUB2'), 2);
     Entity.SetSkin(Level.FindVehicle('KUB1'), 3);
     Entity.SetSkin(Level.FindVehicle('MOT1'), 1);
     Entity.SetSkin(Level.FindVehicle('MOT2'), 2);
     Entity.SetSkin(Level.FindVehicle('MOT3'), 3);

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

     -- forlik
     Level.OnLoaded_Common();
     Level.SoundName  = { "gramofon01" };
     Level.SoundState = { false };

     --- init tasks

     Level.AddMissionTask( MissionText.Task_2, 'VODL', "levels\\Jagdpanther\\vodila_task.txt" );
     Level.AddMissionTask( MissionText.Task_3, 'UGON', "levels\\Jagdpanther\\ugon_task.txt" );
     Level.AddMissionTask( MissionText.Task_1, 'BASA', "levels\\Jagdpanther\\basa_task.txt" );

     -- handlers

     Level.AddActionHandler(Level.AH_ACTOR_HITTED, "YAZK", "OnHittedYazik");
     Level.AddActionHandler(Level.AH_ACTOR_KILLED, "YAZK", "OnKilledYazik");
     Level.AddActionHandler(Level.AH_FINISH_CHANGECLOTH, "VODL", "OnVodilaCloth");
     Level.AddActionHandler(Level.AH_FINISH_CHANGECLOTH, "HZCL", "OnSoldierClothChange");
     Level.AddActionHandler(Level.AH_FINISH_CHANGECLOTH, "HWCL", "OnWorkerClothChange");

     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "BLIZ", "OnBlitzEnter");
     Level.AddActionHandler(Level.AH_LEAVE_VEHICLE, "BLIZ", "OnBlitzLeave");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "MOT1", "OnMot1Enter");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "MOT2", "OnMot2Enter");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "MOT3", "OnMot3Enter");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "BENZ", "OnBenzEnter");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "KUB1", "OnKub1Enter");
     Level.AddActionHandler(Level.AH_ENTER_VEHICLE, "KUB2", "OnKub2Enter");

     Level.AddActionHandler(Level.AH_ACTOR_KILLED , "VODL", "OnFailedTaskVodila" );
     Level.AddActionHandler( Level.AH_EXPLODE_VEHICLE, "BLIZ", "OnFailedTaskBliz" );

     AI.EnableZone("mmZoneA1", false);
     AI.EnableZone("mmZoneA2", false);
     AI.EnableZone("mmZoneC1", false);
     AI.EnableZone("mmZoneC2", false);

     Actor.MarkAsTarget( Level.FindActor( 'YAZK' ) , true );

     local vodila = Level.FindActor( 'VODL' );
   
     if ( vodila != nil ) then

        Actor.MarkAsTarget( vodila , true );

        Level.VodilaFormId = Actor.GetWearFormId( vodila );

     else

        Level.VodilaFormId = 0;

     end;

     -- forlik
     local mm63 = AI.FindNPC('MM63');
     local mm65 = AI.FindNPC('MM65');
     local yazk = AI.FindNPC('YAZK');
     if (mm63 != nil) then
       print("MoTmod.INFO: Jagdpanther.OnLoaded() set job for MM63");
       AI.SetJob(mm63, "default");
     end
     if (mm65 != nil) then
       print("MoTmod.INFO: Jagdpanther.OnLoaded() set job for MM65");
       AI.SetJob(mm65, "default");
     end
     if (yazk != nil) then
       print("MoTmod.INFO: Jagdpanther.OnLoaded() set job for YAZK");
       AI.SetJob(yazk, "default");
     end

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

     -- forlik
     if (Level.GetDifficulty() != 3) then
       Level.EnableLevelMark('HZCL', true);
       Level.EnableLevelMark('HWCL', true);
     end;

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

       -- forlik
       local key2 = Level.CreateItem("Custom" , "Equipment");
       if (key2 != nil) then
         Entity.SetUniqueID(key2, 'MRKY');
         Level.SetCustomItemName(key2, MissionText.Key_Name2);
         Level.SetCustomItemIcon(key2, "ammo_key");
         Actor.PutPouch(yazik, Actor.GetEmptyPouch(yazik), key2);
       end;

     end;

    
     --- init player

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Summer" ); -- forlik

       if ( Level.HasPlayerEquipPack() == false ) then
         local pistol     = Level.CreateItem("NaganSilencer","Weapon");
         local knife      = Level.CreateItem("KnifeNR43","Weapon");
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "Smoke", "Weapon" );
         Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
         Actor.PutEmptyPouch( player, "Chloroform", "Weapon" );
         Actor.PutEmptyPouch( player, "medikit", "Equipment" );
         Actor.PutEmptyPouch( player, "lockpick", "Equipment" );
         Actor.PutEmptyPouch( player, "binocular", "Equipment" );
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

       Level.AddMissionTask( MissionText.Task_6, 'YMOV', "levels\\Jagdpanther\\ymov_task.txt" );

    end

  end

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

-------------------------------------------------------------------------------
-- Level.OnCompleteMission()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnCompleteMission()
  System:ConsoleCommand('l_loadlevel "gamemenu" 1');
end

-------------------------------------------------------------------------------
-- Level.OnTransformStats()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
end

-------------------------------------------------------------------------------
-- Level.OnTransformInputs()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnTransformInputs(levelStats, aiStats, a, c, p, n, acc)
  p = Level.DefaultCalcProf(c, n, acc);
  return a, c, p, n;
end

-------------------------------------------------------------------------------
-- Level.OnCalcRateScore()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnCalcRateScore(rank, score, levelStats, aiStats, a, c, p, n, acc)
  return rank, score;
end

-------------------------------------------------------------------------------
-- Level.OnStopMove()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnStopMove(actorId, npc)
  if (npc == nil) then
    print("MoTmod.ERROR: Jagdpanther.OnStopMove() npc is null " .. tostring(actorId));
    return;
  end

  local npcForm = AI.GetForm(npc);
  local zone = AI.GetPrimaryPlayerZone(npc);
  local playerForm = AI.GetPlayerForm();

  if (zone == nil) then 
    return;
  end

  if (zone == "mmZoneA1") then
    Level.AddSmallMessage(MissionText.MM_StopMove_Truck, 5.0, 175, 175, 175);
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_02");
  elseif (zone == "mmZoneB1") then
    if (playerForm == "FGS1") then
      Level.AddSmallMessage(MissionText.MM_StopMove_FGS, 5.0, 175, 175, 175);
    elseif (playerForm == "FGO1") then
      Level.AddSmallMessage(MissionText.MM_StopMove_OFF, 5.0, 175, 175, 175);
    else
      Level.AddSmallMessage(MissionText.MM_StopMove_Bunker, 5.0, 175, 175, 175);
    end
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_18");
  elseif (zone == "mmZoneC1") then
    if (playerForm == "FGS1") then
      Level.AddSmallMessage(MissionText.MM_StopMove_FGS, 5.0, 175, 175, 175);
    elseif (playerForm == "FGO1") then
      Level.AddSmallMessage(MissionText.MM_StopMove_OFF, 5.0, 175, 175, 175);
    else
      Level.AddSmallMessage(MissionText.MM_StopMove_Base, 5.0, 175, 175, 175);
    end
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_18");
  elseif (zone == "mmZoneD1") then
    Level.AddSmallMessage(MissionText.MM_StopMove_Warehouse, 5.0, 175, 175, 175);
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
  elseif (zone == "mmZoneE1") then
    Level.AddSmallMessage(MissionText.MM_StopMove_Base, 5.0, 175, 175, 175);
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_18");
  elseif (zone == "mmZoneH1") then
    if (playerForm == "HZO1" or playerForm == "HGO1" or playerForm == "HMO1") then
      Level.AddSmallMessage(MissionText.MM_StopMove_OFF, 5.0, 175, 175, 175);
    else
      Level.AddSmallMessage(MissionText.MM_StopMove_Bunker, 5.0, 175, 175, 175);
    end
    AI.HandleVoice(npc, "@v_stop_move");
  elseif (zone == "mmZoneM1") then
    Level.AddSmallMessage(MissionText.MM_StopMove_MeltzerRoom, 5.0, 175, 175, 175);
    AI.HandleVoice(npc, "female_ger_panic_panic_04");
  elseif (zone == "mmZoneT1") then
    Level.AddSmallMessage(MissionText.MM_StopMove_Tower, 5.0, 175, 175, 175);
    AI.HandleVoice(npc, "male_ger_stopmove_stopmove_17");
  end
end

-------------------------------------------------------------------------------
-- Level.OnBlitzEnter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnBlitzEnter()
  AI.EnableZone("mmZoneA1", true);
  AI.EnableZone("mmZoneA2", true);
  if (Level.IsMissionFailed() != false or Level.HasMissionTask('UGON') == false) then
    return;
  end
  if (AI.GetPlayerForm() == "HFS1" and Level.IsMissionTaskCompleted('UGON') == false) then
    Level.CompleteMissionTask('UGON', 15.0 );
    Level.EnableLevelMark( 'UGON', false );
  end
end

-------------------------------------------------------------------------------
-- Level.OnBlitzLeave()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnBlitzLeave()
  AI.EnableZone("mmZoneA1", false);
  AI.EnableZone("mmZoneA2", false);
end

-------------------------------------------------------------------------------
-- Level.OnMot1Enter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnMot1Enter()
  local mm59 = AI.FindNPC('MM59');
  local mm5A = AI.FindNPC('MM5A');
  local mm62 = AI.FindNPC('MM62');
  if (mm59 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM59", Actor.ACTOR_TYPE_OFFICER);
    AI.HandleVoice(mm59, "male_ger_ohers_postoroniy");
  end
  if (mm5A != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM5A", Actor.ACTOR_TYPE_OFFICER);
  end
  if (mm62 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM62", Actor.ACTOR_TYPE_OFFICER);
  end
end

-------------------------------------------------------------------------------
-- Level.OnMot2Enter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnMot2Enter()
  local mm55 = AI.FindNPC('MM55');
  local mm56 = AI.FindNPC('MM56');
  if (mm55 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM55", Actor.ACTOR_TYPE_OFFICER);
  end
  if (mm56 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM56", Actor.ACTOR_TYPE_OFFICER);
    AI.HandleVoice(mm56, "male_ger_ohers_postoroniy");
  end
end

-------------------------------------------------------------------------------
-- Level.OnMot3Enter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnMot3Enter()
  local mm53 = AI.FindNPC('MM53');
  local mm54 = AI.FindNPC('MM54');
  if (mm53 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM53", Actor.ACTOR_TYPE_OFFICER);
  end
  if (mm54 != nil) then
    AI.SetDecamouflageLevel(AI.AI_TARGET_UID, "MM54", Actor.ACTOR_TYPE_OFFICER);
  end
end

-------------------------------------------------------------------------------
-- Level.OnBenzEnter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnBenzEnter()
  -- TODO
end

-------------------------------------------------------------------------------
-- Level.OnKub1Enter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnKub1Enter()
  -- TODO
end

-------------------------------------------------------------------------------
-- Level.OnKub2Enter()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnKub2Enter()
  -- TODO
end

-------------------------------------------------------------------------------
-- Level.OnEnterTriggerArea()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnEnterTriggerArea(sender, trgname, trgcmd)
  if (Level.IsMissionFailed() != false) then
    return;
  end

  if (trgname == 'basa_Trigger' or trgname == 'basa_Trigger2') then
    if (Level.IsMissionTaskCompleted('BASA') == false) then
      Level.AddMissionTask(MissionText.Task_4, 'DOCS', "levels\\Jagdpanther\\docs_task.txt");
      Level.AddMissionTask(MissionText.Task_5, 'HITA', "levels\\Jagdpanther\\hit_task.txt");
      Level.CompleteMissionTask('BASA', 15.0);
      Level.AddLargeMessage(MissionText.Message_2, 15.0, 255, 255, 255);
      if (Level.YazikMoved == true) then
        Level.CompleteMissionTask("YMOV", 0.0);
      end
      Level.EnableLevelMark('BASA', false);
      Level.EnableLevelMark('UGON', false);
      Level.EnableLevelMark('VODL', false);
      Level.EnableLevelMark('YAZK', true);
      Level.EnableLevelMark('MAK1', true);
      Level.EnableLevelMark('MAK2', true);
      Level.EnableLevelMark('MAK3', true);
      Level.EnableLevelMark('MAK4', true);
      Level.RemoveMissionTask('VODL');
      Level.RemoveMissionTask('UGON');
      Level.EnterBase = true;
    end
  elseif (trgname == 'YazikTrigger') then
    if (Level.IsMissionTaskCompleted('HITA') != false) then
      local completed = false;
      local player = Level.GetPlayer();
      if (player != nil) then
        completed = Actor.HasPickupedActor(player, 'YAZK') or Level.IsBodyInPlayerVehicle('YAZK');
        if (completed == false) then
          if (Level.Yazik == nil) then
            Level.Yazik = Level.FindActor('YAZK');
          end
          if (Level.YazikTrigger == nil) then
            Level.YazikTrigger = Level.FindTrigger('YazikTrigger');
          end
          if (Level.Yazik != nil and Level.YazikTrigger != nil) then
            completed = Trigger.IsIntersectNode(Level.YazikTrigger, Entity.GetNode(Level.Yazik));
          end
        end
      end
      if (completed != false) then
        Level.CompleteMissionTask('YMOV', 15.0);
        Level.YazikMoved = true;
      end
    end
  elseif (trgname == 'DitrihPlaceTrigger') then
    Level.PlayerAtDitrihPlace = tonumber(trgcmd);
  elseif (trgname == 'GramofonTrigger') then
    Level.EnableSound("gramofon01", true);
  elseif (trgname == 'ZoneOnTriggerC') then
    AI.EnableZone("mmZoneC1", true);
    AI.EnableZone("mmZoneC2", true);
  elseif (trgname == 'ZoneOffTriggerC') then
    AI.EnableZone("mmZoneC1", false);
    AI.EnableZone("mmZoneC2", false);
  end
end

-------------------------------------------------------------------------------
-- Level.OnLeaveTriggerArea()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnLeaveTriggerArea(sender, trgname, trgcmd)
  if (trgname == 'DitrihPlaceTrigger') then
    Level.PlayerAtDitrihPlace = -1;
  elseif (trgname == 'GramofonTrigger') then
    Level.EnableSound("gramofon01", false);
  end
end

-------------------------------------------------------------------------------
-- Level.GiveDocs()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.GiveDocs()
  local docs = Level.CreateItem("Custom", "Equipment");
  if (docs != nil) then
    Entity.SetUniqueID(docs, 'SCOD');
    Level.SetCustomItemName(docs, MissionText.Docs_Name);
    Level.SetCustomItemIcon(docs, "ammo_doc");
    local player = Level.GetPlayer();
    if (player != nil) then
      Actor.PutPouch(player, Actor.GetEmptyPouch(player), docs);
    end
  end
end

-------------------------------------------------------------------------------
-- Level.OnSoldierClothChange()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnSoldierClothChange()
  local player = Level.GetPlayer();
  if (player != nil) then
    Actor.EnableMesh(player, "sabg_equipment_up", false);
    Actor.EnableMesh(player, "sabg_equipment_down", false);
    Actor.EnableMesh(player, "mesh_helmet", false);
  end;
  Level.EnableLevelMark('HZCL', false);
  Level.RemoveActionHandler(Level.AH_FINISH_CHANGECLOTH, 'HZCL');
end

-------------------------------------------------------------------------------
-- Level.OnWorkerClothChange()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnWorkerClothChange()
  Level.EnableLevelMark('HWCL', false);
  Level.RemoveActionHandler(Level.AH_FINISH_CHANGECLOTH, 'HWCL');
end
