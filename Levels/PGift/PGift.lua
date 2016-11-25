----------------------------------------------------------------------------
--
-- Description :  Mission "Polish gift"
--
--
----------------------------------------------------------------------------


--------------------------------- Messages table -----------------------------
  
  MissionText = 
  {
      Task_Agent                            = " Получить информацию";
      Task_CryptLetter                      = " Перехватить шифрограмму";
      Task_Explosion                        = " Заложить заряды";
      Task_Leave                            = " Покинуть замок";
                        
      Key_Kitchen                           = "Ключ от кухни";
      Key_Doctor                            = "Ключ от кабинета доктора";
      Key_Seif                              = "Ключ от сейфа";
      Key_Floor2                            = "Ключ от комнат второго этажа";      
      Key_SkladExplosive                    = "Ключ от склада со взрывчаткой";
      Key_SkladHoz                          = "Ключ от хозяйственного склада";
      Key_SkladFloor1                       = "Ключ от первого этажа склада";
      Key_SkladFloor2                       = "Ключ от второго этажа склада";
      Key_Podval                            = "Ключ от подвала";
      Key_Radio                             = "Ключ от радио комнаты";
      
      Message_SetupDynamite                 = "УСТАНОВИТЬ ДИНАМИТ";
      Message_NoDynamite                    = "! У вас нет динамита..";
      Message_DynSetuped                    = "Динамит установлен";
      
      Message_ListenTalk                    = "ПОДСЛУШАТЬ РАЗГОВОР";
      Message_FailRadist                    = "Радист нейтрализован до получения шифрограммы";
      Message_RadistGetPaper                = "! Радист получил шифрограмму...";
      
      Message_DoctorBeSoon                  = "- Доктору передали, что вы его ждете, он скоро подойдет..";
      Message_VinePoison                    = "ДОБАВИТЬ ЯД";
      Message_KastrulaPoison                = "ДОБАВИТЬ ЯД";
      
      Message_PoisonTipName                 = "Яд";
      Message_PoisonName                    = "ЯД";
      Message_PushVineBox                   = "ТОЛКНУТЬ БОЧКУ";
      
      Message_DocTip                        = "Шифрограмма";
      Message_DocName                       = "ШИФРОГРАММУ";
      Message_GetDocsFromSeif               = "ВЗЯТЬ ШИФРОГРАММУ";
      
      Message_PassName                      = "Накладная для допуска на склад";
      Message_PassNameL                     = "ДОПУСК НА СКЛАД";
      
      Message_MoveDoska                     = "ОТОДВИНУТЬ ДОСКУ";
      Message_ShowDocs                      = "ПОКАЗАТЬ ПРОПУСК";
      Message_ReadInfo                      = "ОСМОТРЕТЬ ТАЙНИК";
                        
      Message_StopMove_DocsClear            = "@ Все нормально - проходите.";
      
      Message_Alarm                         = "Поднята тревога!";
      Message_AlarmFinished                 = "Тревога закончилась";      
      
      WhereIsFuckenCookMessage              = "@ Жрать охота! Когда придет этот кашевар?!";
      
      Message_StopMove_EastSklad            = "@ На склад доступ закрыт!";
      Message_StopMove_SecondFloor          = "@ Немедленно покиньте второй этаж! Проходит совещание офицеров.";
      Message_StopMove_ConferenceRoom       = "@ Немедленно покиньте второй этаж! Проходит совещание офицеров.";
      Message_StopMove_FirstFloorSklad      = "@ Мне приказано, кроме рабочих никого не пускать на склад..";
      Message_StopMove_DoctorRoom_Doctor    = "@ Что вы тут забыли! Это мой кабинет!";
      Message_StopMove_DoctorRoom           = "@ Это кабинет доктора! Покиньте его немедленно!";
      Message_StopMove_OfficerKitchen_1     = "@ В этой комнате накрыто для офицеров. Вы должны покинуть ее.";
      Message_StopMove_OfficerKitchen_2     = "@ Покиньте офицерскую столовую немедленно!";
      Message_StopMove_RadistZone_1         = "@ Кроме радистов в эту комнату доступ запрещен..";
      Message_StopMove_RadistZone_2         = "@ Вы не доктор?! Генриху плохо! ... Покиньте комнату!";
      Message_StopMove_RadistZoneEnter      = "@ Вам нечего делать в радиокомнате!";
      Message_StopMove_Billiard             = "@ Что ты здесь забыл! Иди занимайся своими делами!";
      Message_StopMove_Basement_1           = "@ В подвале нет никакой работы для тебя!";
      Message_StopMove_Basement_2           = "@ Занимайтесь своими делами! Тут вам делать нечего!";
      Message_StopMove_GuardsRoom           = "@ Кроме охраны здесь никто не должен находиться..";
      Message_StopMove_SecondFloorSklad     = "@ Вход на склад запрещен! Я не имею права вас сюда пускать!";
      Message_StopMove_WorkersSklad         = "@ У меня приказ никого не пропускать на склад!";
      Message_StopMove_WorkersSkladEnterBox = "@ Чего халтуришь? Перекур на улице!";
      Message_StopMove_CookRoom             = "@ Чего забыл на кухне?";
      
      Message_Help                          = { "В темноте противник видит значительно хуже..",
                                                "Спящие противники плохо слышат..", 
                                                "Отравляющие средства и аптечку можно найти в медпункте.." };
      
      Message_ClothInfo                     = { "Радист может находиться в радиорубке",
                                                "Врач может посещать больных.." 
                                              };
      
  };
    
  MissionSamples = 
  {
  };


------------------------ Initialization and save/load ------------------------

--------------------------------------------------------
-- Name: Level.OnCompleteMission()
-- Desc:
--------------------------------------------------------
function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

end;

--------------------------------------------------------
-- Name: Level.OnFinishLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnFinishLoad()
       Level.OnFinishLoad_Common();
       
       Level.AddMusic( Level.MUSIC_MOOD_ACTION, "#0.75#sounds\\music\\insurgent.ogg" );              
       Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.23#sounds\\music\\imbroken03.ogg" );
                     
       Level.SetDefaultMusicPause( 180.0, 300.0, 30.0, 60.0 );
       Level.SetDOFPostFilter( 1, 0.0, 700.0, 1500.0 );
       Level.EnableMusicOutdoor(false);
       
       System:SetVar("r_dofsky", 128 );
       System:SetVar( "r_rimsunlightfactor", 0.5 );
                    
       --Level.EnableDoor( Level.FindDoor('VDOR') , false );
       --AI.RegisterClosedDoor( Level.FindDoor('RSEF'), true);
                          
       local seifDoor     = Level.FindDoor( 'SEIF' );
              
       if ( seifDoor != nil and Level.IsMissionTaskCompleted('LETR') == false ) then
         Level.SetDoorNotifyScript( seifDoor , true );         
       end;
     
       if ( Level.IsMissionTaskCompleted('LETR') == false ) then
       
          local look = Level.FindDoor('LOOK');          
          Level.SetDoorLookNotify( look, true );
          Level.SetDoorStringId( look, "see", 'LTLK' );
          
       end;

       Level.SetDoorKey('SEIF', 'SEIF');
       Level.SetDoorKey('DR24', 'KITC');
       Level.SetDoorKey('DR36', 'DOCC');
       Level.SetDoorKey('DR23', 'SFL2');
       Level.SetDoorKey('SARD', 'SEXP');
       Level.SetDoorKey('DR35', 'SHOZ');
       Level.SetDoorKey('DR31', 'SKF1');
       Level.SetDoorKey('DR09', 'SKF2');
       Level.SetDoorKey('DR20', 'SFL2');
       Level.SetDoorKey('DR15', 'KY15');
       Level.SetDoorKey('DR19', 'KY19');
       Level.SetDoorKey('DR08', 'KY15');
     
       Level.GetDocsTrigger  = nil;
       Level.DynamiteTrigger = nil;
       
       Level.SetDoorLocked( Level.FindDoor('LOOK'), true, false );
               
       -- effects
       Level.SetHudEffect("noise_small" , true ); 
                                        
  end;
 
--------------------------------------------------------
-- Name: Level.OnSave()
-- Desc:
--------------------------------------------------------
  function Level.OnSave()
       Stream.WriteInt(2);
       
       Stream.WriteBool( Level.DynamiteFused[1] );
       Stream.WriteBool( Level.DynamiteFused[2] );
       Stream.WriteBool( Level.DynamiteFused[3] );       
       Stream.WriteBool( Level.DocsInSeif );
       Stream.WriteBool( Level.DocsGet );
       Stream.WriteBool( Level.TalkingDoc );
       Stream.WriteFloat( Level.ListenTimer );
       Stream.WriteBool( Level.Telegram );
       Stream.WriteBool( Level.Recieving );
       Stream.WriteBool( Level.VinePoisoned );
       Stream.WriteBool( Level.VineDrink[1] );
       Stream.WriteBool( Level.VineDrink[2] );
       Stream.WriteFloat( Level.VineTimer );
       Stream.WriteBool( Level.BochPoisoned );
       Stream.WriteBool( Level.BoxJobWorker1 );
       Stream.WriteBool( Level.BoxJobWorker2 );
       Stream.WriteBool( Level.BoxArea );
       
       Stream.WriteBool( Level.BoxComplete[1] );
       Stream.WriteBool( Level.BoxComplete[2] );
       Stream.WriteBool( Level.BoxComplete[3] );
       Stream.WriteBool( Level.BoxComplete[4] );
       Stream.WriteBool( Level.BoxComplete[5] );
              

       Stream.WriteBool( Level.AlertCalled );
       Stream.WriteInt( Level.LetterState );
       
       -- version 1
       Stream.WriteBool( Level.UsedBochka );
       Stream.WriteBool( Level.GuardDoorOpened );
       
       -- version 2
       Stream.WriteBool( Level.KastrulaPoisoned );
       Stream.WriteBool( Level.GS06_Poissoned );
       Stream.WriteBool( Level.Cook_Poissoned );
       
       Level.OnSave_Common();              
  end

--------------------------------------------------------
-- Name: Level.OnLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnLoad()
       local version = Stream.ReadInt();

       Level.DynamiteFused = {};
       
       Level.DynamiteFused[1] = Stream.ReadBool();
       Level.DynamiteFused[2] = Stream.ReadBool();
       Level.DynamiteFused[3] = Stream.ReadBool();
       
       Level.DocsInSeif       = Stream.ReadBool();
       Level.DocsGet          = Stream.ReadBool();
       Level.TalkingDoc       = Stream.ReadBool();
       Level.ListenTimer      = Stream.ReadFloat();
       Level.Telegram         = Stream.ReadBool();
       Level.Recieving        = Stream.ReadBool();
       Level.VinePoisoned     = Stream.ReadBool();
       
       Level.VineDrink = {};
       
       Level.VineDrink[1]     = Stream.ReadBool();
       Level.VineDrink[2]     = Stream.ReadBool();
       Level.VineTimer        = Stream.ReadFloat();
       Level.BochPoisoned     = Stream.ReadBool();
       Level.BoxJobWorker1    = Stream.ReadBool();
       Level.BoxJobWorker2    = Stream.ReadBool();
       Level.BoxArea          = Stream.ReadBool();
       
       Level.BoxComplete={};
       
       Level.BoxComplete[1]   = Stream.ReadBool();
       Level.BoxComplete[2]   = Stream.ReadBool();
       Level.BoxComplete[3]   = Stream.ReadBool();
       Level.BoxComplete[4]   = Stream.ReadBool();
       Level.BoxComplete[5]   = Stream.ReadBool();
       
       Level.AlertCalled = Stream.ReadBool();
       Level.LetterState = Stream.ReadInt();
       
       Level.UsedBochka       = false;
       Level.GuardDoorOpened  = false;
       Level.KastrulaPoisoned = false;
       Level.GS06_Poissoned   = false;
       
       if (version >= 1) then
          Level.UsedBochka      = Stream.ReadBool();
          Level.GuardDoorOpened = Stream.ReadBool();
       end
       
       if (version >= 2) then
          Level.KastrulaPoisoned = Stream.ReadBool();
          Level.GS06_Poissoned   = Stream.ReadBool();
          Level.Cook_Poissoned   = Stream.ReadBool();
       end
       
       Level.OnLoad_Common();                                   
       Level.OnFinishLoad();
  end
  
--------------------------------------------------------
-- Name: Level.OnLoaded()
-- Desc:
--------------------------------------------------------
  function Level.OnLoaded()

       -- Install varibles..
       Level.OnLoaded_Common();
                    
       -- Action handlers..
       
       Level.AddActionHandler( Level.AH_DYNAMITE_FUSE );
              
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'SOL1', "OnChangeCloth_Soldier1" );
       Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

       Level.AddActionHandler( Level.AH_ACTOR_KILLED , "RDST" , "OnKillRadist");      
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , "RDST" , "OnKillRadist");

       Level.AddActionHandler( Level.AH_ACTOR_KILLED , "ZO11" , "OnKillConfOfficer");      
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , "ZO11" , "OnKillConfOfficer");
       
       if ( Level.GetDifficulty() == 0 ) then
         Level.AddActionHandler( Level.AH_CHANGE_CLOTH );
         Level.EnableNotifyPickup( Level.FindItem('SOL1'), true );
       end;
                     
       -- Init player..
       local player     = Level.FindActor('PLYR');
       if ( player != nil ) then

          if ( Level.HasPlayerEquipPack() == false ) then

             local machineGun = Level.CreateItem("StenSilencer","Weapon");
             local pistol     = Level.CreateItem("HiStandart","Weapon");
             local knife      = Level.CreateItem("KnifeNR43","Weapon");
 
             Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
             Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
             Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );

             Actor.PutWeaponAmmo( player, "sten");
             Actor.PutWeaponAmmo( player, "sten");
             Actor.PutWeaponAmmo( player, "HiStandart");

             Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
                          
             Actor.PutEmptyPouch( player, "lockpick", "Equipment" );             
             Actor.PutEmptyPouch( player, "chloroform", "Weapon" );            
             
          end;
                    
       end;       

       
       -- Entities..
       
       Level.EnableEquipmentNotify( Level.FindItem('BOX2'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BOX3'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BOX4'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BOX6'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BOX8'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BOX9'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('BX10'), "drop", true );
       
       Level.EnableEquipmentNotify( Level.FindItem('PBX1'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('PBX2'), "drop", true );
       Level.EnableEquipmentNotify( Level.FindItem('PBX1'), "pickup", true );
       Level.EnableEquipmentNotify( Level.FindItem('PBX2'), "pickup", true );       
       
       Level.EnableNotifyPickup( Level.FindItem('POIS'), true );
       
       local boxes={ 'BOX1', 'BOX2', 'BOX3', 'BOX4', 'BOX5', 'BOX6', 'BOX7', 'BOX8', 'BOX9', 'BX10' };
       for b in boxes do
          local item = Level.FindItem( boxes[b] );
          if ( item != nil ) then
             Level.EnableItemPickup( item, false );
          end;       
       end;
      
       -- Keys
       
       Level.AddKey('COOK', 'KITC', MissionText.Key_Kitchen, nil, true );
       Level.AddKey('DOCT', 'DOCC', MissionText.Key_Doctor, nil, true  );
       Level.AddKey('GN03', 'DOCC', MissionText.Key_Doctor, nil, true  );
       Level.AddKey('ZO11', 'SEIF', MissionText.Key_Seif, nil, true  );
       Level.AddKey('GS15', 'SFL2', MissionText.Key_Floor2, nil, true  );
       Level.AddKey('GS16', 'SFL2', MissionText.Key_Floor2, nil, true  );
       Level.AddKey('GS62', 'SEXP', MissionText.Key_SkladExplosive, nil, true );
       Level.AddKey('GW01', 'SHOZ', MissionText.Key_SkladHoz, nil, true  );       
       Level.AddKey('GS26', 'SHOZ', MissionText.Key_SkladHoz, nil, true );
       Level.AddKey('GS54', 'SKF1', MissionText.Key_SkladFloor1, nil, true );
       Level.AddKey('GS45', 'SKF2', MissionText.Key_SkladFloor2, nil, true );
       Level.AddKey('GS52', 'KY15', MissionText.Key_Podval, nil, true );
       Level.AddKey('GS21', 'KY19', MissionText.Key_Radio, nil, true );
       Level.AddKey('GS51', 'KY19', MissionText.Key_Radio, nil, true );
       Level.AddKey('RDST', 'KY19', MissionText.Key_Radio, nil, true );
       Level.AddKey('GS48', 'KY15', MissionText.Key_Radio, nil, true );
                     
       -- Dynamites..
       
       local dynMarks = { 'DYN1' , 'DYN2', 'DYN3' };

       for i = 1, 3, 1 do
         local dynamite = Level.FindWeaponItem( dynMarks[i] );
         if ( dynamite != nil ) then
              Level.EnableItemPickup( dynamite, false );
              Entity.SetHidden( dynamite, true );
         end;
       end;
       
       Level.DynamiteFused={};

       Level.DynamiteFused[1] = false;
       Level.DynamiteFused[2] = false;
       Level.DynamiteFused[3] = false;

       -- Docs..
       
       local doc_1 = Level.FindItem('DOC1');
       if ( doc_1 != nil ) then
         Level.EnableItemPickup( doc_1, false );
         Entity.SetHidden( doc_1, true );       
         Entity.SetName( doc_1, MissionText.Message_DocName );
         Level.SetCustomItemName( doc_1, MissionText.Message_DocTip );
       end;                    
       
       local doc_2 = Level.FindItem('DOC2');
       if ( doc_2 != nil ) then
         Level.EnableItemPickup( doc_2, false );
         Entity.SetHidden( doc_2, true );       
       end;
       
       local pass = Level.FindItem('PASS');
       if ( pass != nil ) then
         Entity.SetName( pass, MissionText.Message_PassNameL );
         Level.SetCustomItemName( pass, MissionText.Message_PassName );       
       end;
       
       Level.DocsInSeif    = false;
       Level.DocsGet       = false;
       Level.TalkingDoc    = false;
       Level.ListenTimer   = 0.0;
       Level.Recieving     = false;
       Level.Telegram      = false;
       
       Level.BoxJobWorker1 = false;
       Level.BoxJobWorker2 = false;
       Level.BoxArea       = false;
       
       Level.BoxComplete={};
       Level.BoxComplete[1] = false;
       Level.BoxComplete[2] = false;
       Level.BoxComplete[3] = false;
       Level.BoxComplete[4] = false;
       Level.BoxComplete[5] = false;
       
       Level.VinePoisoned = false;
       Level.BochPoisoned = false;
       
       Level.VineDrink = {};
       
       Level.VineDrink[1] = false;
       Level.VineDrink[2] = false;
       Level.VineTimer    = 0.0;
                           
       Level.EnableVehicleUse( 'BLT1', false );
       Level.EnableVehicleUse( 'BLT2', false );  
       
       Level.AlertCalled = false;
       Level.LetterState = 0;
       
       Level.UsedBochka      = false;
       Level.GuardDoorOpened = false;
       
       Level.KastrulaPoisoned = false;
       Level.GS06_Poissoned   = false;
       Level.Cook_Poissoned   = false;
       
       Level.SetFormHelp( "Radist", MissionText.Message_ClothInfo[1] );
       Level.SetFormHelp( "Doctor", MissionText.Message_ClothInfo[2] );
       
       -- Init mission tasks..
       Level.InstallInitialTasks();
       
       Level.ChangePlayerStand( 2 );
       
       AI.EnableZone("WorkersSkladAlarmZone", false);
       AI.EnableZone("ConferenceRoom_Info", false);
       
       Level.AddTimer('WIFD', "OnWhereIsThisFuckenCook", 130.0, true );
       Level.AddTimer('INRD', "OnInstallRadistJob", 22.0 * 60.0, false );
      
       -- Set can't open locked door
       NPC.SetFlag( AI.FindNPC('DOCT'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('GW01'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('COOK'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('ZO11'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       
       -- block vision boxes
       AI.AddBlockVisionBox( -134.575, 0.039, -211.333, -126.313, 10.878, -61.333, 'VB 0', 0.8, 0.4);
       AI.AddBlockVisionBox( -134.575, 0.039, 27.384, -126.313, 10.878, 107.384, 'VB 1', 0.8, 0.4);
       AI.AddBlockVisionBox( -127.483, 0.039, 30.400, -17.127, 10.878, 37.400, 'VB 2', 0.8, 0.4);
       AI.AddBlockVisionBox( -65.680,  0.039, -68.888, -14.797, 10.878, -61.888, 'VB 3', 0.8, 0.4);
       AI.AddBlockVisionBox( -127.069, 0.039, -68.888, -86.098, 10.878, -61.888, 'VB 4', 0.8, 0.4);
       AI.AddBlockVisionBox( -126.215, 0.039, -210.017, 122.909, 10.878, -203.017, 'VB 5', 0.8, 0.4);
       AI.AddBlockVisionBox( -324.551, 0.039, 97.335, -316.289, 10.878, 297.335, 'VB 6', 0.8, 0.4);
       AI.AddBlockVisionBox( -385.748, 0.039, 89.953, -315.041, 10.878, 96.953, 'VB 7', 0.8, 0.4);
       AI.AddBlockVisionBox( 275.291,  0.039, -196.394, 283.553, 10.878, 103.606, 'VB 8', 0.8, 0.4);
       AI.AddBlockVisionBox( 203.260,  0.039, -340.742, 402.824, 10.878, -333.742, 'VB 9', 0.8, 0.4);
       AI.AddBlockVisionBox( 406.175,  0.039, -348.375, 417.411, 10.878, -338.375, 'VB10', 0.8, 0.4);
       AI.AddBlockVisionBox( 415.497,  0.039, -357.342, 426.732, 10.878, -347.342, 'VB11', 0.8, 0.4);
       
       Level.SetSoundSystemFadeFactor('VA85', 'VA84', 0.35);
       Level.SetSoundSystemFadeFactor('VA85', 'VA80', 0.65);
       
       Level.LockDoor('DR21', false);
       
       -- Finish load..
       Level.OnFinishLoad();
       Level.OnLoadedDifficulty();
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnLoadedDifficulty()
  -- Desc:
  --------------------------------------------------------
  function Level.OnLoadedDifficulty()
     if (Level.GetDifficulty() == 0) then
        Level.EnableLevelMark('FORM', true);
     end
     
     if (Level.GetDifficulty() <= 1) then
        if (Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == false) then
           Level.EnableLevelMark('POIS', true);
        end
     end
     
     if (Level.GetDifficulty() != 2) then
        Level.LockDoor('DR26', false);
        Level.LockDoor('DR15', false);
        Level.LockDoor('DR19', false);
        Level.LockDoor('DR08', false);
     end
     
     if (Level.GetDifficulty() == 2) then
        AI.SetForm(AI.FindNPC('GS24'), "SS_Soldier");
     end
     
     if (Level.GetDifficulty() == 3) then
        local form_eq = { 'SOL1' };
        for i in form_eq do
           Level.HideItem( form_eq[i] );
        end
     end
  end
    
  AI.DoFile( "scripts:Levels\\Common.lua", false );

  
------------------------------- Level logic ----------------------------------

--------------------------------------------------------
-- Name: Level.InstallInitialTasks()
-- Desc:
--------------------------------------------------------
  function Level.InstallInitialTasks()

      Level.StartTask(MissionText.Task_CryptLetter, 'LETR', "Levels\\PGift\\getdoc_task.txt"    , true  , 2  );            
      Level.StartTask(MissionText.Task_Explosion  , 'EXPL', "Levels\\PGift\\explosion_task.txt" , true  , 0  );
      Level.StartTask(MissionText.Task_Agent      , 'AGEN', "Levels\\PGift\\meetagent_task.txt" , false , 0  );

  end

--------------------------------------------------------
-- Name: Level.RunLogic()
-- Desc:
--------------------------------------------------------
  function Level.RunLogic(completed)
  
     if ( Level.LogicCheckTask('LETR', completed) == true and
          Level.LogicCheckTask('EXPL', completed) == true ) then
          
        if (Level.IsMissionTaskCompleted('AGEN') == false) then
           Level.RemoveMissionTask('AGEN');
        end
        
        Level.StartTask(MissionText.Task_Leave      , 'LEAV', "Levels\\PGift\\leave_task.txt" ,     true  , 0  );        
     end
  
     return false;
  end

--------------------------------------------------------
-- Name: Level.IsMissionTaskOver()
-- Desc:
--------------------------------------------------------
  function Level.IsMissionTaskOver(taskId)
  
     return Level.IsMissionTaskCompleted(taskId);
     
  end

--------------------------------------------------------
-- Name: Level.StartTask()
-- Desc:
--------------------------------------------------------
  function Level.StartTask(text, taskId, taskDscr, isImportant, floor )
     if (Level.HasMissionTask(taskId) != false) then
        return; 
     end

     Level.AddMissionTask( text, taskId, taskDscr, floor, isImportant );

     if ( taskId == 'EXPL' ) then

       local dynMarks = { 'DYN1' , 'DYN2', 'DYN3' };

       for i = 1, 3, 1 do
         local dynamite = Level.FindWeaponItem( dynMarks[i] );
         if ( dynamite != nil ) then       
              Entity.SetHidden( dynamite, false );
         end;
       end;
       
       
     elseif (taskId == 'LEAV') then
     
        Level.EnableLevelMark('LEAV', true);
       
     end;  
  end

--------------------------------------------------------
-- Name: Level.FinishTask()
-- Desc:
--------------------------------------------------------
  function Level.FinishTask(taskId, completed)
     if (Level.HasMissionTask(taskId) == false or
         Level.IsMissionTaskCompleted(taskId) != false) then
        return; 
     end
     
     if (taskId == 'AGEN') then

        -- Enable level marks:
        
        if (Level.IsMissionTaskCompleted('LETR') == false) then
           Level.UpdateLetterState( Level.LetterState );
           
           if (Level.DocsInSeif == false) then
              Level.EnableLevelMark('LEYE', true);
           end
        end
        
        if (Level.IsMissionTaskCompleted('EXPL') == false) then
           -- Enable marks...
           -- Check installed mines...
           
           for i = 1, 3 do
              if (Level.DynamiteFused[i] == false) then
                 Level.EnableLevelMark("DYN" .. tostring(i), true);
              end
           end
           
        end
        
        if (Level.GetDifficulty() != 2) then
           Level.EnableLevelMark('SECR', true );
        end
        
        -- disable task mark...
        Level.EnableLevelMark('INFO', false);
        
     end
     
     if (taskId == 'EXPL') then
        Level.EnableLevelMark('DYN1', false);
        Level.EnableLevelMark('DYN2', false);
        Level.EnableLevelMark('DYN3', false);
        
        Level.EnableLevelMark('SECR', false );
     end
     
     if (taskId == 'LETR') then
        Level.UpdateLetterState( -1 );
        
        Level.EnableLevelMark('LEYE', false);
        
     elseif (taskId == 'LEAV') then
     
        Level.EnableLevelMark('LEAV', false);
        
     end
          
     if (completed != false) then
        Level.RunLogic(taskId);
        Level.CompleteMissionTask(taskId);

        Level.PlayMenuSound("task_finish");
     else
        Level.RemoveMissionTask(taskId);
        Level.RunLogic(nil);
     end
  end

--------------------------------------------------------
-- Name: Level.OnKillRadist()
-- Desc:
--------------------------------------------------------
function Level.OnKillRadist()

    if ( Level.Telegram == false ) then
        Level.FailedMission( MissionText.Message_FailRadist, 15.0 );
    end;   

end;

--------------------------------------------------------
-- Name: Level.OnSetupDynamite()
-- Desc:
--------------------------------------------------------
function Level.OnSetupDynamite()
     
     if ( Level.DynamiteTrigger != nil ) then

        local dynNumber = Trigger.GetUniqueIdAsNumber( Level.DynamiteTrigger );

        if ( dynNumber == nil or Level.DynamiteFused[dynNumber] != false ) then
           Level.UnregisterTrigger( Level.DynamiteTrigger );

           Level.DynamiteTrigger = nil;
           Level.RemovePlayerAction("SDYN");

           return false,false;
        end;

        Level.EnableLevelMark("DYN" .. tostring(dynNumber), false);
        
        return true,false;
     else

        return true,true;

     end;

end;

--------------------------------------------------------
-- Name: Level.UpdateLetterState()
-- Desc:
--------------------------------------------------------
function Level.UpdateLetterState( state )
   Level.LetterState = state;
   
   Level.EnableLevelMark('LTR0', false);
   Level.EnableLevelMark('LTR1', false);
   Level.EnableLevelMark('LTR2', false);
   
   local radist = Level.FindActor('RDST');
   local officer = Level.FindActor('ZO11');
   
   Actor.MarkAsTarget( radist, false );
   Actor.MarkAsTarget( officer, false );
   
   if (Level.IsMissionTaskCompleted('LETR')) then
      return;
   end
      
   if (Level.LetterState >= 0 and Level.LetterState < 3) then
      Level.EnableLevelMark("LTR" .. tostring(Level.LetterState), true);
   else
      
      if (Level.LetterState == 3) then
         Actor.MarkAsTarget( radist, true );
      elseif (Level.LetterState == 4) then
         Actor.MarkAsTarget( officer, true );
      end
      
   end;

end

--------------------------------------------------------
-- Name: Level.OnDynamiteFused()
-- Desc:
--------------------------------------------------------
function Level.OnDynamiteFused( dynamite )
         
  if ( Level.IsMissionFailed() != false ) then
     return;
  end;

  if ( Level.DynamiteTrigger == nil ) then
    return;
  end;
  
  Level.EnableItemPickup( dynamite, false );

  local dynNumber = Trigger.GetUniqueIdAsNumber( Level.DynamiteTrigger );

  Level.DynamiteFused[dynNumber] = true;

  local completed = true;

  for i = 1, 3, 1 do
    if ( Level.DynamiteFused[i] == false ) then
       completed = false;
       break;
    end;
  end
     
  local mark = Trigger.GetScriptCmd( Level.DynamiteTrigger );

  Level.EnableLevelMark( mark , false );
  Level.AddLargeMessage( MissionText.Message_DynSetuped, 10.0, 255, 255, 255 );

  local dynamiteMark = Level.FindWeaponItem( mark );
  if ( dynamiteMark != nil ) then
      Level.DeleteItem( dynamiteMark ); 
  end;

  Level.UnregisterTrigger( Level.DynamiteTrigger );
  Level.DynamiteTrigger = nil;
  Level.RemovePlayerAction("SDYN");
  
  if (Level.DynamiteFused[2] == true and
      Level.DynamiteFused[3] == true) then
      
      Level.EnableLevelMark('SECR', false );
      
  end
  
  if ( completed == true ) then
      Level.FinishTask('EXPL', true );     
  end;
  
end;

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Soldier1()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Soldier1()
    Level.OnChangeCloth_Default(0);
end

--------------------------------------------------------
-- Name: Level.OnGuardOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.OnGuardOpenDoor()
   Level.RunAnchorJob2(AI.FindNPC('GS21'), 'AN71', 'A188', true);
end

--------------------------------------------------------
-- Name: Level.CanGuardOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.CanGuardOpenDoor()
   if (Level.GuardDoorOpened != false) then
      return false;
   end
   
   if (Level.GetDifficulty() != 2) then
      return false;
   end
   
   local npc = AI.FindNPC('GS21');
   if (AI.IsDefault(npc) == false) then
      return false;
   end
   
   if (AI.HasPlayerInfo(npc, "see") == false) then
      return false;
   end
   
   if (AI.GetPlayerForm() != "Doctor") then
      return false;
   end
   
   if (Level.Telegram == true) then
      return false;
   end
   
   return true;
end

--------------------------------------------------------
-- Name: Level.CanGuardOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor172()
    Level.GuardDoorOpened = true;
end

--------------------------------------------------------
-- Name: Level.OnEnterTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )
          
     if ( trgname == "OfficerGoKiss" ) then
     
        local frau = AI.FindNPC('GF02');
        local off  = AI.FindNPC('GO03');
        
        if ( AI.IsDefault( frau ) == true and 
             AI.IsDefault( off ) == true ) then
        
             Level.InstallDpc( "AI.SetJob( AI.FindNPC('GF02'), 'kiss' )", 10.0 );
             Level.InstallDpc( "AI.SetJob( AI.FindNPC('GO03'), 'kiss' )", 15.0 );
             
             Level.UnregisterTrigger( Level.FindTrigger( trgname ) );        
        end;
        
     elseif (trgname == "ListenTrigger") then
        
        Level.AddTimer( 'LITM', "OnUpdateListenTimer", 1.0, true );
        
     elseif ( trgname == "RadistTelegram_1" or trgname == "RadistTelegram_2" ) then
     
        if ( Level.Telegram == false ) then
          
          Level.StartRecieveTelegram();
          
          Level.GuardDoorOpened = true;
          Level.LockDoor('DR19', false);
          
        end;        
        
     elseif (trgname == "CheckDoctorTrigger") then
        
        Level.InstallSingleSmartDpc( "Level.OnGuardOpenDoor()", 1.0, "Level.CanGuardOpenDoor()");
     
     elseif ( trgname == "SecretMark" ) then
     
          Level.EnableLevelMark('SECR', false );
          
     elseif ( trgname == "DoctorMessage_1" or trgname == "DoctorMessage_2" ) then
     
       if ( Level.Recieving == false ) then
       
          local npc1 = AI.FindNPC('GS51');
          local npc2 = AI.FindNPC('GS21');
          
          if ( npc1 != nil and npc2 != nil and AI.IsDefault( npc1 ) == true and AI.IsDefault( npc2 ) == true ) then
          
             if ( trgname == "DoctorMessage_1" ) then
               Level.BeginCutScene('doct', 'Levels\\PGift\\doctor_1.scm', MissionText.Message_DoctorBeSoon, 5.5, { 3, 20.0, 25.0, 45.0, 255 } );
             else
               Level.BeginCutScene('doct', 'Levels\\PGift\\doctor_2.scm', MissionText.Message_DoctorBeSoon, 5.5, { 1, 0.0, 50.0, 70.0, 255 } );
             end;
             
             Level.InstallDpc( "AI.HandleVoice( AI.FindNPC('GS21'), '%Script03_Sound' )", 0.1 );
             
             Level.InstallDpc( "AI.SetJob( AI.FindNPC('GS51'), 'wait')", 5.5 );
             Level.InstallDpc( "AI.SetJob( AI.FindNPC('GS21'), 'default')", 5.5 );
             Level.InstallDpc( "Level.RunAnchorJob( AI.FindNPC('GS51'), 'A189', true )", 6.0 );
             
             Level.UnregisterTrigger( Level.FindTrigger( "DoctorMessage_1" ) );
             Level.UnregisterTrigger( Level.FindTrigger( "DoctorMessage_2" ) );
             
          end;
       
       else
       
          Level.UnregisterTrigger( Level.FindTrigger( "DoctorMessage_1" ) );
          Level.UnregisterTrigger( Level.FindTrigger( "DoctorMessage_2" ) );       
          
       end;
     
     elseif ( trgname == "StartBoxJobs" ) then
     
         if ( Level.BoxJobWorker1 == false ) then
                  
            local worker_1 = AI.FindNPC('GW04');
            if ( worker_1 != nil and AI.IsDefault( worker_1 ) == true ) then               
              if ( Level.BoxComplete[1] == false ) then
                  AI.SetJob( worker_1, "box1" );
              elseif ( Level.BoxComplete[2] == false ) then
                  AI.SetJob( worker_1, "box2" );              
              elseif ( Level.BoxComplete[3] == false ) then
                  AI.SetJob( worker_1, "box3" );              
              end;
            end;
            
            Level.BoxJobWorker1 = true;
            
        end;
            
        if ( Level.BoxJobWorker2 == false ) then
        
            local worker_2 = AI.FindNPC('GW05');
            if ( worker_2 != nil and AI.IsDefault( worker_2 ) == true ) then
              if ( Level.BoxComplete[4] == false ) then
                 Level.InstallDpc( "AI.SetJob( AI.FindNPC('GW05'), 'box1' )", 3.0 );
              elseif ( Level.BoxComplete[5] == false ) then              
                 Level.InstallDpc( "AI.SetJob( AI.FindNPC('GW05'), 'box2' )", 3.0 );              
              end;
            end;
            
            Level.BoxJobWorker2 = true;
                     
        end;
         
        Level.BoxArea = true;
        
     elseif (trgname == "CheckCookFormTrigger") then 
        
        local form = AI.GetPlayerForm();
        if (form == "Cook") then
           Level.RemoveTimer('WIFD');
        end
        
     elseif (trgname == "RemoveCheckCookTimerTrigger") then
     
        Level.RemoveTimer('WIFD');
     
     elseif (trgname == "LeaveTrigger") then
     
        if (Level.IsMissionTaskCompleted('EXPL') == true and
            Level.IsMissionTaskCompleted('LETR') == true) then
        
           Level.FinishTask('LEAV');
           
        end
     
     end;
     
     print("Level.OnEnterTriggerArea " .. trgname);
     
  end
  
--------------------------------------------------------
-- Name: Level.OnLeaveTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )
     print("Level.OnLeaveTriggerArea " .. trgname);

     if ( trgname == "StartBoxJobs" ) then

        Level.BoxArea = false;
        
     elseif (trgname == "ListenTrigger") then
        
        Level.RemoveTimer( 'LITM' );

     elseif (trgname == "RestoreZonesTrigger") then
        -- restore zones...

        Level.RestoreZones(-1);
        
     elseif (trgname == "CheckDoctorTrigger") then
        
        Level.RemoveDpc( "Level.OnGuardOpenDoor()" );     

     end;
     
  end


  --------------------------------------------------------
  -- Name: Level.PlayerHasPass()
  -- Desc:
  --------------------------------------------------------
  function Level.PlayerHasPass()
     return Actor.HasCustomEquipment(Level.GetPlayer(), 'PASS') == true;
  end

--------------------------------------------------------
-- Name: Level.OnExecutePlayerAction()
-- Desc:
--------------------------------------------------------
  function Level.OnExecutePlayerAction(id, completeUnregisterTrigger ) 
  
     if (Level.CanAddPlayerAction(id) == nil) then
        return false;
     end

     local onFinishUnregister = false;
       
     if ( id == "VinePoison") then

        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'VINE') == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
     elseif ( id == "PoissonKastrulaTrigger" ) then        

        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'KAST') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
                
     elseif ( id == "PushBochka" ) then
                     
        if ( Level.StartPlayerCustomAnim("Custom_WoodBar", 2, true, true, 'PBCH', false ) == false ) then
           return false;
        end;
        
        -- AI.StartDecamouflage( 50.0, 100.0, 4.0 );
                             
     elseif ( id == "BochPoison" ) then
     
        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'BPOS') == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 200.0, 4.0 );
                
     elseif ( id == "OpenSecretDoor" ) then
     
        Level.AddWorldObjectPhysicsForce( Level.FindWorldObject('HDOR'), -4000.0, 1000.0, 0.0 );
        onFinishUnregister = true;
        
     elseif ( id == "ReadCastleInfoTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_SearchBox", 2, true, true, 'RCIA') == false ) then
           return false;        
        end;
        
     end;
     
     if ( onFinishUnregister == false ) then
     
        Level.FinishAnimTrigger    = id;
        Level.FinishAnimUnregister = completeUnregisterTrigger;
     
     else
     
        Level.FinishAnimTrigger    = "";
        
        if ( completeUnregisterTrigger == true ) then
        
            local t = Level.FindTrigger( id );
            if ( t != nil ) then            
                Level.UnregisterTrigger( t );            
            end;
        end;
     end;
     
     return true;
     
  end

--------------------------------------------------------
-- Name: Level.CanAddPlayerAction()
-- Desc:
--------------------------------------------------------
  function Level.CanAddPlayerAction(id)

     -- playing custom animation..
     
     if ( Level.FinishAnimTrigger != "" ) then
        return nil;     
     end;
     
     if ( id == "VinePoison" ) then
         if ( Level.VinePoisoned == false and Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == true ) then         
            return MissionText.Message_VinePoison;
         else
            return nil;
         end;
         
     elseif ( id == "PoissonKastrulaTrigger" ) then

         if (Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == true and 
             Level.KastrulaPoisoned == false) then
            return MissionText.Message_KastrulaPoison;
         end

     elseif ( id == "BochPoison" ) then
         if ( Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == true ) then         
            return MissionText.Message_VinePoison;
         else
            return nil;
         end;     
     elseif ( id == "PushBochka" ) then
         return MissionText.Message_PushVineBox;     
     elseif ( id == "OpenSecretDoor" ) then
         return MissionText.Message_MoveDoska;     
     elseif ( id == "ReadCastleInfoTrigger") then
         
         if ( Level.IsMissionTaskCompleted('AGEN') == false) then
            return MissionText.Message_ReadInfo;
         end
         
     end;
          
     return nil;
  end

  --------------------------------------------------------
  -- Name: Level.OnAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnAlert( alertGroupId )
     AI.Debug(npc, "Level.OnAlert", tostring(alertGroupId));
               
     -- Alert groups:
     Level.AddSmallMessage( MissionText.Message_Alarm, 10.0, 255, 0, 0);
     AI.AddAlertValue(2); 
     
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);

     for i = 0, 9 do
        AI.SetLocalAlert( i, true, 10.0 * 60.0 );
     end

     if (Level.AlertCalled == false) then
        AI.SetJob("alive", "alert");

        Level.RunWeaponTowerScript();
        Level.RunSleepSoldierScript();
        
        Level.AlertCalled = true;
     end

     AI.OnPlayerEnterZone("AlertZone", 'ALZN');
     
     AI.SafeFind(AI.FindNPC('GZ03'), true);
     AI.SafeFind(AI.FindNPC('GZ01'), true);
     AI.SafeFind(AI.FindNPC('GS52'), true);
     AI.SafeFind(AI.FindNPC('GS53'), true);
  end


  --------------------------------------------------------
  -- Name: Level.OnFinishAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level.OnFinishAlert", tostring(alertGroupId));
     
     AI.SetLocalAlert( alertGroupId, false );
     
     for i = 0, 9, 1 do
        if (AI.IsLocalAlert( i ) == true) then
           return;
        end
     end
     
     for i = 0, 9 do
        AI.SetLocalAlert( i, false );
     end
     
     Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
     
     AI.OnPlayerLeaveZone("AlertZone", 'ALZN');
  end

  --------------------------------------------------------
  -- Name: Level.RunWeaponTowerScript()
  -- Desc:
  --------------------------------------------------------
  function Level.RunWeaponTowerScript()
     local actors  = { 'GS44', 'GS43', 'GS37', 'GS38', 'GS39', 'GS40', 'GS41' };
     local anchors = { 'A163', 'A164', 'A165', 'A160', 'A161', 'A162', 'A166' };
     for i in actors do
       Level.RunAnchorJob_Run( AI.FindNPC(actors[i]), anchors[i], true );
     end
  end

  --------------------------------------------------------
  -- Name: Level.RunSleepSoldierScript()
  -- Desc:
  --------------------------------------------------------
  function Level.RunSleepSoldierScript()
     local actors  = { 'GS05', 'GS01', 'GS04', 'GS03', 'GS02', 'GS06' };
     local anchors = { 'A167', 'A168', 'A169', 'A170', 'A171', 'A172' };
     for i in actors do
       Level.RunAnchorJob_Run( AI.FindNPC(actors[i]), anchors[i], true );
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnStopMove()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStopMove( actorId , npc )

     if (npc == nil) then
        print("Bad npc " .. tostring(actorId));
        return;
     end

     local npcForm    = AI.GetForm( npc );
     local zone       = AI.GetPrimaryPlayerZone( npc );
     local playerForm = AI.GetPlayerForm();
     
     if (zone == nil) then 
        return;
     end
     
     if (zone == "EastSklad" or
         zone == "EastSkladEnter") then
         
         Level.AddSmallMessage( MissionText.Message_StopMove_EastSklad, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
         
     elseif (zone == "SecondFloor") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_SecondFloor, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_13");
         
     elseif (zone == "FirstFloorSklad") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_FirstFloorSklad, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
     
     elseif (zone == "DoctorRoom") then
     
         if (npcForm == "Doctor") then
             Level.AddSmallMessage( MissionText.Message_StopMove_DoctorRoom_Doctor, 5.0, 175, 175, 175 );
             AI.HandleVoice(npc, "male_ger_stopmove_stopmove_14");
         else
             Level.AddSmallMessage( MissionText.Message_StopMove_DoctorRoom, 5.0, 175, 175, 175 );
             AI.HandleVoice(npc, "male_ger_stopmove_stopmove_05");
         end
         
     elseif (zone == "OfficerKitchen") then

         if (random() < 0.6) then
            Level.AddSmallMessage( MissionText.Message_StopMove_OfficerKitchen_1, 5.0, 175, 175, 175 );
            AI.HandleVoice(npc, "@v_stop_move");
         else
            Level.AddSmallMessage( MissionText.Message_StopMove_OfficerKitchen_2, 5.0, 175, 175, 175 );
            AI.HandleVoice(npc, "@v_stop_move");
         end
     
     elseif (zone == "RadistZone") then
     
         if (random() < 0.7) then
            Level.AddSmallMessage( MissionText.Message_StopMove_RadistZone_1, 5.0, 175, 175, 175 );
            AI.HandleVoice(npc, "male_ger_stopmove_stopmove_05");
         else
            Level.AddSmallMessage( MissionText.Message_StopMove_RadistZone_2, 5.0, 175, 175, 175 );
            AI.HandleVoice(npc, "~3male_ger_script_script_30");          
         end
     
     elseif (zone == "RadistZoneEnter") then
         
         Level.AddSmallMessage( MissionText.Message_StopMove_RadistZoneEnter, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "@v_stop_move");
         
     elseif (zone == "Billiard" ) then
              
         Level.AddSmallMessage( MissionText.Message_StopMove_Billiard, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_05");

     elseif (zone == "ConferenceRoom" or 
             zone == "ConferenceRoom_Info") then
              
         Level.AddSmallMessage( MissionText.Message_StopMove_ConferenceRoom, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_03");
         
     elseif (zone == "Basement") then
         
         if (random() < 0.5) then
            Level.AddSmallMessage( MissionText.Message_StopMove_Basement_1, 5.0, 175, 175, 175 );
         else
            Level.AddSmallMessage( MissionText.Message_StopMove_Basement_2, 5.0, 175, 175, 175 );
         end
         
         AI.HandleVoice(npc, "@v_stop_move");
         
     elseif (zone == "GuardsRoom" or 
             zone == "GuardsRoomNear") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_GuardsRoom, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_15");
         
     elseif (zone == "SecondFloorSklad") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_SecondFloorSklad, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
         
     elseif (zone == "WorkersSklad" or zone == "WorkersSkladEnter") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_WorkersSklad, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
         
         if (zone == "WorkersSkladEnter") then
            AI.EnableZone('WorkersSkladAlarmZone', true);

            -- Level.RemoveTimer('WSAZ'); ?
            Level.AddTimer('WSAZ', "OnDisableAlarmZone", 10.0, false );   
         end
         
     elseif (zone == "WorkersSkladEnterBox") then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_WorkersSkladEnterBox, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "male_ger_script_script_18");
         
     elseif ( zone == "CookRoom" ) then
     
         Level.AddSmallMessage( MissionText.Message_StopMove_CookRoom, 5.0, 175, 175, 175 );
         AI.HandleVoice(npc, "@v_stop_move");
         
     end
     
     if (playerForm != "Worker" and Level.PlayerHasPass() == true) then
     
        if (zone == "WorkersSklad" or 
            zone == "WorkersSkladEnter" or
            zone == "WorkersSkladEnterBox") then
           
            if (Level.HasPlayerAction('SHP1') == false) then
               --Level.AddPlayerAction('SHP1', MissionText.Message_ShowDocs, "Level", false );
               Level.SafeAddLevelPlayerAction('SHP1', MissionText.Message_ShowDocs);
               Level.AddTimer('CHSP', "OnCheckShowPass", 1.0, true );
            end
        end
        
        if (zone == "SecondFloorSklad" or
            zone == "GuardRoomNear") then

            if (Level.HasPlayerAction('SHP2') == false) then
                --Level.AddPlayerAction('SHP2', MissionText.Message_ShowDocs, "Level", false );
                Level.SafeAddLevelPlayerAction('SHP2', MissionText.Message_ShowDocs);
                Level.AddTimer('CHSP', "OnCheckShowPass", 1.0, true );
            end
        end

     end

     AI.HandleVoice( npc, AI.VOICE_STOP_MOVE );
  end

  --------------------------------------------------------
  -- Name: Level.OnCheckShowDocs()
  -- Desc:
  --------------------------------------------------------
  function Level.OnCheckShowPass()
     local npc = AI.FindNearestNpc(AI.TASK_SHOW_STOP_MOVE, "");

     if (npc != nil) then
        local distance = Level.BalanceDistance( Level.GetPlayerPosition(), Level.GetNpcPosition(npc) );
        
        if (distance < 100.0) then
           return;
        end
     end
     
     Level.SafeRemoveLevelPlayerAction('SHP1');
     Level.SafeRemoveLevelPlayerAction('SHP2');
     Level.RemoveTimer('CHSP');
  end

  --------------------------------------------------------
  -- Name: Level:OnPlayerAction()
  -- Desc:
  --------------------------------------------------------
  function Level:OnPlayerAction(id)
     
     if (id == 'SHP1' or id == 'SHP2') then
     
        -- get show stop move bot...
        local npc = AI.FindNearestNpc(AI.TASK_SHOW_STOP_MOVE, "");
        if (npc == nil) then
           --Level.RemovePlayerAction(id);
           Level.SafeRemoveLevelPlayerAction(id);
           Level.RemoveTimer('CHSP');
           return;
        end     

        Level.SafeRemoveLevelPlayerAction(id);
        --Level.RemovePlayerAction(id);
        
        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", "Level.OnReadDocs()" );

        AI.RunScriptTask(npc, "scripts:job\\ReadDocsTask.lua", AI.LOGIC_DEFAULT, properties);
        
     
        if (id == 'SHP1') then
           AI.EnableZone("WorkersSklad",          false);
           AI.EnableZone("WorkersSkladEnter",     false);
           AI.EnableZone("WorkersSkladEnterBox",  false);
           AI.EnableZone("WorkersSkladAlarmZone", false);
        
           Level.InstallDpc("Level.RestoreZones(1)", 3.0 * 60.0);
        
        elseif (id == 'SHP2') then
           AI.EnableZone("SecondFloorSklad", false);
           AI.EnableZone("GuardRoomNear",    false);
        
           Level.InstallDpc("Level.RestoreZones(2)", 3.0 * 60.0);
        end

        Level.StartPlayerCustomAnim("Custom_PassticketShow", 0, true, true);
        Level.RemoveTimer('CHSP');
     end     
  end

  --------------------------------------------------------
  -- Name: Level.GetSearchMan()
  -- Desc:
  --------------------------------------------------------
  function Level.GetReadDocsMan()
     local job = AI.GetScriptJob("TASK_SCRIPT_READ_DOCS");
     if (job != nil) then
        return Job.GetNPC( job );
     end
     
     return nil; 
  end

  --------------------------------------------------------
  -- Name: Level.OnReadDocs()
  -- Desc:
  --------------------------------------------------------
  function Level.OnReadDocs()
     Level.AddSmallMessage( MissionText.Message_StopMove_DocsClear, 5.0, 175, 175, 175 );
     AI.HandleVoice( Level.GetReadDocsMan(), "~3male_ger_script_script_42");
  end

  --------------------------------------------------------
  -- Name: Level.RestoreZones()
  -- Desc:
  --------------------------------------------------------
  function Level.RestoreZones(floor)
     if (floor == 1) then
        AI.EnableZone("WorkersSklad",         true);
        AI.EnableZone("WorkersSkladEnter",    true);
        AI.EnableZone("WorkersSkladEnterBox", true);
        return;
     elseif (floor == 2) then
        AI.EnableZone("SecondFloorSklad", true);
        AI.EnableZone("GuardRoomNear",    true);
        return;
     end;

     AI.EnableZone("WorkersSklad",         true);
     AI.EnableZone("WorkersSkladEnter",    true);
     AI.EnableZone("WorkersSkladEnterBox", true);
     AI.EnableZone("SecondFloorSklad", true);
     AI.EnableZone("GuardRoomNear",    true);     
  end

  --------------------------------------------------------
  -- Name: Level.OnDisableAlarmZone()
  -- Desc:
  --------------------------------------------------------
  function Level.OnDisableAlarmZone()
     AI.EnableZone("WorkersSkladAlarmZone", false);
  end

  --------------------------------------------------------
  -- Name: Level.OnStartPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStartPlayerCustomAnim( animId )
  
      if ( animId == 'PBCH' ) then      
        Level.UsedBochka = true;
        Level.EnableLevelMark('BOCH', false);
        Level.InstallDpc("Level.OnBochkaScript()", 0.45 );        
        Level.InstallDpc("Level.OnBochkaCheckScript()", 1.25 );
      elseif ( animId == 'RCIA' ) then          
        Level.PlayCustomAnimSound( 'BookShelf' );
      end;
     
  end;
    
  --------------------------------------------------------
  -- Name: Level.OnFinishPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishPlayerCustomAnim(animName, animUniqueId, boolBreaked )
 
     if ( boolBreaked == true ) then
        Level.OnBreakActionTrigger();
        AI.StopDecamouflage();
        Level.StopAllCustomAnimSounds();

        return;
     end;
     
     if ( animUniqueId == 'VINE' ) then
       
        Level.VinePoisoned = true;
        
     elseif (animUniqueId == 'KAST') then
     
        Level.KastrulaPoisoned = true;
     
     elseif ( animUniqueId == 'BPOS' ) then
     
        Level.BochPoisoned = true;
        Level.EnableLevelMark('POIW', false);
        
     elseif ( animUniqueId == 'RCIA' ) then
      
        Level.FinishTask( 'AGEN', true );
             
     end;
               
     if ( Level.FinishAnimTrigger != "" and Level.FinishAnimUnregister == true ) then
     
         local t = Level.FindTrigger( Level.FinishAnimTrigger );
         if ( t != nil ) then
            Level.UnregisterTrigger( t );         
         end;
            
     end;
     
     Level.FinishAnimTrigger    = "";
     Level.FinishAnimUnregister = false;
     
     Level.PlayerAnimSounds     = {};
       
  end
 

  --------------------------------------------------------
  -- Name: Level.OnFinishCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishCutScene( cutscene, boolBreaked, cutsceneName )
      CutScene.Activate(nil);
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnInventoryChanged()
  -- Desc:
  --------------------------------------------------------
  function Level.OnInventoryChanged()
          
     local player = Level.GetPlayer();     
     
     if ( Actor.HasCustomEquipment( player, 'CITX' ) == true ) then

        Level.DocsGet = true;
        Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );
        Level.FinishTask('LETR', true );
        
        if (Level.LetterState == 1) then
           AI.StartDecamouflage( 50.0, 100.0, 2.0 );
        end
     
     end;
     
     if (Level.PlayerHasPass() == true) then
        Level.EnableLevelMark('PASS', false);
     end
  end
  
--------------------- Music and other funny stuff ----------------------------

----------------------- Bot idles and ai scripts -----------------------------

--------------------------------------------------------
-- Name: Level.OnDrinkVine()
-- Desc:
--------------------------------------------------------
function Level.CheckAccidentState(id)
   return false;
end

--------------------------------------------------------
-- Name: Level.OnAccident()
-- Desc:
--------------------------------------------------------
function Level.OnAccident(id)
end

---------------------------------- Callbacks ---------------------------------

--------------------------------------------------------
-- Name: Level.CanGetDocuments()
-- Desc:
--------------------------------------------------------
function Level.CanGetDocuments( docId )

    if ( docId == 'SEIF' ) then    
      if ( Level.DocsInSeif == false or Level.DocsGet == true ) then
          return nil;
      else
          return MissionText.Message_GetDocsFromSeif;
      end;
    end;
    
    return nil;
    
end;

--------------------------------------------------------
-- Name: Level.OnGetDocuments()
-- Desc:
--------------------------------------------------------
function Level.OnGetDocuments( docId )
      
   if ( docId == 'SEIF' ) then

       local player = Level.GetPlayer();
       if ( player != nil ) then
         local item = Actor.PutEmptyPouch( player, "Custom:GermanDoc", "Equipment" );
         if ( item != nil ) then
           Entity.SetUniqueID( item, 'CITX' );           
           Entity.SetName( item, MissionText.Message_DocName );
           Level.SetCustomItemName( item, MissionText.Message_DocTip );
           
           Level.OnInventoryChanged();
         else
           Level.FinishTask( 'LETR', true );         
         end;
         
         Level.DocsInSeif = false;
       end   
   end;
      
   return true;
   
end;

--------------------------------------------------------
-- Name: Level.OnOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.OnOpenDoor( door )
     
   if ( Level.GetDocsTrigger != nil and door == 'SEIF' ) then
   
      AI.StartDecamouflage( 50.0, 70.0, 2.0 );
      Level.GetDocsTrigger:OnEnterArea();
      
      return;
      
   end;

end

--------------------------------------------------------
-- Name: Level.OnCloseDoor()
-- Desc:
--------------------------------------------------------
function Level.OnCloseDoor( door )

   if ( door == 'SEIF' ) then

      Level.RemovePlayerAction('SEIF');
      return;
      
   end;
end

--------------------------------------------------------
-- Name: Level.OnSeeCustomObject()
-- Desc:
--------------------------------------------------------
function Level.OnSeeCustomObject(npc, netId)
   AI.Debug(npc, "Level.OnSeeCustomObject", tostring(netId));
end
  
--------------------------------------------------------
-- Name: Level.NeedEnableMark()
-- Desc:
--------------------------------------------------------
function Level.NeedEnableMark(markId)
   if (markId == 'BOCH') then
      return (Level.GetDifficulty() == 0) and (Level.UsedBochka == false);
   elseif (markId == 'POIW') then
      return (Level.GetDifficulty() == 0) and (Level.BochPoisoned == false);
   elseif (markId == 'PASS') then
      return (Level.GetDifficulty() == 0) and (Level.PlayerHasPass() == false);
   end
   
   return true;
end

-- New methods...

--------------------------------------------------------
-- Name: Level.StartLookMapScript()
-- Desc:
--------------------------------------------------------
function Level.StartLookMapScript()
   AI.SetJob(AI.FindNPC('ZO11'), "LookMap");
   Level.InstallDpc("Level.StartLookMapScriptDpc()", 6.0);
   
   -- TODO set new timer...
   Level.InstallDpc("Level.StartDinner()", 300.0);   
end

--------------------------------------------------------
-- Name: Level.OnRadistHiGitler()
-- Desc:
--------------------------------------------------------
function Level.OnRadistHiGitler()
   Level.RunAnchorJob(AI.FindNPC('ZO11'), 'ZN49', false);
   Level.InstallDpc("AI.HandleVoice(AI.FindNPC('RDST'), '%Script02_Sound')", 2.0);
end

--------------------------------------------------------
-- Name: Level.OnPutCiphertext()
-- Desc:
--------------------------------------------------------
function Level.OnPutCiphertext()
   if (AI.FindNPC('ZO11') == nil) then
      return;
   end
      
   local radist = Level.FindActor('RDST');
   if ( radist != nil ) then
      Actor.RemoveEquipment(radist,'CITX');
      Level.InstallDpc("AI.SetJob(AI.FindNPC('RDST'), 'wait')" , 2.0 );
   end;

   local doc_1 = Level.FindItem('DOC1');
   if ( doc_1 != nil ) then
   
       Level.EnableItemPickup( doc_1, true );
       Level.EnableNotifyPickup( doc_1, true );
       Entity.SetHidden( doc_1, false );
       Entity.SetUniqueID( doc_1, 'CITX' );
   
   end;
   
   Level.InstallDpc("AI.SetJob(AI.FindNPC('ZO11'), 'Reading')", 2.2);
   Level.InstallDpc("Level.StartLookMapScript()", 6.0);
   
   Level.UpdateLetterState( 1 );
end

--------------------------------------------------------
-- Name: Level.ChangeConfCamera()
-- Desc:
--------------------------------------------------------
function Level.ChangeConfCamera()
   Level.ChangeCamCutScene( 'conf', 'Levels\\PGift\\conf_cam2.scm',  { 3, 10.0, 60.0, 110.0, 255 }  );
end

--------------------------------------------------------
-- Name: Level.StartConfCutScene()
-- Desc:
--------------------------------------------------------
function Level.StartConfCutScene()
    if (AI.IsDefault(AI.FindNPC('ZO11')) == true) then
       Level.BeginCutScene('conf', 'Levels\\PGift\\conf_cam1.scm', "", 30.5 , { 1, 0.0, 200.0, 500.0, 255 } );
       Level.InstallDpc("Level.ChangeConfCamera()", 20.5);
    end
end

--------------------------------------------------------
-- Name: Level.StartLookMapScriptDpc()
-- Desc:
--------------------------------------------------------
function Level.StartLookMapScriptDpc()
   local officers = { 'ZO10', 'ZO09', 'ZO06', 'ZO07', 'ZO08' };
   
   for i in officers do
      AI.SetJob(AI.FindNPC(officers[i]), "LookMap");
   end
   
   AI.EnableZone("ConferenceRoom_Info", true);
   
   Level.TalkingDoc  = true;
   Level.ListenTimer = 0.0;
   
end

--------------------------------------------------------
-- Name: Level.StartDinner()
-- Desc:
--------------------------------------------------------
function Level.StartDinner()
   local officers = { 'ZO10', 'ZO09', 'ZO06', 'ZO07', 'ZO08', 'ZO11' };
   
   for i in officers do
      AI.SetJob( AI.FindNPC(officers[i]), "dinner" );
   end
   
   Level.TalkingDoc = false;
   
   Level.UpdateLetterState( -1 );
   
   Level.StartPutToSeif();
   
   AI.EnableZone("ConferenceRoom_Info", false);
end

--------------------------------------------------------
-- Name: Level.OfficerGoDinner()
-- Desc:
--------------------------------------------------------
function Level.OfficerGoDinner()

   local officer = AI.FindNPC('ZO11');
   if ( officer != nil and AI.IsDefault( officer ) == true ) then
      AI.SetJob( officer, "dinner" );   
   end;
   
end;

--------------------------------------------------------
-- Name: Level.OnOfficerGetCiphertext()
-- Desc:
--------------------------------------------------------
function Level.OnOfficerGetCiphertext()

   if ( Level.DocsGet == true ) then
     AI.SetJob( AI.FindNPC('ZO11'), "nopaper" );     
     Level.InstallDpc("Level.OfficerGoDinner()", 4.0);
     return;
   end
      
   local paper = Level.FindItem( 'CITX' );
   if (paper != nil) then
      Level.DeleteItem( paper );
   end
   
   local officer = AI.FindNPC('ZO11');
   if (officer != nil) then
      local item = Actor.PutEmptyPouch( Level.FindActor('ZO11'), "Custom:GermanDoc", "Equipment" );
      if ( item != nil ) then
         Entity.SetUniqueID( item, 'CITX' );         
         Entity.SetName( item, MissionText.Message_DocName );
         Level.SetCustomItemName( item, MissionText.Message_DocTip );
      end;      
   end   
   
   Level.UpdateLetterState( 4 );
end

--------------------------------------------------------
-- Name: Level.StartRadistCutScene()
-- Desc:
--------------------------------------------------------
function Level.StartRadistCutScene()

    if ( AI.IsDefault( AI.FindNPC('RDST') ) == true ) then    
    
      local doc_2 = Level.FindItem('DOC2');
      Entity.SetHidden( doc_2, false );
      
      Level.BeginCutScene('rdst', 'Levels\\PGift\\radist_tele.scm', "", 10.0, { 3, 25.0, 30.0, 55.0, 255 } );
    end;
    
end

--------------------------------------------------------
-- Name: Level.CheckOnAnchorRecieve()
-- Desc:
--------------------------------------------------------
function Level.CheckOnAnchorRecieve()

   local radist = AI.FindNPC('RDST');
   
   if( radist == nil ) then
      print('Error radist not found..');
      return;   
   end;
   
   local anchor = AI.FindAnchor( 'AN65' );
   if ( anchor == nil ) then
      return;   
   end;
   
   if ( AI.IsUsingAnchor( radist, anchor ) == true ) then
         
      Level.RemoveTimer( 'CARC' );
      Level.InstallDpc("Level.StartRadistCutScene()", 3.0 );      
   end;
   
end;

--------------------------------------------------------
-- Name: Level.CheckRadistTimer()
-- Desc:
--------------------------------------------------------
function Level.CheckRadistTimer()

   local radist = AI.FindNPC('RDST');
   if ( AI.IsDefault( radis ) == false ) then
      return;   
   end;
   
   Level.RemoveTimer('CKRD');
   Level.StartRecieveTelegram();
   
end;

--------------------------------------------------------
-- Name: Level.StartRecieveTelegram()
-- Desc:
--------------------------------------------------------
function Level.StartRecieveTelegram()

   if ( Level.Telegram == true or Level.Recieving == true ) then
     return;
   end;
   
   local radist = AI.FindNPC('RDST');
   if ( AI.IsDefault( radist ) == false ) then
      Level.AddTimer('CKRD', "CheckRadistTimer", 1.0, true );   
      return;
   end;
         
   AI.SetJob( radist, "recieve" ); 
   AI.SetJob( AI.FindNPC('GS51'), "recieve" );
   
   if ( AI.IsDefault( AI.FindNPC('GS21') ) == true ) then
      AI.SetJob( AI.FindNPC('GS21'), "default" );   
   end;
   
   Level.AddTimer( 'CARC', "CheckOnAnchorRecieve", 1.0, true );    
   Level.Recieving = true;

   Level.RemoveTimer('INRD');   
end;

--------------------------------------------------------
-- Name: Level.OnRecieveTelegram()
-- Desc:
--------------------------------------------------------
function Level.OnRecieveTelegram()
 
  Entity.SetHidden( Level.FindItem('DOC2'), true );
  
  Level.Telegram = true;
  
  local radist = Level.FindActor('RDST');
  if ( radist != nil) then
      local item = Actor.PutEmptyPouch( radist, "Custom:GermanDoc", "Equipment" );
      if ( item != nil ) then
         Entity.SetUniqueID( item, 'CITX' );         
         Entity.SetName( item, MissionText.Message_DocName );
         Level.SetCustomItemName( item, MissionText.Message_DocTip );
      end;
  end
  
  Level.AddSmallMessage( MissionText.Message_RadistGetPaper, 10.0, 255, 255, 255 );  
  Level.RunAnchorJob3(AI.FindNPC('RDST'), 'ZN51', 'ZN48', 'ZN50', true);
  
  Level.EnableLevelMark('LET0', false);
  Level.UpdateLetterState( 3 );

end;

--------------------------------------------------------
-- Name: Level.OnShowSeifCutScene()
-- Desc:
--------------------------------------------------------
function Level.OnShowSeifCutScene()

    local officer = AI.FindNPC('ZO11');
    if ( officer == nil ) then
       return;
    end;
    
    if (Level.IsMissionTaskCompleted('LETR') == true) then
      return;
    end
            
    if ( AI.IsUsingAnchor( officer, AI.FindAnchor('ZN53') ) == true ) then
      Level.BeginCutScene('sput', 'Levels\\PGift\\seifput.scm', "", 7.0, { 3, 20.0, 40.0, 60.0, 255 } );
    end;
end;

--------------------------------------------------------
-- Name: Level.OnBeginPutToSeif()
-- Desc:
--------------------------------------------------------
function Level.OnBeginPutToSeif()
    Level.InstallDpc( "Level.OnShowSeifCutScene()", 4.0 );
    --Level.BeginCutScene('sput', 'Levels\\PGift\\seifput.scm', "", 10.0 );
end

--------------------------------------------------------
-- Name: Level.OnPutToSeif()
-- Desc:
--------------------------------------------------------
function Level.OnPutToSeif()

    local officer = Level.FindActor('ZO11');
    if ( officer != nil ) then
       Actor.RemoveEquipment(officer,'CITX');    
    end;

    --Level.SetDoorLocked( Level.FindDoor('SEIF'), true, true );    
    Level.DocsInSeif = true;
    Level.EnableLevelMark('LEYE', false);
    AI.SetJob(AI.FindNPC('GS16'), "letter_guard");
    
    Level.UpdateLetterState( 2 );
end

--------------------------------------------------------
-- Name: Level.OnStartLookDoor()
-- Desc:
--------------------------------------------------------
function Level.OnStartLookDoor( doorId )

   if ( doorId == 'LOOK' ) then
     return true, 0.5, true;
   else
     return true, 0.0, false;
   end;
         
end;

--------------------------------------------------------
-- Name: Level.OnUpdateListenTimer()
-- Desc:
--------------------------------------------------------
function Level.OnUpdateListenTimer()
     if (Level.TalkingDoc == false) then
        return true;
     end
     
     if (Level.IsMissionTaskCompleted('LETR') == true) then
        return true;
     end
     
     if ( AI.IsDefault( AI.FindNPC('ZO11') ) == true ) then
     
       Level.ListenTimer = Level.ListenTimer + 0.5;
     
       --print('Listen timer .. ' .. tostring( Level.ListenTimer ) );
     
       if ( Level.ListenTimer > 10.0 ) then
     
           Level.FinishTask('LETR', true );
           Level.TalkingDoc = false;
          
           return true;
       end;
     end;
     
     return false;
end

--------------------------------------------------------
-- Name: Level.OnLookDoorNotify()
-- Desc:
--------------------------------------------------------
function Level.OnLookDoorNotify( doorId, lookTime )

  if ( doorId == 'LOOK' and Level.TalkingDoc == true ) then
  
     if (Level.OnUpdateListenTimer() == true) then
        AI.SetPlayerSoundRoomFriend( nil );
        
--        Level.SetDoorLookNotify( Level.FindDoor('LOOK'), false );
        Level.SetDoorStringId( look, "see", '' );

        return 0.0;
     end
  end;
  
  if (doorId == 'LOOK') then
     AI.SetPlayerSoundRoomFriend( Level.GetRoom('VA85') );
  end
   
  return 0.5;  
end;

--------------------------------------------------------
-- Name: Level.OnFinishLookDoor()
-- Desc:
--------------------------------------------------------
function Level.OnFinishLookDoor( doorId, lookTime )
   AI.SetPlayerSoundRoomFriend( nil );
end;

--------------------------------------------------------
-- Name: Level.StartPutToSeif()
-- Desc:
--------------------------------------------------------
function Level.StartPutToSeif()
   local officer = AI.FindNPC('ZO11');
   if (officer != nil) then
      Level.UpdateLetterState( 4 );
      
      
      if (Level.GetDifficulty() == 0) then
         Level.RunAnchorJob2(officer, 'ZN52', 'ZN53', true);
      else      
         local properties = Level.CreateCustomParams();

         Level.SetValue(properties, "CustomString_1", 'ZN52' );
         Level.SetValue(properties, "CustomString_2", 'ZN53' );
         Level.SetValue(properties, "CustomString_3", 'A101' );
         Level.SetValue(properties, "CustomString_4", 'A100' );
         Level.SetValue(properties, "CanBeDisabled", false );

         AI.RunScriptTask(officer, "scripts:job\\AnchorJob4_safe.lua", AI.LOGIC_DEFAULT, properties);
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnVineKill()
-- Desc:
--------------------------------------------------------
function Level.OnVineKill()

   local npc1 = AI.FindNPC('GZ01');
   local npc2 = AI.FindNPC('GZ03');

   local kill_npc1 = false;
   local kill_npc2 = false;
   
   if ( npc1 != nil and npc2 != nil ) then   
     if ( Level.VineDrink[1] == true and Level.VineDrink[2] == true ) then       
     
       kill_npc1 = true;
       kill_npc2 = true;
       
       Level.RemoveTimer('VINE');       
     else
     
       Level.VineTimer = Level.VineTimer + 20;
       
       if ( Level.VineTimer > 120 ) then
       
          if ( Level.VineDrink[1] == true ) then
             kill_npc1 = true;
          end;
          
          if ( Level.VineDrink[2] == true ) then
             kill_npc2 = true;          
          end;
          
          Level.RemoveTimer('VINE');       
       end;
     
     end;
     
   else
     if ( Level.VineDrink[1] == true and npc1 != nil ) then
       kill_npc1 = true;     
     end;
     
     if ( Level.VineDrink[2] == true and npc2 != nil ) then
       kill_npc2 = true;     
     end;
     
     Level.RemoveTimer('VINE');   
   end;
   
   if ( kill_npc1 == true ) then       
      AI.SetGameFlag(npc1, AI.F_ACCIDENT_BODY, true);
      AI.KillNPC( npc1, 0.0, AI.HIT_DAMAGE);      
   end;
     
   if ( kill_npc2 == true ) then
      AI.SetGameFlag(npc2, AI.F_ACCIDENT_BODY, true);
      AI.KillNPC( npc2, 0.0, AI.HIT_DAMAGE);      
   end;
   

end;

--------------------------------------------------------
-- Name: Level.OnVineDrink()
-- Desc:
--------------------------------------------------------
function Level.OnVineDrink( drinkId )

   if ( Level.VinePoisoned == false ) then
      return;
   end;
            
   local npc1 = AI.FindNPC('GZ01');
   local npc2 = AI.FindNPC('GZ03');
   
   Level.VineDrink[ drinkId ] = true;
   
   if ( npc1 != nil and npc2 != nil ) then
      if ( Level.VineDrink[1] == false and Level.VineDrink[2] == false ) then         
         Level.VineTimer = 0.0;
      end;   
   end;
         
   Level.AddTimer( 'VINE', "OnVineKill", 20.0, true );   
   
end

--------------------------------------------------------
-- Name: Level.OnBochkaScript()
-- Desc:
--------------------------------------------------------
function Level.OnBochkaScript()

   local object = Level.FindWorldObject('BOCH');
   if ( object == nil ) then
      return;   
   end;
   
   Level.AddWorldObjectPhysicsForce( object, -4800.0, 0.0, 0.0, true );
   
end;

--------------------------------------------------------
-- Name: Level.OnBochkaCheckScript()
-- Desc:
--------------------------------------------------------
function Level.OnBochkaCheckScript()
   local npc = AI.FindNPC('GS62');
   if ( npc == nil ) then
       return;       
   end;
   
   if (AI.HasPlayerInfo(npc, "see") == true) then
      AI.HandleVoice( npc, "male_ger_danger_danger_06" );
      return;
   end
   
   if (AI.HasPlayerInfo(npc, "knowposition") == true) then
       Level.RunAnchorJob( npc, 'A157', false);
       
       return;
   end
  
   AI.HandleVoice( npc, AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
   AI.SetJob( npc, "bochka" );
   
end;

--------------------------------------------------------
-- Name: Level.OnWorkerPoisoned()
-- Desc:
--------------------------------------------------------
function Level.OnWorkerPoisoned()

   local npc = AI.FindNPC('GW02');
   if ( npc != nil ) then
      AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
      AI.KillNPC( npc, 0.0, AI.HIT_DAMAGE);
   end;
   
end;

--------------------------------------------------------
-- Name: Level.OnWorkerTestPoison()
-- Desc:
--------------------------------------------------------
function Level.OnWorkerTestPoison()

   if ( Level.BochPoisoned == false ) then
      return;   
   end;   
   
   AI.SetJob( AI.FindNPC('GW02'), "poison" );
   Level.InstallDpc( "AI.HandleVoice( AI.FindNPC('GW02'), 'male_ger_casual_casual_10' )", 3.0);
   Level.InstallDpc( "Level.OnWorkerPoisoned()", 14.0 );
      
end;

--------------------------------------------------------
-- Name: Level.OnNextBoxWorker()
-- Desc:
--------------------------------------------------------
function Level.OnNextBoxWorker( actorId )
      
   local npc = AI.FindNPC( actorId );

   if ( actorId == 'GW04' ) then

      local goSmoking = true;
      
      if ( Level.BoxArea == true ) then      
        if ( Level.BoxComplete[2] == false ) then
          AI.SetJob( npc, "box2" );      
          goSmoking = false;
        elseif ( Level.BoxComplete[3] == false ) then
          AI.SetJob( npc, "box3" );               
          goSmoking = false;
        end;
      end;
      
      if ( goSmoking == true ) then
          AI.SetJob( npc, "smoking" );
          Level.BoxJobWorker1 = false;      
      end;
              
   elseif ( actorId == 'GW05' ) then
   
      local goSmoking = true;
      
      if ( Level.BoxArea == true and Level.BoxComplete[5] == false ) then
        AI.SetJob( npc, "box2" );    
        goSmoking = false;              
      end;
      
      if ( goSmoking == true ) then
         AI.SetJob( npc, "smoking" ); 
         Level.BoxJobWorker2 = false;      
      end;
      
   end;

end;

--------------------------------------------------------
-- Name: Level.EnablePlayerBoxes()
-- Desc:
--------------------------------------------------------
function Level.EnablePlayerBoxes( onOff )
   Level.EnableItemPickup( Level.FindItem('PBX1'), onOff );
   Level.EnableItemPickup( Level.FindItem('PBX2'), onOff );
end;

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyPickupItem( itemId, item )
   if (itemId == 'PBX1' or itemId == 'PBX2') then
      AI.EnableZone("WorkersSkladEnterBox", false);
      return;
   elseif ( itemId == 'POIS' ) then
   
      AI.StartDecamouflage( 40.0, 70.0, 3.0 );            
      Level.EnableNotifyPickup( item, false );
      Level.EnableLevelMark('POIS', false );
   
   elseif ( itemId == 'CITX' ) then
               
      Level.EnableNotifyPickup( item, false );
      AI.StartDecamouflage( 40.0, 70.0, 3.0 );
        
   elseif ( itemId == 'SOL1' ) then
   
       Level.EnableNotifyPickup( item, false );
       Level.EnableLevelMark( 'FORM' , false );
   
   end;
end

--------------------------------------------------------
-- Name: Level.OnNotifyDropItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyDropItem( itemId, item )
   
   local offset = nil;
   
   if (itemId == 'PBX1' or itemId == 'PBX2') then
      AI.EnableZone("WorkersSkladEnterBox", true);
      return;
   end
      
   if ( itemId == 'BOX2' ) then
      Level.BoxComplete[1] = true;
   elseif ( itemId == 'BOX3' ) then
      offset={ 0.0, 6.0, -4.0 };      
   elseif ( itemId == 'BOX4' ) then
      offset={ 0.0, 6.0, -4.0 };
      Level.BoxComplete[2] = true;   
   elseif ( itemId == 'BOX6' ) then
      Level.BoxComplete[3] = true;   
   elseif ( itemId == 'BOX8' ) then
      Level.BoxComplete[4] = true;   
   elseif ( itemId == 'BOX9' ) then
      offset={ 0.0, 6.0, -4.0 };   
   elseif ( itemId == 'BX10' ) then
      offset={ 0.0, 6.0, -4.0 };   
      Level.BoxComplete[5] = true;
   end;
   
   if ( offset != nil ) then
   
      local itemNode  = Entity.GetNode( item );
      local x,y,z = node.GetPosition( itemNode );
      
      x = x + offset[1];
      y = y + offset[2];
      z = z + offset[3];      
      
      node.SetPosition( itemNode, x, y, z );
      node.InvalidateTransforms( itemNode );  
   
   end;
end;

--------------------------------------------------------
-- Name: Level.OnSayWhereIsThisFuckenDoctor()
-- Desc:
--------------------------------------------------------
function Level.OnSayWhereIsThisFuckenDoctor()
    Level.VoiceMessage( AI.FindNPC('GS64'), "%Script04_Sound", "WhereIsFuckenCookMessage");
end

--------------------------------------------------------
-- Name: Level.OnWhereIsThisFuckenCook()
-- Desc:
--------------------------------------------------------
function Level.OnWhereIsThisFuckenCook()
   Level.RunAnchorJob(AI.FindNPC('GS64'), 'A175');
end

--------------------------------------------------------
-- Name: Level.OnInstallRadistJob()
-- Desc:
--------------------------------------------------------
function Level.OnInstallRadistJob()
   if ( Level.Telegram == false ) then
      Level.StartRecieveTelegram();
   end;
end

--------------------------------------------------------
-- Name: Level.OnKillConfOfficer()
-- Desc:
--------------------------------------------------------
function Level.OnKillConfOfficer()
   local officers = { 'ZO06', 'ZO09', 'ZO10', 'ZO08', 'ZO07' };
   
   if (Level.LetterState != 0 and
       Level.LetterState != 3) then
       return;
   end
 
   local bAdd = false;
   
   for i in officers do
      local npc = AI.FindNPC(officers[i]);
      if (AI.IsDefault(npc) == true) then
         AI.DirtyChangeAttention( npc, AI.ATTENTION_ALARM, true);
         
         if (bAdd == false) then
            Level.RunAnchorJob_Run(npc, 'A158', true);
            bAdd = true;
         end
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeCloth()
     Level.EnableLevelMark('FORM', false);
     Level.InstallDpc("Level.OnHelpForm()", 3.0);
  end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor_AN05()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor_AN05()
   if (Level.KastrulaPoisoned == true) then
      Level.GS06_Poissoned = true;
   end
end

--------------------------------------------------------
-- Name: Level.AddGS06_Force()
-- Desc:
--------------------------------------------------------
function Level.AddGS06_Force()
    local actor = Level.FindActor('GS06');
    if ( actor != nil ) then
       Actor.ApplyForce( actor, 0.0, 0.0, 10000.0 );
    end;
end

--------------------------------------------------------
-- Name: Level.OnAnchorCheckPoisson()
-- Desc:
--------------------------------------------------------
function Level.OnAnchorCheckPoisson()
   if (Level.GS06_Poissoned == true) then
      local npc = AI.FindNPC('GS06');
      if ( npc != nil ) then
         AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
         AI.KillNPC( npc, 0.5, AI.HIT_DAMAGE);
         Level.InstallDpc( "Level.AddGS06_Force()", 0.8 );
      end;
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor_AN08()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor_AN08()
   if (Level.KastrulaPoisoned == true) then
      Level.Cook_Poissoned = true;
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor170()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor170()
   if (Level.Cook_Poissoned == true) then
      local npc = AI.FindNPC('COOK');
      if ( npc != nil ) then
         AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
         AI.KillNPC( npc, 0.5, AI.HIT_DAMAGE);
      end
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
   if (Level.GetDifficulty() == 3) then
      c = c * 0.35;
   end
   
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



