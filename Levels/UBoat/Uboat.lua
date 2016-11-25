----------------------------------------------------------------------------
--
-- Description :  Mission "King's enigma"
--
-- Created by Alexey Agamalov, 
--            Sergey Gvozdev
--
----------------------------------------------------------------------------


--------------------------------- Messages table -----------------------------
  
  MissionText = 
  {
      Task_Enigma                            = " Выкрасть Энигму";
      Task_CryptBook                         = " Получить книгу шифров";
      Task_TorpedaInfo                       = " Получить документацию";
      Task_Leave                             = " Покинуть базу";
      Task_Sabotage                          = " Подготовить диверсию";
            
      Message_OpenVodDoor                    = "ОТКРЫТЬ ЛЮК";
      Message_CloseVodDoor                   = "ЗАКРЫТЬ ЛЮК";  
      
      Key_Sklad                              = "Ключ от склада";
      Key_Floor3                             = "Ключ второго этажа";
      Key_Sklad2                             = "Ключ от склада на втором этаже";
      Key_Angar                              = "Ключ от комнаты охраны";
            
      Key_RadistSeif                         = "Код от сейфа";
      
      Message_BrakeRadio                     = "ЗАМКНУТЬ РАДИО";
      Message_TurnOffConference              = "ОТЛЮЧИТЬ ЗАЛ";
      Message_TurnOffLection                 = "ОТКЛЮЧИТЬ ЛЕКЦИОННУЮ";
      
      Message_GetCryptBook                   = "ВЗЯТЬ КНИГУ ШИФРОВ";
      Message_GetTorpedasInfo                = "ПОСМОТРЕТЬ ДОКУМЕНТАЦИЮ";
      
      Message_PoissonVine                    = "ОТРАВИТЬ ВИНО";
      Message_BrakeGenerator                 = "ЗАКОРОТИТЬ ГЕНЕРАТОР";
      Message_CloseFuel                      = "ЗАКРЫТЬ КРАН";
      Message_BrakeBigGenerator              = "ПЕРЕКЛЮЧИТЬ РЕЖИМ";
      Message_UsePump                        = "ВКЛЮЧИТЬ НАСОС";
      Message_ShowDocs                       = "ПОКАЗАТЬ РАЗРЕШЕНИЕ";
      Message_DropTorpeda                    = "ОТКЛЮЧИТЬ КРАН";
      Message_Sabotage                       = "СЛОМАТЬ ТАЙМЕР";
      
      Enigma_Name                            = "ЭНИГМУ";
      Enigma_TipName                         = "Энигма";
      
      Poison_Name                            = "ЯД";
      Poison_TipName                         = "Яд";
      Poison_Need                            = "! Нужен яд, чтобы отравить вино..";
      
      Message_PackNeed                       = "! Необходим рюкзак, чтобы забрать Энигму..";
      Message_BigGeneratorBrake              = "- Внимание неполадки в главном генераторе. Срочно требуется механик";
      Message_Vodokanal                      = "Осторожно! Перед спуском включить насос No.1";
      Message_WirecutNearNet                 = "! Нужны кусачки чтобы перерезать сетку..";
      Message_Captain                        = "! Возможно многие на базе знают капитана в лицо.";

      Message_Vodokanal_1                    = "! Насос отключится через ";      
      Message_Vodokanal_2                    = "! Насос отключен..";
      Message_EnigmaInfo                     = "! Исчезновение Энигмы может привести к тревоге!";
            
      Message_StopMove_Search                = "@ Я должен осмотреть содержимое вашего рюкзака!";
      Message_StopMove_DontMove              = "@ Не покидайте зону пока осмотр не будет произведен!";
      Message_StopMove_Clean                 = "@ Все нормально - запрещенных предметов нет!";
      Message_StopMove_DocsClear             = "@ Все нормально - проходите.";
      Message_StopMove_Docs                  = "@ У нас приказ осматривать всех не имеющих разрешение!";

      Message_StopMove_Driver_1              = "@ Водителям тут нечего делать!";
      Message_StopMove_Driver_2              = "@ Это закрытая база! Ваше дело только доставлять грузы!";
      Message_StopMove_Radist_1              = "@ Радистам тут нечего делать!";
      Message_StopMove_Radist_2              = "@ Кажется, вы должны быть в комнате связи!";
      Message_StopMove_Generator             = "@ Только рабочий персонал базы имеет доступ к генератору!";
      Message_StopMove_Nasos                 = "@ Только рабочий персонал базы имеет доступ сюда!";
      Message_StopMove_GeneratorUp           = "@ Боюсь, вам неположено находиться здесь!";
      Message_StopMove_ThirdFloor_Worker     = "@ На этом этаже нечего ремонтировать!";
      Message_StopMove_ThirdFloor            = "@ Вам здесь нечего делать!";
      Message_StopMove_LectionRoom           = "@ В классе проходят занятия для моряков-курсантов!";
      Message_StopMove_ConfRoom              = "@ В зале проводится совещание офицеров!";
      Message_StopMove_OfficerPart           = "@ В эту часть базы разрешено проходить только солдатам СС и офицерам.";
      Message_StopMove_CaptainRoom           = "@ Это помещение капитана. Покиньте его немедленно!";
      Message_StopMove_CaptainRoom_Captain   = "@ Что ты тут забыл!? Это мой кабинет!";
      Message_StopMove_GuardsRoom            = "@ Боюсь, я не имею права пропускать вас на склад через комнату охраны!";
      Message_StopMove_WeaponAngar           = "@ Немедленно покиньте территорию склада!";
      Message_StopMove_Dock                  = "@ В доках работают лишь моряки и механики!";
      Message_StopMove_RadistRoom            = "@ Боюсь я не могу пропустить вас в радио комнату!";
      Message_StopMove_RadistRoomNear_Seeman = "@ Что в радио комнате забыли моряки?! ";
      Message_StopMove_RadistRoomNear        = "@ Вам тут нечего делать! ";
      Message_StopMove_BoatTrigger           = "@ Лодку готовят к отплытию! Доступ внутрь разрешен лишь подводникам.";
      Message_StopMove_BoatAlarmNear         = "@ Вам нечего тут делать! Доступ внутрь разрешен лишь подводникам.";

      Message_CS_StopMove_Search             = "- Я должен осмотреть содержимое вашего рюкзака!";
      Message_CS_StopMove_DontMove           = "- Не покидайте зону пока осмотр не будет произведен!";
      
      Message_Alarm                          = "Поднята тревога!";
      Message_AlarmFinished                  = "Тревога закончилась";
      
      Message_DropBack                       = "! Рюкзак понадобится для выноса Энигмы";
      
      Message_DocsName                       = "Разрешение";
      Message_DocsNameL                      = "РАЗРЕШЕНИЕ";
      
      Message_SeifTips                       = "! Нужен код чтобы открыть сейф!";
      
      Message_CS_Submarine                   = "- Я на склад, скоро подойдут несколько механиков работать на палубе. Кроме них и команды никого не пускай.";
      
      Message_ThisIsMyPass                   = "@ Вот разрешение на проход без обыска";
      
      Message_Help                           = { "В целях безопасности охрана имеет право осмотреть содержимое сумок и рюкзаков у любого человека на базе",
                                                 "Согласно приказу, охрана не имеет права осматривать лиц, имеющих соответствующие разрешение",
                                                 "Капитана и офицеров многие знают в лицо",
                                                 "Тревога приведет к повышению бдительности противника",
                                                 "На базе сложная система вентиляции",
                                                 "По нашим данным между доками располагаются шлюзы для балансировки уровня воды",
                                                 "Большие сейфы невозможно взломать без кода",
                                                 "Обнаружение пропажи Энигмы может привести к тревоге",
                                                 "В доках могут находиться моряки и механики",
                                                 "Механик может ремонтировать подводну лодку только на палубе, доступа во внутрь у него нет..",
                                                 "В вентиляционной шахте можно легко спрятать тело",
                                                 "Под водой тела практические незаметны..",
                                                 "В темных местах противник хуже видит",
                                                 "В рюкзак можно спрятать форму"
                                                };
      
      Message_ClothInfo                      = { "Рабочий не вызывает подозрения в подсобных помещениях",
                                                 "Человек в форме водителя вызывает подозрение вне гаража",
                                                 "Форма подводника дает возможность попасть в подводную лодку",
                                                 "Форма моряка не вызывает подозрения у охраны доков",
                                                 "В форме механика можно находиться в доках",
                                                 "Радист должен находиться в радиорубке",
                                                 "Солдат не будет допущен на территорию доков"
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
       Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.35#sounds\\music\\coldzone.ogg" );
              
       Level.SetDefaultMusicPause( 180.0, 300.0, 30.0, 60.0 );
       Level.SetDOFPostFilter( 1, 0.0, 600.0, 1500.0 );
       
       for i in Level.Nets do     
           
           --print(  "Set notification: " .. Level.Nets[i].DoorUid);
           
           local door = Level.FindDoor( Level.Nets[i].DoorUid );

           if ( door != nil ) then
              
              AI.RegisterClosedDoor( door, true );
              Level.SetDoorNotifyScript( door, true );
           else
              print("Warning: Can't find door: " .. Level.Nets[i].DoorUid);
           end;
       end
      
       Level.EnableDoor( Level.FindDoor('VDOR') , false );
       AI.RegisterClosedDoor( Level.FindDoor('RSEF'), true);
                
       local d = Level.FindDoor('VDOR');
       if ( d != nil and Level.IsDoorClosed(d) == true ) then     
          Trigger.Enable( Level.FindTrigger('SimpleTrigger13'), true );             
       else
          Level.SafeDisableLadder(false);          
       end;
       
       Level.SetDoorKey('UD22', 'SLKY');
       
       Level.SetDoorKey('DR30', 'F3KY');
       Level.SetDoorKey('DR27', 'F3KY');
       Level.SetDoorKey('DR29', 'F3KY');
       
       Level.SetDoorKey('DR14', 'F2SL');
       Level.SetDoorKey('AD02', 'ANKY');
       
       Level.UpdateConferenceLight();
       Level.UpdateLectionLight();
       Level.UpdateGeneratorRoomLight();

       System:SetVar( "ph_water_density", 0.08);
       System:SetVar( "ph_water_wet_time", 17.0);
       System:SetVar( "hud_mapvision" , false );
       System:SetVar( "r_rimsunlightfactor", 0.0 );
       
       Level.AddWaterZone( 855.2845,-214.0322,-595.0439,1905.2845,-104.0322,-421.3008 );
       Level.AddWaterZone( 1408.2516,-214.0322,-1002.6844,1908.6641,-104.0322,-828.9414 );
       Level.AddWaterZone( 1022.7372,-214.0321,-1004.1898,1405.6396,-104.0321,-930.5288 );
       Level.AddWaterZone( 1022.7372,-214.0321,-863.9188,1405.6396,-104.0321,-825.2988 );
       Level.AddWaterZone( 870.7092,-214.0321,-1011.4593,1020.5077,-104.0321,-816.2972 );
       
       Level.AddWaterZone(  587.776,-150.505,-694.412, 1487.799,-117.132,-663.771, Level.F_WATER_CAMERAONLY );

       local seifDoor     = Level.FindDoor( 'RSEF' );
              
       if ( seifDoor != nil ) then
         Level.SetDoorNotifyScript( seifDoor , true );
         Level.SetDoorUnlockKey( seifDoor, 'RSEF' );
       end;
     
       Level.GetDocsTrigger  = nil;
     
       -- effects
       Level.SetHudEffect("noise_small" , true ); 
            
       -- Level.DebugPrintNets();
       
       Level.HideBodyBoxes = {};
              
       Level.HideBodyBoxes['US04'] = { x1 = 179.5105, y1 = 20.6236, z1 = -501.1406, 
                                       x2 = 193.1415, y2 = 30.6236, z2 = -481.0596 };

       Level.HideBodyBoxes['US03'] = { x1 = 138.4333, y1 = 20.6236, z1 = -537.6329, 
                                       x2 = 152.0643, y2 = 30.6236, z2 = -517.5519 };

       Level.HideBodyBoxes['US02'] = { x1 = 179.3744, y1 = 20.6236, z1 = -568.7017, 
                                       x2 = 193.0054, y2 = 30.6236, z2 = -548.6207 };

       Level.HideBodyBoxes['US05'] = { x1 = 381.6146, y1 = 20.6236, z1 = -568.7017, 
                                       x2 = 395.2456, y2 = 30.6236, z2 = -548.6207 };

       Level.HideBodyBoxes['USBD'] = { x1 = 313.3417, y1 = 20.6236, z1 = -791.6872, 
                                       x2 = 326.9727, y2 = 30.6236, z2 = -771.6062 };

       Level.HideBodyBoxes['US06'] = { x1 = 381.3828, y1 = -21.3906, z1 = -537.9844, 
                                       x2 = 395.0138, y2 = -11.3906, z2 = -517.9034 };

       Level.HideBodyBoxes['US01'] = { x1 = 297.5811, y1 = -21.3906, z1 = -778.9841, 
                                       x2 = 311.2122, y2 = -11.3906, z2 = -758.9031 };
      
       local b = Actor.GetBackPack( Level.GetPlayer() );       
       if ( b == nil ) then
          Level.HasBackPack = false;
        else
          Level.HasBackPack = true;
       end;
                                        
  end;
 
--------------------------------------------------------
-- Name: Level.OnSave()
-- Desc:
--------------------------------------------------------
  function Level.OnSave()
       Stream.WriteInt(0);

       Level.OnSave_Common();
       
       local n = table.getn(Level.Nets);
       Stream.WriteInt(n);
       for i in Level.Nets do
          Level.SaveNet(Level.Nets[i]);
       end
       
       Stream.WriteBool( Level.VodokanalCleared );       
       
       Stream.WriteBool( Level.StationBroken );
       Stream.WriteBool( Level.MainIdleStarted );
       
       Stream.WriteBool( Level.LectionLightState );
       Stream.WriteBool( Level.ConferenceLightState );
       
       Stream.WriteBool( Level.VinePoisson );
       
       Stream.WriteBool( Level.TorpedaScript );
       Stream.WriteBool( Level.GeneratorBrake );
       
       Stream.WriteBool  ( Level.FuelClosed );
       Stream.WriteFloat ( Level.VodokanalTimer );
       
       Stream.WriteFloat ( Level.PlayerPosition.x );
       Stream.WriteFloat ( Level.PlayerPosition.y );
       Stream.WriteFloat ( Level.PlayerPosition.z );
       
       Stream.WriteBool  ( Level.SeachFirstTry );
       Stream.WriteBool  ( Level.Searching );
       
       Stream.WriteBool  ( Level.BackPackState );
       Stream.WriteString( Level.LastBackPackId );
       Stream.WriteString( Level.LookBackPack );
       
       Stream.WriteBool( Level.GeneratorRoomBreak );
       
       Level.WriteArray(Level.TargetBots);
       
       Stream.WriteBool( Level.AlertCalled );
       Stream.WriteBool( Level.UseMarkRadi );
       Stream.WriteBool( Level.UseMarkSgen );
       
       
       Stream.WriteBool ( Level.PumpPressed );
       Stream.WriteBool ( Level.CaptainInstalled );
       
       Stream.WriteInt( Level.BackPackZoneId );
       
  end

--------------------------------------------------------
-- Name: Level.OnLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnLoad()
       local version = Stream.ReadInt();

       Level.OnLoad_Common();
       
       local n = Stream.ReadInt(n);
       Level.Nets = {};
       for i = 1, n do
          Level.Nets[i] = Level.LoadNet();
       end
       
       Level.VodokanalCleared = Stream.ReadBool();
       
       Level.StationBroken        = Stream.ReadBool();
       Level.MainIdleStarted      = Stream.ReadBool();
       
       Level.LectionLightState    = Stream.ReadBool();
       Level.ConferenceLightState = Stream.ReadBool();
       
       Level.VinePoisson          = Stream.ReadBool();
       
       Level.TorpedaScript        = Stream.ReadBool();
       Level.GeneratorBrake       = Stream.ReadBool();
       
       Level.FuelClosed           = Stream.ReadBool();
       Level.VodokanalTimer       = Stream.ReadFloat();
       
       Level.PlayerPosition    = {};
       Level.PlayerPosition.x     = Stream.ReadFloat();
       Level.PlayerPosition.y     = Stream.ReadFloat();
       Level.PlayerPosition.z     = Stream.ReadFloat();
       
       Level.SeachFirstTry        = Stream.ReadBool();
       Level.Searching            = Stream.ReadBool();
       
       Level.BackPackState        = Stream.ReadBool();
       Level.LastBackPackId       = Stream.ReadString();
       Level.LookBackPack         = Stream.ReadString();
       
       Level.GeneratorRoomBreak   = Stream.ReadBool();
       
       Level.TargetBots           = Level.ReadArray();
       
       Level.AlertCalled          = Stream.ReadBool();
       
       Level.UseMarkRadi          = Stream.ReadBool();
       Level.UseMarkSgen          = Stream.ReadBool();       
      
       Level.PumpPressed          = Stream.ReadBool();
       Level.CaptainInstalled     = Stream.ReadBool();
       
       Level.BackPackZoneId       = Stream.ReadInt();
                     
       Level.OnFinishLoad();
  end

--------------------------------------------------------
-- Name: Level.OnLoaded()
-- Desc:
--------------------------------------------------------
  function Level.OnLoaded()

       -- Install varibles..
       Level.OnLoaded_Common();

       Level.SoundName  = { "SCRnasos01", "generator01", "generator02", "SCRzvonok01", "radio_b1", "SCRwater02" };
       Level.SoundState = { false, true, true, false, true, true };

       Level.Nets = {};
       Level.InstallNet( 'US03', {'AN01', 'AN02', 'AN64'}, 129.0, 28.0, -527.0 );
       Level.InstallNet( 'US02', {'AN55', 'AN56'},         185.0, 28.0, -579.0 );
       Level.InstallNet( 'US05', {'AN58', 'AN59', 'AN60'}, 388.0, 28.0, -579.0 );
       Level.InstallNet( 'USBD', {'AN61'},                 320.0, 28.0, -760.0 );
       Level.InstallNet( 'US04', {'A198', 'A199'},         186.0, 28.0, -471.0 );
       
       Level.InstallNet( 'US06', {'A113', 'A114', 'A115', 'A116'}, 388.0, -14.0, -507.0 );
       Level.InstallNet( 'US01', {'A205', 'A206'},                 304.0, -15.0, -749.0 );
       
       Level.StationBroken   = false;
       Level.MainIdleStarted = false;
       
       Level.LectionLightState    = true;
       Level.ConferenceLightState = true;
       
       Level.VinePoisson     = false;
       Level.TorpedaScript   = false;
       Level.GeneratorBrake  = false;
       
       Level.FuelClosed   = false;
       Level.GeneratorRoomBreak = false;
       
       Level.PlayerPosition = {};
       Level.PlayerPosition.x = 0.0;
       Level.PlayerPosition.y = 0.0;
       Level.PlayerPosition.z = 0.0;
       
       
       Level.SeachFirstTry  = false;
       Level.Searching      = false;
       
       Level.LastBackPackId = "";
       Level.LookBackPack   = "";
       
       Level.TargetBots = { 'SM25', 'BM18', 'GS46', 'SM11' }; 
       
       Level.AlertCalled      = false;
       
       Level.UseMarkRadi      = true;
       Level.UseMarkSgen      = true;       
       
       Level.PumpPressed      = false;
       Level.CaptainInstalled = false;
       
       Level.BackPackZoneId = -1;
       
       -- Action handlers..
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'WGW1', "OnChangeCloth_Worker" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'MW03', "OnChangeCloth_UboatSeaman" );       
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'GWS1', "OnChangeCloth_Seaman" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'GWSS', "OnChangeCloth_SS_Soldier" );

       Level.AddActionHandler( Level.AH_CHANGE_CLOTH );

       -- Dynamic zones..
       AI.OnPlayerEnterZone("CaptainZone", 'CPZN');
       AI.EnableZone("TempZone", false);
       AI.EnableZone("VodokonalEnter", false);

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
             
             Actor.PutEmptyPouch( player, "f1", "Weapon" );
             Actor.PutEmptyPouch( player, "f1", "Weapon" );
             Actor.PutEmptyPouch( player, "f1", "Weapon" );

             Actor.PutEmptyPouch( player, "lockpick", "Equipment" );             
             Actor.PutEmptyPouch( player, "chloroform", "Weapon" );             

             local pack = Level.CreateItem( "rukzak", "container" );
             if ( pack == nil ) 
             then
                error('Failed create player pack');
             end;
             
             local poison = Level.CreateItem( "Custom:Poison", "Equipment" );
             if ( poison != nil ) then
             
                Actor.PutPouch( player, Actor.GetEmptyPouch( player ), poison );
                Entity.SetName( poison, MissionText.Poison_Name );
                Level.SetCustomItemName( poison, MissionText.Poison_TipName );
                Entity.SetUniqueID( poison, 'POIS' );
             
             end;

             Actor.PutBackPack( player, pack );
          end;
          
          if (Actor.GetBackPack( player ) != nil) then
             AI.EnableZone("BackpackZone", true);
             
             Level.LastBackPackId = 'DFBP';
             Entity.SetUniqueID( Actor.GetBackPack( player ), Level.LastBackPackId );
             
             Level.HasBackPack = true;
          else
             AI.EnableZone("BackpackZone", false);
             
             Level.HasBackPack = false;
          end
          
          Actor.ChangeActorSkin( player, "Summer" );
          Level.UpdateBackpackState();
          
       end;       

       Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );
       
       Level.CloseDoor( Level.FindDoor('VDOR'), false, Level.GetPlayer() );     
     
       Level.ClearVodokonal(false);
       
       Level.VodokanalTimer = 0.0;
       
       -- Init mission tasks..
       Level.InstallInitialTasks();

       -- Bot idles...
       AI.FollowActor( AI.FindNPC('GS07'), Level.FindActor('GS05'), -5.0, -10.0, nil);
       AI.FollowActor( AI.FindNPC('GS06'), Level.FindActor('GS05'),  5.0, -20.0, nil);       
       
       local uboatBots = { 'SM50', 'SM49', 'BM29', 'SM51', 'SM52' };
       for i in uboatBots do
          AI.ChangeLogic( AI.FindNPC(uboatBots[i]), "SoldierLocal" );
       end
       
       -- Entities..
       
       Level.AddDocuments('GO01', 'DOCS', MissionText.Message_DocsName);
       Level.AddDocuments('GO06', 'DOCS', MissionText.Message_DocsName);
       Level.AddDocuments('GO04', 'DOCS', MissionText.Message_DocsName);
       Level.AddDocuments('GO08', 'DOCS', MissionText.Message_DocsName);
       Level.AddDocuments('GM12', 'DOCS', MissionText.Message_DocsName);
       
       -- Keys
       
       Level.AddKey('GS04', 'SLKY', MissionText.Key_Sklad, nil,  true );
       Level.AddKey('GW02', 'SLKY', MissionText.Key_Sklad, nil,  true );
       
       Level.AddKey('GS20', 'F3KY', MissionText.Key_Floor3, nil, true );
       Level.AddKey('GS16', 'F3KY', MissionText.Key_Floor3, nil, true );
       Level.AddKey('GS23', 'F3KY', MissionText.Key_Floor3, nil, true );
       Level.AddKey('GS22', 'F3KY', MissionText.Key_Floor3, nil, true );

       Level.AddKey('GZ23', 'F2SL', MissionText.Key_Sklad2, nil, true );
       Level.AddKey('SM45', 'ANKY', MissionText.Key_Angar, nil,  true );
                      
       Level.AddKey('ZS30', 'RSEF', MissionText.Key_RadistSeif, "ammo_doc" );
       Level.AddKey('GC02', 'RSEF', MissionText.Key_RadistSeif, "ammo_doc" );
       
       -- Timers..
       Level.AddTimer( 'WKTM', "OnWorkersTimer", 45.0, true );
       
       Level.EnableVehicleUse( 'BL19', false );
       Level.EnableVehicleUse( 'BL18', false );
       
       Level.SetDoorLocked( Level.FindDoor('RSEF'), true, true );
       
       local enigma = Level.FindItem( 'ENIG' );
       if ( enigma != nil ) then
           Entity.SetName( enigma, MissionText.Enigma_Name );
           Level.SetCustomItemName( enigma, MissionText.Enigma_TipName );
           Level.EnableNotifyPickup( enigma, true );
       end;
       
       local passdoc = Level.FindItem('DOC2');
       if ( passdoc != nil ) then
           Entity.SetName( passdoc, MissionText.Message_DocsNameL );
           Level.SetCustomItemName( passdoc, MissionText.Message_DocsName );
           Level.EnableNotifyPickup( passdoc, true );           
       end;

       AI.AddHideBodyBox(863.6257,4.5521,-1094.0039,1095.8989,44.6159,-1045.8999);
       
       AI.AddBlockVisionBox(93.4716,-80.4049,-242.3492,158.4716,-50.4049,-240.3492);
       AI.AddBlockVisionBox(-56.8384,-80.4049,-313.6450,-1.8384,-50.4049,-311.6450);
       
       AI.AddCustomVisionZone(0.15, 141.6233,18.7548,-569.2861,438.7550,35.0558,-489.1731);
       AI.AddCustomVisionZone(0.25, 373.8271,-24.0565,-545.3247,403.8271,25.9435,-515.3247);
       AI.AddCustomVisionZone(0.3,  297.4354,-18.3495,-800.0636,327.4354,31.6505,-770.0636);
       
       Level.ChangePlayerStand( 2 );
      
       -- Set can't open locked door
       NPC.SetFlag( AI.FindNPC('SM45'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('GW02'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('GZ23'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
                    
       -- Finish load..
       Level.OnFinishLoad();
       
       Trigger.Enable( Level.FindTrigger('SimpleTrigger13'), false );
       
       Level.SetFormHelp( "Worker",            MissionText.Message_ClothInfo[1] );
       Level.SetFormHelp( "Driver",            MissionText.Message_ClothInfo[2] );
       Level.SetFormHelp( "SubmarineSeaman",   MissionText.Message_ClothInfo[3] );
       Level.SetFormHelp( "Seaman",            MissionText.Message_ClothInfo[4] );
       Level.SetFormHelp( "Mechanic",          MissionText.Message_ClothInfo[5] );
       Level.SetFormHelp( "Radist",            MissionText.Message_ClothInfo[6] );
       Level.SetFormHelp( "Soldier",           MissionText.Message_ClothInfo[7] );
       
       AI.AddBlockVisionBox( 618.6390, 29.3122, -983.7438,  620.7031,  39.1462, -868.5627,  'VB 0', 1.0, 0.5);
       AI.AddBlockVisionBox( 903.7291, 29.6922, -1044.6753, 1048.1581, 36.3292, -1042.6753, 'VB 1', 1.0, 0.5);
       AI.AddBlockVisionBox( 618.6390, 29.3122, -579.7433,  620.6390,  39.0792, -464.6333,  'VB 2', 1.0, 0.5);       
       
       Level.OnLoadedDifficulty();
       
       -- Debug hack
       AI.DisableDecamouflageMethod( AI.METHOD_BACKPACK, -1.0 );
  end;

  --------------------------------------------------------
  -- Name: Level.OnLoadedDifficulty()
  -- Desc:
  --------------------------------------------------------
  function Level.OnLoadedDifficulty()
       local diff = Level.GetDifficulty();
       
       if (diff == 0) then
           Level.AddDocuments('SM50', 'DOCS', MissionText.Message_DocsName);
           
           Level.AddKey('GZ29', 'RSEF', MissionText.Key_RadistSeif, "ammo_doc" );
           
           AI.SetJob(AI.FindNPC('GS07'), "easy");
           
       end 
       
       if (diff != 2) then
          Trigger.Enable( Level.FindTrigger('SwitchJob_Trigger'), false );
       end

       if (diff == 3) then
          local disTriggers = { "SimpleTrigger31", "SetupCaptainTrigger", "ChangeSkladJob" };

          for i in disTriggers do
             local t = Level.FindTrigger( disTriggers[i] );
             if ( t != nil ) then
                Level.UnregisterTrigger( t );
             end;
          end

          Level.InstallDpc("Level.StartOfficerScript()", 40.0);
          
          AI.SetJob(AI.FindNPC('GC02'), "DefaultWalk");
          AI.SetJob(AI.FindNPC('GZ23'), "main");
       end
       
       if (Level.GetDifficulty() == 3) then
          local form_eq = { 'GWS1', 'MW03', 'GWSS', 'WGW1' };
          for i in form_eq do
             Level.HideItem( form_eq[i] );
          end

          Level.EnableLevelMark('KANA', false);
       end
  end
  
  --------------------------------------------------------
  -- Name: Level.GetDokGuardsInterval()
  -- Desc:
  --------------------------------------------------------
  function Level.GetDokGuardsInterval()
     if (Level.GetDifficulty() == 2) then
         
         return -1.0;
     end
     
     if (Level.GetDifficulty() == 0) then
         return 60.0;
     end
     
     return 120.0;
  end
  

  
  AI.DoFile( "scripts:Levels\\Common.lua", false );

  
------------------------------- Level logic ----------------------------------

--------------------------------------------------------
-- Name: Level.InstallInitialTasks()
-- Desc:
--------------------------------------------------------
  function Level.InstallInitialTasks()
  
      Level.StartTask(MissionText.Task_Enigma     , 'ENIG', "Levels\\Uboat\\enigma_task.txt" , true );
      Level.StartTask(MissionText.Task_CryptBook  , 'CBOK', "Levels\\Uboat\\crypt_task.txt"  , true );
      Level.StartTask(MissionText.Task_TorpedaInfo, 'GTOR', "Levels\\Uboat\\torpeda_task.txt", true );
      Level.StartTask(MissionText.Task_Leave      , 'LEAV', "Levels\\Uboat\\leave_task.txt"  , true );
      Level.StartTask(MissionText.Task_Sabotage   , 'SABT', "Levels\\Uboat\\torpsab_task.txt", false );
  
  end

--------------------------------------------------------
-- Name: Level.RunLogic()
-- Desc:
--------------------------------------------------------
  function Level.RunLogic(completed)
     return false;
  end

--------------------------------------------------------
-- Name: Level.IsMissionTaskOver()
-- Desc:
--------------------------------------------------------
  function Level.IsMissionTaskOver(taskId)
  
     if ( taskId == 'ENIG' ) then
     
         if ( Actor.HasCustomEquipment( Level.GetPlayer(), 'ENIG') == true ) then
             return true;
         else
             return false;         
         end;
     end;
     
     return Level.IsMissionTaskCompleted(taskId);
     
  end

--------------------------------------------------------
-- Name: Level.StartTask()
-- Desc:
--------------------------------------------------------
  function Level.StartTask(text, taskId, taskDscr, isImportant)
     if (Level.HasMissionTask(taskId) != false) then
        return; 
     end

     Level.AddMissionTask( text, taskId, taskDscr, 0, isImportant );
       
     if     (taskId == 'SABT') then
        Level.EnableLevelMark('TOR1', true);
        Level.EnableLevelMark('TOR2', true);

     elseif (taskId == 'CBOK') then
        Level.SetMissionTaskFloor('CBOK', 2);
     
     elseif (taskId == 'GTOR') then
        Level.SetMissionTaskFloor('GTOR', 3);
     end     
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
     
     if (taskId == 'SABT') then
        Level.EnableLevelMark('TOR1', false);
        Level.EnableLevelMark('TOR2', false);
        
     elseif (taskId == 'ENIG') then
        
        Level.EnableLevelMark('ENIG', false);
        
        if (Level.GetDifficulty() > 1) then
           AI.AddCustomObject('ENCO', 1308.0, -116.0, -883.0);

           if (AI.FindNPC('SM50') != nil) then
              Level.HelpMessage( MissionText.Message_EnigmaInfo );
           end
        end
        
        -- Disable temp zone
        Level.EnableBackpackZone( true );
        
     elseif (taskId == 'GTOR') then
        Level.EnableLevelMark('GTOR', false);
        
     elseif (taskId == 'CBOK') then
        Level.EnableLevelMark('CBOK', false);
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
-- Name: Level.OnEnterTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )
          
     AI.Debug(nil, "Level.OnEnterTriggerArea" .. trgname, "");
     
     if ( trgname == "RadistSeifShow" ) then
     
        local radist = AI.FindNPC('ZS30');
                
        if ( radist != nil ) then --and AI.IsDefault(radist) == true ) then
           AI.SetJob(radist, "seif");
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
        end;
        
     elseif ( trgname == "GeneratorTrigger" ) then
        
        AI.AddSoundFader('GENE', "", 327.35, -12.84, -656.73, 100.0, 200.0);
        
     elseif (trgname == "VodokanalTrigger") then
     
        AI.AddSoundFader('NASA', "", 330.67, -58.97, -622.53, 100.0, 150.0);
               
     elseif ( trgname == "ChangeSkladJob" ) then

        local sk = AI.FindNPC('GZ23' );
        if ( sk != nil ) then -- and AI.IsDefault(sk) == true ) then
           AI.SetJob(sk, "main" );
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
        end;

     elseif ( trgname == "LeaveTrigger" ) then
     
        if ( Level.IsMissionTaskOver('CBOK') == true and
             Level.IsMissionTaskOver('ENIG') == true and
             Level.IsMissionTaskOver('GTOR') == true ) then
             
             Level.FinishTask('LEAV' , true );
             
        end;
             
     elseif ( trgname == "CheckPackTrigger" ) then
     
        if ( Level.IsMissionTaskOver('ENIG') == false ) then
        
             if ( Actor.GetBackPack( Level.GetPlayer() ) == nil ) then
               Level.ClearSmallMessages();
               Level.AddSmallMessage( MissionText.Message_PackNeed, 10.0, 255, 255, 255 );
             end;
        
        else
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );        
        end;
     
     elseif ( trgname == "VodokanalTip" ) then
     
          if ( Level.VodokanalCleared == false ) then
             Level.OnBeginPumpCutScene();
             
             if (Level.GetDifficulty() <= 1) then
                Level.EnableLevelMark('NASS', true );
             end
          end;
                   
          Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
          
     elseif (trgname == "ShowDocumentsTrigger_01" or
             trgname == "ShowDocumentsTrigger_02" or
             trgname == "ShowDocumentsTrigger_03" or
             trgname == "ShowDocumentsTrigger_04") then
     
          Level.AddTimer('SDTM', "OnCheckShowDocumentTrigger", 0.5, true);
          
     elseif (trgname == "CaptainMarkTrigger") then
     
          Level.SetMarkPosition( 'GTOR' , 77.7, -32.6, -448.0 );
          
     elseif (trgname == "NearSeifTrigger") then
          
          if ( (Level.IsMissionTaskCompleted('CBOK') == false) and
               (Actor.HasCustomEquipment( Level.GetPlayer(), 'RSEF') == false) ) then
             
             Level.HelpMessage( MissionText.Message_SeifTips );
            
          end
          
          Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
          
     elseif (trgname == "SetupCaptainTrigger") then
     
        if (Level.CaptainInstalled == false) then
           AI.SetJob(AI.FindNPC('GC02'), "DefaultWalk");
           Level.CaptainInstalled = true;
        end
     
        Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
        
     elseif (trgname == "RunSeamanGuardsPatrolTrigger") then
     
         if (Level.TorpedaScript == false) then
            
            local interval = Level.GetDokGuardsInterval();
            
            if (interval > 0.0) then
               Level.AddTimer( 'RSGT', "OnSeamanGuardsPatrolTimer", interval, true );
            end
            
         end
         
         Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
         
     elseif (trgname == "EnterNetZone" ) then
     
         local netObj = Level.FindWorldObject('KNET');
         if ( netObj != nil and Level.IsWorldObjectExploded(netObj) == true ) then
            Level.UnregisterTrigger( Level.FindTrigger( trgname ) );         
         else
            Level.OnNearNet();         
         end;
        
     elseif (trgname == "ChangeBackPackZone01" or
             trgname == "ChangeBackPackZone02" or
             trgname == "ChangeBackPackZone03" or
             trgname == "ChangeBackPackZone04" or
             trgname == "ChangeBackPackZone05" or
             trgname == "ChangeBackPackZone06" or
             trgname == "ChangeBackPackZone07" or
             trgname == "ChangeBackPackZone08" or
             trgname == "ChangeBackPackZone09" or
             trgname == "ChangeBackPackZone10") then
     
          Level.BackPackZoneId = tonumber(trgcmd);
          
          AI.SetState("disable_cin_event", "EVENT_SHOW_STOP_MOVE");               
     elseif ( trgname == "WaterEnter" or trgname == "WaterEnter2" ) then
     
         if ( Level.VodokanalCleared == false ) then
             Level.KillPlayer( 0.0, 0.75, 1.0 );         
         end;
         
     end;

  end
  
--------------------------------------------------------
-- Name: Level.OnLeaveTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )
     AI.Debug(nil, "Level.OnLeaveTriggerArea" .. trgname, "");
          
     if (trgname == "ShowDocumentsTrigger_01" or
         trgname == "ShowDocumentsTrigger_02" or
         trgname == "ShowDocumentsTrigger_03" or
         trgname == "ShowDocumentsTrigger_04") then
         
          Level.RemoveTimer('SDTM');
          --Level.RemovePlayerAction('SHDC');
          Level.SafeRemoveLevelPlayerAction('SHDC');
          
     elseif ( trgname == "GeneratorTrigger" ) then
        
        AI.RemoveSoundFader('GENE');

     elseif (trgname == "VodokanalTrigger") then
     
        AI.RemoveSoundFader('NASA');
          
     end;
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
       
     -- TODO...
     if ( id == "BreakStationTrigger") then
     
        -- todo: Sound
        
        if ( Level.StartPlayerCustomAnim("Custom_BreakTorpedo_Crouch", 2, true, true, 'BSTG') == false ) then        
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 6.5 );
        Level.AddPlayerAiSound(50.0);
        Level.UseMarkRadi = false;
        Level.EnableLevelMark('RADI', false);       
     
     elseif (id == "TurnOffLectionTrigger") then
                
        if ( Level.StartPlayerCustomAnim("Custom_PressButton", 0, true, true, 'TOLR', false) == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 1.5 );
        Level.EnableLevelMark('SVET', false);                

     elseif (id == "TurnOffConferenceTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_PressButton", 0, true, true, 'TOCR', false ) == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        Level.EnableLevelMark('SVET', false);
        
     elseif (id == "PoissonTrigger") then
              
        if ( Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == false ) then
           Level.AddSmallMessage( MissionText.Poison_Need, 8.0, 255, 255, 255 );
           return false;        
        end;
        
        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'UPSN') == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        Level.EnableLevelMark('POIS', false);

     elseif ( id == "GetTorpedasInfo" ) then
           
        if ( Level.StartPlayerCustomAnim("Custom_SearchBookshelf", 0, true, true, 'GTOR' ) == false ) then           
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 6.5 );
                        
     elseif (id == "BrakeGeneratorTrigger") then
     
        -- todo: Sound
        
        if ( Level.StartPlayerCustomAnim("Custom_BreakTorpedo_Crouch", 2, true, true, 'BRGN' ) == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 6.5 );
        Level.UseMarkSgen = false;
        Level.EnableLevelMark('SGEN', false);
     
     elseif (id == "BrakeBigGeneratorTrigger") then

        Level.EnableLevelMark('GENE', false);
                  
        if ( Level.StartPlayerCustomAnim("Custom_BreakRadar2", 0, true, true, 'BBGN' ) == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
     elseif (id == "CloseFuelTrigger") then     

        if ( Level.StartPlayerCustomAnim("Custom_CloseFuelCrane_Crouch", 2, true, true, 'CLFL' ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
     elseif (id == "PumpTrigger") then
     
        if ( Level.StartPlayerCustomAnim("Custom_PressButton", 0, true, true, 'USPM', false ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 80.0, 120.0, 1.5 );
        Level.EnableLevelMark('NASS', false);
               
     elseif (id == "DropTorpedaTrigger") then
                   
        if ( Level.StartPlayerCustomAnim("Custom_PressButton", 0, true, true, 'DRTR', false ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 80.0, 120.0, 1.5 );
                          
     elseif (id == "BreakTorpeda1_Trigger" or
             id == "BreakTorpeda2_Trigger") then
                        
        local assignId = {};
        
        assignId["BreakTorpeda1_Trigger"] = 'BRTR';
        assignId["BreakTorpeda2_Trigger"] = 'BRT2';
        
        if ( Level.StartPlayerCustomAnim("Custom_BreakTorpedo_Crouch", 2, true, true, assignId[id] ) == false ) then
             return false;        
        end;
        
        AI.StartDecamouflage( 80.0, 120.0, 6.5 );
        
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
     
     if ( id == "BreakStationTrigger") then
        if (Level.StationBroken == false) then
           return MissionText.Message_BrakeRadio;
        end
        
     elseif (id == "TurnOffConferenceTrigger") then

        if (Level.ConferenceLightState == true and Level.GetDifficulty() != 3) then
           return MissionText.Message_TurnOffConference;
        end
        
     elseif (id == "TurnOffLectionTrigger" and Level.GetDifficulty() != 3) then
     
        if (Level.LectionLightState == true) then
           return MissionText.Message_TurnOffLection;
        end
        
     elseif (id == "PoissonTrigger") then
      
        if (Level.VinePoisson == false ) then
           return MissionText.Message_PoissonVine;
        end
        
     elseif ( id == "GetTorpedasInfo" ) then
                     
        return MissionText.Message_GetTorpedasInfo;
        
     elseif ( id == "BrakeGeneratorTrigger") then
     
        return MissionText.Message_BrakeGenerator;
        
     elseif (id == "CloseFuelTrigger") then
        
        if (Level.FuelClosed == false and Level.GetDifficulty() != 2) then
           return MissionText.Message_CloseFuel;
        end
        
     elseif (id == "BrakeBigGeneratorTrigger") then
     
        return MissionText.Message_BrakeBigGenerator;
     
     elseif (id == "PumpTrigger") then
     
        if (Level.PumpPressed == false) then
           return MissionText.Message_UsePump;
        end
        
     elseif (id == "DropTorpedaTrigger") then
      
        return MissionText.Message_DropTorpeda;
        
     elseif (id == "BreakTorpeda1_Trigger" or
             id == "BreakTorpeda2_Trigger") then
             
        if (Level.IsMissionTaskCompleted('SABT') == false) then
           
           return MissionText.Message_Sabotage;
           
        end
     
     end;

     return nil
  end

--------------------------------------------------------
-- Name: Level.OnAlert()
-- Desc:
--------------------------------------------------------
  function Level.OnAlert( alertGroupId )
     AI.Debug(npc, "Level.OnAlert", tostring(alertGroupId));
     
     -- Alert groups:
     -- 0        |  Garage and pump territory            |    Soldiers, Workers, Guards
     -- 1        |  Generator and second floor           |    SS patrol, Soldiers, Worker
     -- 2        |  Third floor                          |    SS soldiers, Soldier
     -- 3        |  Officers and seaman at third floor   |    Officers, Seaman
     -- 4        |  Radist room                          |    Radist, SS soldiers
     -- 5        |  Guards room near angar               |    SS soldiers
     -- 6        |  Angar                                |    Seaman and mechanics
     -- 7        |  Dock 2                               |    Seaman and mechanics
     -- 8        |  Docks third floor                    |    Mechanics and seaman
     -- 9        |  UBoat dock                           |    Seaman and mechanics
     -- 10       |  Guards room near Uboat dock          |    Seaman
     -- 11       |  Submarine                            |    Seaman and mechanic
     
     Level.AlarmMessage( MissionText.Message_Alarm );
     
     AI.AddAlertValue(2); 
     
     if (alertGroupId == 0) then
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "0", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
     elseif (alertGroupId == 1) then
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "0", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
     elseif (alertGroupId == 2 or
             alertGroupId == 3 or
             alertGroupId == 4) then
        
        AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "5");
        AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "10");

        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "2", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
        
     elseif (alertGroupId == 5 or
             alertGroupId == 6 or
             alertGroupId == 7 or
             alertGroupId == 8 or
             alertGroupId == 9 or
             alertGroupId == 10 or
             alertGroupId == 11) then
             
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "5", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "6", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "7", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "9", AI.ATTENTION_ALARM, true);
        AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "10", AI.ATTENTION_ALARM, true);
        
        if (alertGroupId == 11) then
           AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "11", AI.ATTENTION_ALARM, true);
        end

        AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "6");
        AI.StartFinding(AI.AI_TARGET_ALERT_GROUP, "10");

        AI.SafeFind(AI.FindNPC('GS28'), true);
        AI.SafeFind(AI.FindNPC('GS29'), true);
        AI.SafeFind(AI.FindNPC('GS30'), true);
        AI.SafeFind(AI.FindNPC('GS31'), true);
        AI.SafeFind(AI.FindNPC('GS33'), true);
        
     end

     -- Set alert
     for i = 0, 11 do
        AI.SetLocalAlert( i, true, 10.0 * 60.0 );
     end
     
     -- Alarm sound
     Level.EnableAlarmSound( true );
     
     -- Enable globat alert zone...
     AI.OnPlayerEnterZone("AlertZone", 'ALZN');
     
     Level.CaptainInstalled = true;
     
     if (Level.AlertCalled == false) then
        -- Change actors jobs...

        AI.SetJob("alive", "alert");
        
        Level.AlertCalled = true;
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnFinishAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level.OnFinishAlert", tostring(alertGroupId));
     
     AI.SetLocalAlert( alertGroupId, false );
     
     for i = 1, 11, 1 do
        if (AI.IsLocalAlert( i ) == true) then
           return;
        end
     end
     
     for i = 0, 11 do
        AI.SetLocalAlert( i, false );
     end
     
     Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
     Level.EnableAlarmSound( false );     
     
     AI.OnPlayerLeaveZone("AlertZone", 'ALZN');
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

     local npcForm   = AI.GetForm( npc );
     local zone      = AI.GetPrimaryPlayerZone( npc );
     local playerForm = AI.GetPlayerForm();

     if (zone == nil) then 
        return;
     end
     
     if (zone == "BackpackZone") then
        
        if ((Level.GetSearchMan() == nil) and 
            (Level.Searching == false)) then
           
           -- assert(Actor.GetBackPack(Level.GetPlayer()) != nil );

           local messages = { MissionText.Message_CS_StopMove_Search,
                              MissionText.Message_CS_StopMove_DontMove };
           local voices = { "male_ger_script_script_16",
                            "male_ger_script_script_17" };
           
           
           local cutSceneId = "BackPackZone_" .. tostring(Level.BackPackZoneId);
           local cameraId   = "Levels\\UBoat\\backpack_" .. tostring(Level.BackPackZoneId) .. ".scm";
           
           if (Level.BackPackZoneId != -1) then
       
              local dofParams = nil;                          
       
              if ( Level.BackPackZoneId >= 1 and Level.BackPackZoneId <= 3 ) then
                dofParams = { 1, 0.0, 120.0, 150.0, 255 };
              elseif ( Level.BackPackZoneId == 4 ) then
                dofParams = { 3, 20.0, 120.0, 200.0, 255 };              
              elseif ( Level.BackPackZoneId == 5 ) then
                dofParams = { 1, 0.0, 120.0, 180.0, 255 };              
              elseif ( Level.BackPackZoneId == 6 ) then
                dofParams = { 1, 0.0, 90.0, 110.0, 255 };              
              end; 
              
              Level.BeginCutScene(cutSceneId, cameraId, messages, 3.0, dofParams );
              AI.HandleVoice( npc, "~3male_ger_script_script_16" );
              
           else
           
              Level.AddSmallMessage( MissionText.Message_StopMove_Search, 5.0, 175, 175, 175 );
              AI.HandleVoice( npc, "~3male_ger_script_script_16" );
              
           end           
           
           Level.InitLookObjectTask(npc, nil);

        else
           if (random() < 0.8) then
              Level.AddSmallMessage( MissionText.Message_StopMove_DontMove, 5.0, 175, 175, 175 );
              AI.HandleVoice( npc, "~3male_ger_script_script_17" );
           else
              Level.AddSmallMessage( MissionText.Message_StopMove_Docs, 5.0, 175, 175, 175 );
              AI.HandleVoice( npc, "~3male_ger_script_script_19" );
           end              
        end
        
        return;
     end
     
     if     (playerForm == "Driver") then
        if (random() < 0.6) then
           Level.AddSmallMessage( MissionText.Message_StopMove_Driver_1, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_ger_stopmove_stopmove_11" );
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_Driver_2, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_ger_stopmove_stopmove_11" );
        end
        
        return;
     elseif (playerForm == "Radist") then
        if (random() < 0.6) then
           Level.AddSmallMessage( MissionText.Message_StopMove_Radist_1, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_ger_stopmove_stopmove_12" );
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_Radist_2, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_ger_stopmove_stopmove_12" );
        end
        
        return;
     end
     
     if (zone == "Generator") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_Generator, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_22" );
        
     elseif (zone == "Nasos") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Nasos, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_22" );
        
     elseif (zone == "GeneratorUp") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_GeneratorUp, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_22" );
        
     elseif (zone == "ThirdFloor") then
        
        if (playerForm == "Worker") then
            Level.AddSmallMessage( MissionText.Message_StopMove_ThirdFloor_Worker, 5.0, 175, 175, 175 );
            AI.HandleVoice( npc, "male_ger_stopmove_stopmove_08" );
        else
            Level.AddSmallMessage( MissionText.Message_StopMove_ThirdFloor, 5.0, 175, 175, 175 );
            AI.HandleVoice( npc, "male_ger_stopmove_stopmove_08" );
        end

     elseif (zone == "LectionRoom" or
             zone == "LectionRoomEnter") then
             
        Level.AddSmallMessage( MissionText.Message_StopMove_LectionRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_ger_stopmove_stopmove_03" );
        
     elseif (zone == "ConfRoom" or 
             zone == "ConfRoomEnter") then
             
        Level.AddSmallMessage( MissionText.Message_StopMove_ConfRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_ger_stopmove_stopmove_03" );
        
     elseif (zone == "OfficerPart") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_OfficerPart, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_ger_stopmove_stopmove_13" );
        
     elseif (zone == "CaptainRoom") then
     
        if (npcForm != "Captain") then
           Level.AddSmallMessage( MissionText.Message_StopMove_CaptainRoom, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "~3male_ger_script_script_23" );
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_CaptainRoom_Captain, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_ger_stopmove_stopmove_14" );
        end
        
     elseif (zone == "GuardsRoom" or 
             zone == "GuardsRoomEnter") then

        Level.AddSmallMessage( MissionText.Message_StopMove_GuardsRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_ger_stopmove_stopmove_15" );
        
     elseif (zone == "WeaponAngar") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_WeaponAngar, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_ger_stopmove_stopmove_16" );
     
     elseif (zone == "Dock" or
             zone == "DockEnter") then
             
        Level.AddSmallMessage( MissionText.Message_StopMove_Dock, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_24" );
        
     elseif (zone == "RadistRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_RadistRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "@v_stop_move" );

     elseif (zone == "RadistRoomNear") then
     
        if (playerForm == "Seeman" or
            playerForm == "SubmarineSeeman") then
           
           Level.AddSmallMessage( MissionText.Message_StopMove_RadistRoomNear_Seeman, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "@v_stop_move" );
           
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_RadistRoomNear, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "@v_stop_move" );
        end
        
     elseif (zone == "BoatTrigger") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_BoatTrigger, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_25" );
        
        for i in Level.TargetBots do
           local actor = Level.FindActor(Level.TargetBots[i]);
           if (actor != nil) then
              Actor.MarkAsTarget( actor, true );
           end
        end
        
     elseif (zone == "BoatAlarmNear") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_BoatAlarmNear, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "~3male_ger_script_script_25" );
        
        for i in Level.TargetBots do
           local actor = Level.FindActor(Level.TargetBots[i]);
           if (actor != nil) then
              Actor.MarkAsTarget( actor, true );
           end
        end
        
     end
     
     
     -- TODO
     AI.HandleVoice( npc, AI.VOICE_STOP_MOVE );
  end

  --------------------------------------------------------
  -- Name: Level.OnNearBoatEnter()
  -- Desc:
  --------------------------------------------------------
  function Level.OnNearBoatEnter()
     for i in Level.TargetBots do
        local actor = Level.FindActor(Level.TargetBots[i]);
        if (actor != nil) then
           Actor.MarkAsTarget( actor, false );
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnRunSeamanGuardsPatrolTimer()
  -- Desc:
  --------------------------------------------------------
  function Level.OnSeamanGuardsPatrolTimer()
     if (Level.TorpedaScript == true) then
        Level.RemoveTimer( 'RSGT' );
        return;
     end
     
     if (Level.GetDifficulty() != 2) then
        Level.RunAnchorJobIfDefault(AI.FindNPC('SM41'), 'A244');
        Level.RunAnchorJobIfDefault(AI.FindNPC('SM39'), 'A243');
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnEnterResetBackpackTrigger()
  -- Desc:
  --------------------------------------------------------
  function Level.OnResumeBackpackZone()
     Level.EnableBackpackZone( true );
  end

  --------------------------------------------------------
  -- Name: Level.OnStartPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStartPlayerCustomAnim( animId )
  
     if ( animId == "TOLR") then
        
        Level.AddPlayerAiSound(10.0);
        Level.InstallDpc("Level.PlayCustomSound('SCRbutton01')", 0.5);
        
     elseif ( animId == "TOCR") then

        Level.AddPlayerAiSound(10.0);             
        Level.InstallDpc("Level.PlayCustomSound('SCRbutton02')", 0.5);
          
     elseif ( animId == "GTOR" ) then
     
        Level.PlayCustomAnimSound( 'BookShelf' );        
          
     elseif ( animId == "BBGN") then

        Level.PlayCustomAnimSound( 'CrashRadar' );
                  
     elseif ( animId == "USPM") then
                             
        Level.InstallDpc("Level.PlayCustomSound('SCRbutton03')",0.5);
        Level.InstallDpc("Level.PlayCustomSound('SCRnasos02')",0.6 );
        
     elseif ( animId == "DRTR") then
                     
        Level.InstallDpc("Level.PlayCustomSound('SCRbutton04')", 0.5);
        
     elseif ( animId == "CLFL" ) then
     
        Level.PlayCustomAnimSound( 'OilStop' );
     
     elseif ( animId == "BRTR" ) then
     
        Level.PlayCustomAnimSound( 'CrashTimer' );
     
     elseif ( animId == "BRT2" ) then
     
        Level.PlayCustomAnimSound( 'CrashTimer01' );
     
     end;
                 
  end;

  --------------------------------------------------------
  -- Name: Level.ChangeConferenceLightCSCamera()
  -- Desc:
  --------------------------------------------------------
  function Level.ChangeConferenceLightCSCamera(index)
 
     local name = "Levels\\UBoat\\conf_room_" .. tostring(index) .. ".scm";
     
     local dofParams = nil;
 
     if ( index == 3 ) then
       dofParams = { 1, 0.0, 100.0, 150.0, 255 };
     elseif ( index == 2 ) then
       dofParams = { 1, 0.0, 60.0, 100.0, 255 };
     elseif ( index == 1 ) then
       dofParams = { 1, 0.0, 150.0, 250.0, 255 };
     end;
     
     Level.ChangeCamCutScene( "TurnOffLectionLight", name, dofParams );
  end  
  
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
     
     if (animUniqueId == 'BSTG') then
        
        Level.StationBroken = true;
        Level.EnableSound('radio_b1', false );
        
     elseif (animUniqueId == 'TOCR') then
       
        Level.InstallDpc("Level.OnTurnConferenceLight( false )", 4.0);

        Level.BeginCutScene( "TurnOffLectionLight", "Levels\\UBoat\\conf_room_4.scm", "", 21.5 );        
        Level.InstallDpc("Level.ChangeConferenceLightCSCamera(3)", 2.0);
        Level.InstallDpc("Level.ChangeConferenceLightCSCamera(2)", 11.0);
        
     elseif (animUniqueId == 'TOLR') then        

        Level.InstallDpc("Level.OnTurnLectionLight( false )", 1.0);
        Level.BeginCutScene( "TurnOffConferenceLight", "Levels\\UBoat\\lection_room.scm", "", 6.5, { 1, 0.0, 150.0, 250.0 , 255 }  );
                
     elseif (animUniqueId == 'UPSN') then
     
        Level.VinePoisson = true;

     elseif ( animUniqueId == 'GTOR' ) then
     
        Level.FinishTask('GTOR', true);
        
     elseif (animUniqueId == 'BRGN' ) then
     
        Level.GeneratorBrake = true;
        
     elseif (animUniqueId == 'CLFL') then
        
        Level.FuelClosed = true;
        Level.EnableLevelMark('KRAN',false);
        
     elseif (animUniqueId == 'BBGN') then
     
        Level.PlayEffect( "levels\\uboat\\radio_break.sef" , 330.0, -12.2, -750.0 );        
        Level.InstallDpc("Level.OnBigGeneratorBroken()", 2.5);
        Level.PlayCustomSound('DamageRadar');
        
        Level.GeneratorRoomBreak = true;
        Level.UpdateGeneratorRoomLight();
                
        Level.RunAnchorJob2_Run(AI.FindNPC('GW06'), 'A238', 'A241', true);
        --AI.HandleVoice( AI.FindNPC('GW06'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
        AI.HandleVoice( AI.FindNPC('GW06'), "male_ger_ohers_chto_takoe_alarm");
        
        Level.AddPlayerAiSound(30.0);
        
        Level.EnableSound('generator01', false);
        Level.EnableSound('generator02', false);
        Level.EnableSound('SCRzvonok01', true );
        
     elseif (animUniqueId == 'USPM') then
        
        Level.InstallDpc("Level.StartPump()", 8.0);
        Level.PumpPressed = true;
        
        -- TODO. Enlarge volume of pump sound during 8 seconds
        
     elseif (animUniqueId == 'DRTR') then
     
        Level.StartTorpedaScript();
        Level.EnableLevelMark('TORP', false);
        
     elseif (animUniqueId == 'BRTR' or animUniqueId == 'BRT2' ) then
     
        Level.FinishTask('SABT');
        
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
  -- Name: Level.ResumeBigGenerator()
  -- Desc:
  --------------------------------------------------------
  function Level.ResumeBigGenerator()
     Level.GeneratorRoomBreak = false;
     Level.UpdateGeneratorRoomLight();
  
     Level.EnableSound('generator01', true);
     Level.EnableSound('generator02', true);
     Level.EnableSound('SCRzvonok01', false );
  end

  --------------------------------------------------------
  -- Name: Level.SafeDisableLadder()
  -- Desc:
  --------------------------------------------------------
  function Level.SafeDisableLadder( onOff )
  
    local t = Level.FindTrigger('SimpleTrigger13');
    if ( t == nil ) then
       return;
    end;
      
    if ( onOff == false ) then
    
       Trigger.Enable( t, false );
       
       if ( Trigger.IsIntersectNode( t, Entity.GetNode( Level.GetPlayer() ) ) == true ) then         
         Actor.LeaveStairArea( Level.GetPlayer() );                
       end;
       
    else
       Trigger.Enable( t, true );    
    end;
    
  end;
  
  --------------------------------------------------------
  -- Name: Level.StartPump()
  -- Desc:
  --------------------------------------------------------
  function Level.StartPump()
  
     Level.ClearVodokonal( true );
     Level.EnableLevelMark('NASS', false );
     
     local minutes = 4.0;
     if (Level.MinutesHack != nil) then
        minutes = Level.MinutesHack;
     end
     
     Level.VodokanalTimer = minutes * 60.0; -- + 15.0;
     Level.OnVodokanalPumpMessage();
     
     Level.AddTimer( 'VPMP', "OnVodokanalPumpMessage", 30.0, true );
     
     Level.RunAnchorJob2(AI.FindNPC('GW05'), 'A209', 'A210', true);
     Level.RunAnchorJob2(AI.FindNPC('GW04'), 'A208', 'A211', true);
     
     --AI.HandleVoice( AI.FindNPC('GW05'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
     --AI.HandleVoice( AI.FindNPC('GW04'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
     AI.HandleVoice( AI.FindNPC('GW05'), "male_ger_ohers_chto_proizoshlo");
     AI.HandleVoice( AI.FindNPC('GW04'), "male_ger_ohers_chto_takoe");
     
     
     Level.EnableSound("SCRnasos01", true);
  end

  --------------------------------------------------------
  -- Name: Level.OnVodokanalPumpMessage()
  -- Desc:
  --------------------------------------------------------
  function Level.OnVodokanalPumpMessage()
  
     Level.VodokanalTimer = Level.VodokanalTimer - 30.0;
     
     if ( Level.VodokanalTimer < 0.0 or Level.VodokanalTimer == 0.0 ) then
     
        Level.AddSmallMessage( MissionText.Message_Vodokanal_2, 15.0, 255, 0, 0 );
        Level.AddTimer( 'CPTM', "OnCheckPump", 5.0, true );
     
        Level.RemoveTimer( 'VPMP' );
        
        Level.PlayCustomSound( 'water01' );
        Level.PlayCustomSound( 'water02' );
        Level.PlayCustomSound( 'water03' );
        Level.PlayCustomSound( 'water04' );
        
        return;
        
     end;
               
     local minutes = floatToInt( Level.VodokanalTimer / 60.0 );
     local seconds = floatToInt( Level.VodokanalTimer - ( minutes * 60.0 ) );
     
     if ( minutes < 0 ) then
       minutes = 0;
     end;
     
     if ( seconds < 0 ) then
       seconds = 0;
     end;

     local msg;
     
     if ( minutes < 10 ) then
     
        msg = MissionText.Message_Vodokanal_1 .. '0' .. tostring( minutes );
             
     else
     
        msg = MissionText.Message_Vodokanal_1 .. tostring( minutes );
     
     end;
     
     if ( seconds < 10 ) then
     
        msg = msg .. ':0' .. tostring( seconds );
        
     else
     
        msg = msg .. ':' .. tostring( seconds );
        
     end;
     
     Level.AddSmallMessage( msg, 10.0, 255, 255, 255 );
  
  end

  --------------------------------------------------------
  -- Name: Level.CheckVodDoorTimerClosed()
  -- Desc:
  --------------------------------------------------------  
  function Level.CheckVodDoorTimerClosed()
        
   local door = Level.FindDoor('VDOR');
   if ( door == nil ) then
      Level.RemoveTimer('VDRC');
      return;     
   end;
     
   local playerRoom = Entity.GetRoomId( Level.GetPlayer() );
   if ( playerRoom == 'VODK' ) then
     
      Level.KillPlayer( 0.0, 0.75, 1.0 );
        
      if ( Actor.IsDead( Level.GetPlayer() ) == false ) then
         return;
      end;
     
   end;
   
   if ( Level.IsDoorOpened(door) == true ) then
         
      Level.SafeDisableLadder(false);
      Level.RemoveTimer('VDRC');

   end;
  
end;
  

  --------------------------------------------------------
  -- Name: Level.CheckPump()
  -- Desc:
  --------------------------------------------------------
  function Level.OnCheckPump()
          
     local playerRoom = Entity.GetRoomId( Level.GetPlayer() );
     if ( playerRoom == 'VODK' ) then
     
        Level.KillPlayer( 0.0, 0.75, 1.0 );
        
        if ( Actor.IsDead( Level.GetPlayer() ) == false ) then
                
          return;
          
        end;
     
     end;
     
     Level.ClearVodokonal( false );
     
     Level.CloseDoor( Level.FindDoor('VDOR'), false, Level.GetPlayer() );
     Level.CloseDoor( Level.FindDoor('VDDK'), true , Level.GetPlayer() );
     
     Level.AddTimer( 'VDRC', "CheckVodDoorTimerClosed", 0.5, true );     
     Level.RemoveTimer( 'CPTM' );
     
     Level.EnableSound("SCRnasos01", false);
     
     Level.PumpPressed = false;
  end

  --------------------------------------------------------
  -- Name: Level.OnBigGeneratorBroken()
  -- Desc:
  --------------------------------------------------------
  function Level.OnBigGeneratorBroken()
     local npc = AI.FindNPC('GM19');
     if (AI.IsDefault(npc) == true) then
        Level.RunAnchorJob2_Run(npc, 'A203', 'A204', true);
        Level.InstallDpc("Level.OnBeginGenCutScene()", 1.0);
     end 
  end

  --------------------------------------------------------
  -- Name: Level.OnFinishCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishCutScene( cutscene, boolBreaked, cutsceneName )
      CutScene.Activate(nil);
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnBeginGenCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.OnBeginGenCutScene()
      
   local ns = Level.FindCutScene('generator');
   if ( ns == nil ) then
      Level.AddCinematicCamera('Levels\\UBoat\\generator.scm', 1, 0.0, 60.0, 100.0, 255 );
          
      ns = Level.NewCutScene('generator', 0.0, 210.0 );
          
      CutScene.SetCamera( ns, 'Levels\\UBoat\\generator.scm');
      CutScene.SetBlurEffect( ns, 0.0 );
      CutScene.AddSubTitle( ns, MissionText.Message_BigGeneratorBrake, 0.0, 210.0 );
   end;
        
   CutScene.Play( ns, 30.0 );
   CutScene.Activate( ns , true );
   
   Level.InstallDpc("Level.PlayCustomSound('Script08_Sound')", 0.5);
   
   -- TODO activate sample...    
      
  end;
  

  --------------------------------------------------------
  -- Name: Level.OnBeginShowPumpCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.OnBeginPumpCutScene()
      
   local ns = Level.FindCutScene('pump');
   if ( ns == nil ) then
        
      Level.AddCinematicCamera('Levels\\UBoat\\pump.scm');
          
      ns = Level.NewCutScene('pump', 0.0, 150.0 );
          
      CutScene.SetCamera( ns, 'Levels\\UBoat\\pump.scm');
      CutScene.SetBlurEffect( ns, 0.0 );
      CutScene.AddSubTitle( ns, MissionText.Message_Vodokanal, 0.0, 150.0 );
                             
   end;
        
   CutScene.Play( ns, 30.0 );
   CutScene.Activate( ns , true );
            
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnFuelOpened()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFuelOpened()
     Level.FuelClosed   = false;
  end

  --------------------------------------------------------
  -- Name: Level.OnFuelOpened()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckFuelClosed()
     if (Level.FuelClosed == true) then
        Level.RunAnchorJob_Run(AI.FindNPC('GM28'), 'A200', true);
     end
  end
  
  --------------------------------------------------------
  -- Name: Level.OnUseRadioForce()
  -- Desc:
  --------------------------------------------------------
  function Level.OnUseRadioForce()
  
    local actor = Level.FindActor('GS19');
    if ( actor != nil ) then
         Actor.ApplyForce( actor, -15000.0, -15000.0,20000.0 );
    end;
        
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnUseRadio()
  -- Desc:
  --------------------------------------------------------
  function Level.OnUseRadio()
     if (Level.StationBroken == true) then
        
        local npc = AI.FindNPC('GS19');
        
        AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
        AI.KillNPC( npc, 0.0, AI.HIT_DAMAGE );
        
        Level.AddTimer( 'URFR', "OnUseRadioForce", 0.05, false );
      
        Level.PlayEffect( "levels\\uboat\\radio_break.sef" , 163.0, 30.1, -474.0 );
        --Level.EnableSound('radio_b1', false );
        Level.PlayCustomSound('DamageRadio');
     end
  end
  

------------------------- Check Backpack script ----------------------------------------

  --------------------------------------------------------
  -- Name: Level.GetSearchMan()
  -- Desc:
  --------------------------------------------------------
  function Level.GetSearchMan()
     
     local job = AI.GetScriptJob("TASK_SCRIPT_LOOK_OBJECT");
     if (job != nil) then
        return Job.GetNPC( job );
     end
     
     return nil; 
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
  -- Name: Level.OnCheckPositionTimer()
  -- Desc:
  --------------------------------------------------------
  function Level.OnCheckPositionTimer()
     local player = Level.GetPlayer();
     local n = Entity.GetNode(player);
     local pos = {};
     pos.x, pos.y, pos.z = node.GetPosition( n );
     
     if (Level.GetSearchMan() == nil) then
        Level.RemoveTimer('CPTM');
        return;
     end
     
     local critic_dist = 10.0;
     if (Level.GetDifficulty() == 0) then
        critic_dist = 25.0;
     end
     
     if (balance_distance(Level.PlayerPosition.x, Level.PlayerPosition.y, Level.PlayerPosition.z,
                          pos.x, pos.y, pos.z) > critic_dist) then

        if (Level.SeachFirstTry == true) then
           
           Level.SeachFirstTry = false;
           
           -- TODO... Add voice message
           Level.AddSmallMessage( MissionText.Message_StopMove_DontMove, 5.0, 175, 175, 175 );           
           
           Level.PlayerPosition.x = pos.x;
           Level.PlayerPosition.y = pos.y;
           Level.PlayerPosition.z = pos.z;

        else
           AI.StartDecamouflage( 100.0, 150.0, 3.0 );
        end        
     end
  end

  --------------------------------------------------------
  -- Name: Level.CheckLookObjectTaskCondition()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckLookObjectTaskCondition( npc, uid )
     local zone = AI.GetPrimaryPlayerZone( npc );
     return (zone == "BackpackZone") or 
            (Level.BackPackState == false);
  end

  --------------------------------------------------------
  -- Name: Level.ResetBackPackScript()
  -- Desc:
  --------------------------------------------------------
  function Level.ResetBackPackScript()
     local npc = Level.GetSearchMan();
     
     if (npc != nil) then
        AI.ChangeLogic( npc, "Soldier" );
     end
     
     Level.RemoveTimer( 'CPTM' );
     Level.Searching = false;
  end
  
  --------------------------------------------------------
  -- Name: Level:OnPlayerAction()
  -- Desc:
  --------------------------------------------------------
  function Level:OnPlayerAction(id)
     
     if (id == 'SHDC') then
        Level.EnableBackpackZone(false, 120.0);
        --Level.RemovePlayerAction('SHDC');
        Level.SafeRemoveLevelPlayerAction('SHDC');
        
        Level.StartPlayerCustomAnim("Custom_PassticketShow", 0, true, true);

        Level.ResetBackPackScript();
        
        local npc = Level.GetSearchMan();

        AI.FailTask( npc, AI.TASK_SCRIPT_DEFAULT );
        
        -- Add new script task
        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", "Level.OnReadDocs()" );

        AI.RunScriptTask(npc, "scripts:job\\ReadDocsTask.lua", AI.LOGIC_DEFAULT, properties);
        
        Level.ActivateTempZone();
     end
  end

  --------------------------------------------------------
  -- Name: Level.ActivateTempZone()
  -- Desc:
  --------------------------------------------------------
  function Level.ActivateTempZone()
     AI.EnableZone("TempZone", true);
     Level.InstallDpc("AI.EnableZone('TempZone', false)", 7.0);
  end

  --------------------------------------------------------
  -- Name: Level.OnReadDocs()
  -- Desc:
  --------------------------------------------------------
  function Level.OnReadDocs()
     -- TODO... Change to voice message
     Level.AddSmallMessage( MissionText.Message_StopMove_DocsClear, 5.0, 175, 175, 175 );
     AI.HandleVoice( Level.GetReadDocsMan(), "~3male_ger_script_script_31");
  end
  
  --------------------------------------------------------
  -- Name: Level.OnBackpackWatched()
  -- Desc:
  --------------------------------------------------------
  function Level.OnBackpackWatched()
     
     if (Level.HasForbidObjects() == true) then
        
        AI.DecamouflagePlayer(Level.GetSearchMan());
        
     else
        Level.EnableBackpackZone(false, 120.0);
        
        -- TODO
        -- Change to voice message   
        Level.AddSmallMessage( MissionText.Message_StopMove_Clean, 5.0, 175, 175, 175 );
        AI.HandleVoice(Level.GetSearchMan(), "~2male_ger_script_script_18");
        
        Level.ActivateTempZone();
     end
     
     Level.ResetBackPackScript();
  end

  --------------------------------------------------------
  -- Name: Level.OnBackpackWatched()
  -- Desc:
  --------------------------------------------------------
  function Level.EnableBackpackZone(bOnOff, time)
     if (bOnOff == true) then

        if (Level.HasBackPack == true) then
           AI.EnableZone("BackpackZone", true);
           Level.RemoveTimer( 'RSBT' );
        end

     else
        AI.EnableZone("BackpackZone", false);
        
        if (time > 0.0) then
           Level.AddTimer( 'RSBT', "OnResetBackPackZoneTimer", time, false);
        else
           Level.RemoveTimer( 'RSBT' );
        end
     end
  end
  
  --------------------------------------------------------
  -- Name: Level.OnResetBackPackZoneTimer()
  -- Desc:
  --------------------------------------------------------
  function Level.OnResetBackPackZoneTimer()
     AI.EnableZone('BackpackZone', true)
  end
 
  --------------------------------------------------------
  -- Name: Level.HasForbidObjects()
  -- Desc:
  --------------------------------------------------------
  function Level.HasForbidObjects()
     
     if (Level.LastBackPackId == "") then
        return false;
     end
     
     local backpack = Level.FindContainer(Level.LastBackPackId);
     if (backpack == nil) then
        return false;
     end
     
     if (ItemPack.HasCustomItem(backpack, 'ENIG') == true) then
        return true;
     end
     
     local pistolIndex = ItemPack.FindWeapon( backpack, Level.WEAPON_CLASS_PISTOL );
     if ( pistolIndex >= 0 ) then
        if ( ItemPack.IsDangerItem( backpack, pistolIndex ) == true ) then
           return true;
        end;
     end;
     
     Level.IsBadBackpackObject = false;
     
     ItemPack.ForEach( backpack, "CheckBadBackpackObject" );
     
     if (Level.IsBadBackpackObject == true) then
        return true;
     end

     return false;
  end

--------------------------------------------------------
-- Name: Level.CheckBadBackpackObject()
-- Desc:
--------------------------------------------------------
  function Level.CheckBadBackpackObject(entity)
     if (Level.IsBadBackpackObject == true) then
        return;
     end
     
     local classId = Entity.GetClass( entity );
     if (classId == 'WFEQ') then
        Level.IsBadBackpackObject = true;
     end
  end

--------------------------------------------------------
-- Name: Level.PlayerHasDocuments()
-- Desc:
--------------------------------------------------------
  function Level.PlayerHasDocuments()
     return Actor.HasCustomEquipment(Level.GetPlayer(), 'DOCS') == true or
            Actor.HasCustomEquipment(Level.GetPlayer(), 'DOC2') == true;
  end

--------------------------------------------------------
-- Name: Level.HackCreateDocs()
-- Desc:
--------------------------------------------------------
  function Level.HackCreateDocs()
     Level.AddDocuments('PLYR', 'DOCS', MissionText.Message_DocsName);
  end

--------------------------------------------------------
-- Name: Level.OnCheckShowDocumentTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckShowDocumentTrigger()
     
     if (Level.GetSearchMan() != nil and
         Level.PlayerHasDocuments() == true) then
     
        if (Level.HasPlayerAction('SHDC') == false) then
           --Level.AddPlayerAction('SHDC', MissionText.Message_ShowDocs, "Level", false );
           Level.SafeAddLevelPlayerAction('SHDC', MissionText.Message_ShowDocs);
        end
        
     else
     
        if (Level.HasPlayerAction('SHDC') == true) then
           --Level.RemovePlayerAction('SHDC');
           Level.SafeRemoveLevelPlayerAction('SHDC');
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnStopMove()
-- Desc:
--------------------------------------------------------
  function Level.InitLookObjectTask(npc, backpack)

     if (backpack == nil) then
        local properties = Level.CreateCustomParams();     

        Level.SetValue(properties, "CustomString_1", "Player" );
        Level.SetValue(properties, "CustomString_2", "Level.OnBackpackWatched()" );
        Level.SetValue(properties, "CustomString_3", "LPTS" );

        AI.RunScriptTask(npc, "scripts:job\\LookObjectTask.lua", AI.LOGIC_DEFAULT, properties);

        local player = Level.GetPlayer();
        local n = Entity.GetNode(player);
        Level.PlayerPosition.x, Level.PlayerPosition.y, Level.PlayerPosition.z = node.GetPosition( n );
        Level.SeachFirstTry = true;        

        Level.AddTimer( 'CPTM', "OnCheckPositionTimer", 0.2, true );

     else
        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", "Backpack:" .. Level.LastBackPackId );
        Level.SetValue(properties, "CustomString_2", "Level.OnBackpackWatched()" );
        Level.SetValue(properties, "CustomString_3", "LPTS" );

        AI.RunScriptTask(npc, "scripts:job\\LookObjectTask.lua", AI.LOGIC_DEFAULT, properties);

        Level.SeachFirstTry = false;
        Level.LookBackPack  = Level.LastBackPackId;

        Level.RemoveTimer( 'CPTM' );
     end

     AI.ChangeLogic( npc, "LiteScriptSoldier" );

     Level.Searching = true;
     Level.InstallDpc("Level.Searching = false", 15.0);
  end

--------------------------------------------------------
-- Name: Level.OnUpdateBackpackMark()
-- Desc:
--------------------------------------------------------
  function Level.OnUpdateBackpackMark()
     local backpack = Level.FindContainer( Level.LastBackPackId );          
     if ( backpack != nil ) then

        local n = Entity.GetNode(backpack);

        local pos = {};
        pos.x, pos.y, pos.z = node.GetPosition( n );

        if (ItemPack.HasCustomItem( backpack, 'ENIG' ) == true) then
            Level.SetMarkPosition( 'BPWE' , pos.x, pos.y, pos.z );
            Level.EnableLevelMark( 'BPWE', true );
            Level.EnableLevelMark( 'BPNE', false );
        else
            Level.SetMarkPosition( 'BPNE' , pos.x, pos.y, pos.z );
            Level.EnableLevelMark( 'BPNE', true );
            Level.EnableLevelMark( 'BPWE', false );
        end
     end
  end
  
--------------------------------------------------------
-- Name: Level.OnInventoryChanged()
-- Desc:
--------------------------------------------------------
  function Level.OnInventoryChanged()

     local player = Level.GetPlayer();     
     local npc    = Level.GetSearchMan();
     local b      = Actor.GetBackPack(player);

     if ( b == nil ) then
       if ( Level.HasBackPack == true ) then
          local backpack = Level.FindContainer( Level.LastBackPackId );
          if ( backpack == nil or ItemPack.HasCustomItem( backpack, 'ENIG' ) == false ) then
             Level.AddSmallMessage( MissionText.Message_DropBack, 10.0, 255, 255, 255 );
          end;

          Level.AddTimer( 'UBMT', "OnUpdateBackpackMark", 0.5, false );
       end;

       Level.HasBackPack = false;       
     else
       Level.HasBackPack = true;     

       Level.RemoveTimer('UBMT');
       Level.EnableLevelMark( 'BPNE', false );
       Level.EnableLevelMark( 'BPWE', false );
     end;

     if (npc != nil) then

        if     (b == nil and Level.BackPackState == true) then

           local backpack = Level.FindContainer(Level.LastBackPackId);
           Level.InitLookObjectTask(npc, backpack);
           Level.EnableBackpackZone(false, 0.0);

        elseif (b != nil and Level.BackPackState == false) then

           AI.DecamouflagePlayer(npc);

        end

     else

        if     (b == nil and Level.BackPackState == true) then

           Level.EnableBackpackZone(false, 0.0);

        elseif (b != nil and Level.BackPackState == false) then

           Level.EnableBackpackZone(true, 0.0);

        end

     end
     
     if (Level.HasWirecut()) then
        Level.EnableLevelMark('KUSK', false);
     end
     
     Level.UpdateBackpackState();
  end
  
  --------------------------------------------------------
  -- Name: Level.HasWirecut()
  -- Desc:
  --------------------------------------------------------
  function Level.HasWirecut()
     local player = Level.GetPlayer();
     return Actor.HasEquipment( player, 'WRC1' ) == true or
            Actor.HasEquipment( player, 'WRC2' ) == true or
            Actor.HasEquipment( player, 'WRC3' ) == true or
            Actor.HasEquipment( player, 'WCUT' ) == true;
  end

  --------------------------------------------------------
  -- Name: Level.UpdateBackpackState()
  -- Desc:
  --------------------------------------------------------
  function Level.UpdateBackpackState()
     local player = Level.GetPlayer();
     
     if (player != nil) then
        
        local backpack = Actor.GetBackPack(player);
        Level.BackPackState = (backpack != nil);
        
        if (backpack != nil) then
           Level.LastBackPackId = Entity.GetUniqueIDAsString(backpack);
        end
        
     else
        Level.BackPackState = false;
     end
  end


--------------------- Music and other funny stuff ----------------------------

----------------------- Bot idles and ai scripts -----------------------------

--------------------------------------------------------
-- Name: Level.ChangeGuardWorkerJob()
-- Desc:
--------------------------------------------------------
function Level.ChangeGuardWorkerJob()
   AI.HandleVoice(AI.FindNPC('GS01'), "male_ger_casual_casual_11");
   
   if (Level.GetDifficulty() != 0) then
      AI.SetJob(AI.FindNPC('GS01'), "Reading");
      AI.SetJob(AI.FindNPC('GW02'), "GoPump");
   else
      AI.SetJob(AI.FindNPC('GS01'), "reading_easy");
      AI.SetJob(AI.FindNPC('GW02'), "pump_easy");
   end
end

--------------------------------------------------------
-- Name: Level.RunSSPatrol()
-- Desc:
--------------------------------------------------------
function Level.RunSSPatrol()
   if (Level.GetDifficulty() != 0) then
      AI.SetJob(AI.FindNPC('GS05'), "Patroling");
   else
      AI.SetJob(AI.FindNPC('GS05'), "patroling_easy");
   end
   
   AI.SetJob(AI.FindNPC('GS04'), "GuardPumpRoom");
end

--------------------------------------------------------
-- Name: Level.OnWorkersTimer()
-- Desc:
--------------------------------------------------------
function Level.OnWorkersTimer()
   Level.RunAnchorJob2IfDefault(AI.FindNPC('GW04'), 'AN09', 'AN10');
   Level.RunAnchorJob2IfDefault(AI.FindNPC('GW05'), 'AN11', 'AN12');
end

--------------------------------------------------------
-- Name: Level.StartOfficerMainIdle()
-- Desc:
--------------------------------------------------------
function Level.StartOfficerMainIdle()
   if (Level.MainIdleStarted == true) then
      return;
   end
     
   local officer = AI.FindNPC('GO01');
   AI.SetJob(officer, "MainIdle");
   Level.MainIdleStarted = true;
end

--------------------------------------------------------
-- Name: Level.StartOfficerScript()
-- Desc:
--------------------------------------------------------
function Level.StartOfficerScript()
   local officer = AI.FindNPC('GO01');
   local soldier = AI.FindNPC('GS12');
     
   if (officer != nil and
       AI.IsDefault(soldier) == true) then
         
       Level.RunAnchorJob2(officer, 'AN35', 'AN36');
       Level.InstallDpc("Level.StartOfficerMainIdle()", 10.0);
         
   else
     
      Level.StartOfficerMainIdle();
        
   end
end

--------------------------------------------------------
-- Name: Level.StartOfficerScript()
-- Desc:
--------------------------------------------------------
function Level.OnTurnLight( room, onOff )
   if (room == -1) then
      Level.OnTurnConferenceLight( onOff );
      Level.OnTurnLectionLight( onOff );
   end
   
   if (room == 1) then
      Level.OnTurnConferenceLight( onOff );
   else
      Level.OnTurnLectionLight( onOff );
   end
end

--------------------------------------------------------
-- Name: Level.OnTurnConferenceLight_Bot()
-- Desc:
--------------------------------------------------------
function Level.OnTurnConferenceLight_Bot()
   local actors = {'GO07', 'GC01', 'GO05', 'GO06', 'GO04', 'GO03', 'GS23' };
   
   if (Level.ConferenceLightState == false) then
         
      for i in actors do
         local npc = AI.FindNPC(actors[i]);
         if (npc != nil) then
            AI.SetJob(npc, "LightOff");
         end
      end

      AI.EnableZone("ConfRoom",      false);
      AI.EnableZone("ConfRoomEnter", false);
      
      Level.RunAnchorJob(AI.FindNPC('GO03'), 'AN51', true);

      AI.HandleVoice(AI.FindNPC('GO03'), "%Script04_Sound");
      Level.InstallDpc("AI.HandleVoice(AI.FindNPC('GO05'), '%Script03_Sound')", 1.5);
   else
   
      for i in actors do
         local npc = AI.FindNPC(actors[i]);
         if (npc != nil) then
            AI.SetJob(npc, "Conf");
         end
      end

      AI.EnableZone("ConfRoom",      true);
      AI.EnableZone("ConfRoomEnter", true);
      
   end   
end

--------------------------------------------------------
-- Name: Level.OnTurnConferenceLight()
-- Desc:
--------------------------------------------------------
function Level.OnTurnConferenceLight( onOff )
   if (Level.ConferenceLightState == onOff) then
      return;
   end
   
   Level.ConferenceLightState = onOff;
   
   Level.UpdateConferenceLight();
   Level.InstallDpc("Level.OnTurnConferenceLight_Bot()", 1.0);
end

--------------------------------------------------------
-- Name: Level.UpdateConferenceLight()
-- Desc:
--------------------------------------------------------
function Level.UpdateConferenceLight()

      Level.EnableLight( 'SLT1' , Level.ConferenceLightState );
      Level.EnableLight( 'SLT2' , Level.ConferenceLightState );
      
      Level.EnableFlare( 'SFL1' , Level.ConferenceLightState );
      Level.EnableFlare( 'SFL2' , Level.ConferenceLightState );
      Level.EnableFlare( 'SFL3' , Level.ConferenceLightState );
      Level.EnableFlare( 'SFL4' , Level.ConferenceLightState );
      
      local brushRoom = Level.FindWorldObject( 'CONF' );
      if ( brushRoom != nil ) then      
      
         if ( Level.ConferenceLightState == true ) then
            Level.SetWorldObjectLightmap( brushRoom, 'SLON' );         
         else
            Level.SetWorldObjectLightmap( brushRoom, 'SLOF' );         
         end;      
      end;
end

--------------------------------------------------------
-- Name: Level.OnTurnLectionLight_Bot()
-- Desc:
--------------------------------------------------------
function Level.OnTurnLectionLight_Bot()
   local actors = {'GO02', 'SM02', 'SM01', 'SM03', 'SM04', 'SM05' };
   
   if (Level.LectionLightState == false) then
      for i in actors do
         local npc = AI.FindNPC(actors[i]);
         if (npc != nil) then
            AI.SetJob(npc, "LightOff");
         end
      end   
      
      if (Level.GetDifficulty() != 0) then
         Level.RunAnchorJob(AI.FindNPC('SM01'), 'AN54', true);
      end
      
      if (AI.IsAnchorBinded(AI.FindAnchor('AN53')) == false) then  
         
         AI.AnchorBindProtect(AI.FindAnchor('AN53'), true);
         Level.RunAnchorJob(AI.FindNPC('SM02'), 'AN53', true);
         
      end
      
      AI.EnableZone("LectionRoom",      false);
      AI.EnableZone("LectionRoomEnter", false);
      
      if (Level.AlertCalled == false) then
         Level.CaptainInstalled = true;
         AI.SetJob( AI.FindNPC('GC02'), "LightOff" );
      end
      
      AI.HandleVoice(AI.FindNPC('GO02'), "%Script02_Sound");
      Level.InstallDpc("AI.HandleVoice(AI.FindNPC('SM01'), '%Script01_Sound')", 1.0);
            
   else
   
      for i in actors do
         local npc = AI.FindNPC(actors[i]);
         if (npc != nil) then
            AI.SetJob(npc, "Lesson");
         end
      end

      AI.EnableZone("LectionRoom",      true);
      AI.EnableZone("LectionRoomEnter", true);
      
      if (Level.AlertCalled == false) then
         Level.CaptainInstalled = true;
         AI.SetJob( AI.FindNPC('GC02'), "DefaultWalk" );
      end
         
   end
end

--------------------------------------------------------
-- Name: Level.OnTurnLectionLight()
-- Desc:
--------------------------------------------------------
function Level.OnTurnLectionLight( onOff )
   if (Level.LectionLightState == onOff) then
      return;
   end
   
   Level.LectionLightState = onOff;     
   Level.UpdateLectionLight(); 
   
   Level.InstallDpc("Level.OnTurnLectionLight_Bot()", 1.0);  
end

--------------------------------------------------------
-- Name: Level.UpdateLectionLight()
-- Desc:
--------------------------------------------------------
function Level.UpdateLectionLight()

  Level.EnableLight( 'LLT1' , Level.LectionLightState );
       
  Level.EnableFlare( 'LFL1' , Level.LectionLightState );
  Level.EnableFlare( 'LFL2' , Level.LectionLightState );
  Level.EnableFlare( 'LFL3' , Level.LectionLightState );
  Level.EnableFlare( 'LFL4' , Level.LectionLightState );
      
  local brushRoom = Level.FindWorldObject( 'LECT' );
  if ( brushRoom != nil ) then      
     
     if ( Level.LectionLightState == true ) then
          Level.SetWorldObjectLightmap( brushRoom, 'LLON' );         
     else
          Level.SetWorldObjectLightmap( brushRoom, 'LLOF' );         
     end;      
  end;

end

--------------------------------------------------------
-- Name: Level.UpdateGeneratorRoomLight()
-- Desc:
--------------------------------------------------------
function Level.UpdateGeneratorRoomLight()

  local lightNormal;
  local lightRed;
  
  local brushRoom = Level.FindWorldObject( 'GROM' );
  local generator = Level.FindWorldObject( 'GGEN' );
  
  if ( Level.GeneratorRoomBreak == false ) then  
  
      lightNormal = true;
      lightRed    = false;     
      
      Level.SetWorldObjectLightmap( brushRoom, 'GNOR' );
      
      if ( generator != nil ) then
        Level.SetWorldObjectLightmap( generator, 'GGNR' );
      end;
  else
  
      Level.SetWorldObjectLightmap( brushRoom, 'GRED' );
      
      if ( generator != nil ) then
          Level.SetWorldObjectLightmap( generator, 'GGRD' );
      end;
      
      lightNormal = false;
      lightRed    = true;  
      
  end;
  
  Level.EnableLight( 'GLR1' , lightRed );
  Level.EnableLight( 'GLR2' , lightRed );     
  Level.EnableLight( 'GLN1' , lightNormal );
     
  Level.EnableFlare( 'GFN1' , lightNormal );
  Level.EnableFlare( 'GFN2' , lightNormal );
     
  Level.EnableFlare( 'GFR1' , lightRed );
  Level.EnableFlare( 'GFR4' , lightRed );
  Level.EnableFlare( 'GFR3' , lightRed );
  Level.EnableFlare( 'GFR2' , lightRed );
  
end;

--------------------------------------------------------
-- Name: Level.OnDrinkVine()
-- Desc:
--------------------------------------------------------
function Level.OnDrinkVine()
   if (Level.VinePoisson == true) then
      AI.KillNPC(AI.FindNPC('GC02'), 5.0, AI.HIT_DAMAGE);
   end
end

--------------------------------------------------------
-- Name: Level.OnDrinkVine()
-- Desc:
--------------------------------------------------------
function Level.CheckAccidentState(id)
   if (id == 'GNRT') then
      return Level.GeneratorBrake == true;
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.OnAccident()
-- Desc:
--------------------------------------------------------
function Level.OnAccident(id)
   if (id == 'GNRT') then
      Level.PlayEffect( "levels\\uboat\\radio_break.sef" , 1073.0, 32.1, -1087.0 );
      AI.AddSound( AI.SOUND_TYPE_ITEM, 50.0, 1073.0, 32.1, -1087.0);
      Level.PlayCustomSound('DamageRadar2');
   end
end

--------------------------------------------------------
-- Name: Level.OnStudentsStand()
-- Desc:
--------------------------------------------------------
function Level.OnStudentsStand()
   if (Level.LectionLightState == false) then
      return;
   end
   
   local students = { 'SM02', 'SM01', 'SM03', 'SM05', 'SM04' };
   local anchors  = { 'AN74', 'AN75', 'AN73', 'AN76', 'AN77' };
      
   local roomId = Level.GetRoom('VA31');
      
   for i in students do
      local npc = AI.FindNPC( students[i] );
      if (AI.IsDefault(npc) == true and AI.GetRoom(npc) == roomId) then
         Level.RunAnchorJob( npc, anchors[i], false );
      end
   end
end
  
--------------------------------------------------------
-- Name: Level.CheckVodDoorTimer()
-- Desc:
--------------------------------------------------------
function Level.CheckVodDoorTimer()
  
   local door = Level.FindDoor('VDOR');
   if ( door == nil ) then
      Level.RemoveTimer('VDOR');
      return;     
   end;
   
   if ( Level.IsDoorClosed(door) == true ) then
           
      Trigger.Enable( Level.FindTrigger('SimpleTrigger13'), true );
      Level.RemoveTimer('VDOR');
      
   end;
  
end;
  
--------------------------------------------------------
-- Name: Level.ClearVodokonal()
-- Desc:
--------------------------------------------------------
function Level.ClearVodokonal( onOff )
  local water1 = Level.FindWorldObject('VWT1');
  if ( water1 != nil ) then
    
    local px,py,pz = Level.GetWorldObjectPos( water1 );
    
    if ( onOff == true ) then        
       Level.SetWorldObjectPos( water1, px, 1000.0, pz );    
    else      
       Level.SetWorldObjectPos( water1, px, -72.838, pz );        
    end;      
  end;
    
  local water2 = Level.FindWorldObject('VWT2');
  if ( water2 != nil ) then
    
     local px,py,pz = Level.GetWorldObjectPos( water2 );
     if ( onOff == false ) then       
        Level.SetWorldObjectPos( water2, px, 3000.0, pz );       
     else       
        Level.SetWorldObjectPos( water2, px, -118.07156, pz );       
     end;    
  end;
    
  if ( onOff == false ) then
    Level.SetDoorLocked( Level.FindDoor('VDDK'), true, true );
    Level.EnableSound("SCRwater02", true );
  else
    Level.SetDoorLocked( Level.FindDoor('VDDK'), false, true );
    Level.EnableSound("SCRwater02", false );
  end;
  
  Level.VodokanalCleared = onOff;
end;

--------------------------------------------------------
-- Name: Level.StartTorpedaScript()
-- Desc:
--------------------------------------------------------
function Level.StartTorpedaScript()

  if (Level.TorpedaScript == false) then
     Level.TorpedaScript = true;
  end

  local torpeda = Level.FindWorldObject('TORP');
  if (torpeda != nil) then
     Level.EnableWorldObjectPhysics( torpeda );
     Level.InstallDpc("Level.OnTorpedaFall()", 1.57);
  end
  
  local tros = Level.FindWorldObject('TROS');
  if ( tros != nil ) then
     Level.SetWorldObjectPos( tros, 0.0, -4000.0, 0.0 );  
  end;
end

--------------------------------------------------------
-- Name: Level.OnEnterNearBoatTrigger()
-- Desc:
--------------------------------------------------------
function Level.OnEnterNearBoatTrigger()
   if (Level.GetDifficulty() == 3) then
      return;
   end
   
   local submarineMan = AI.FindNPC('SM25');
   local guardMan = AI.FindNPC('SM22');

   AI.SetJob( submarineMan, "Walk" );
   AI.SetJob( guardMan, "Patrol" );

   if (AI.IsDefault(submarineMan) and 
       AI.IsDefault(guardMan)) then

       Level.RunAnchorJob(submarineMan, 'A242', false);

       Level.BeginCutScene( "SubmarineCutscene", "Levels\\UBoat\\submarine.scm", MissionText.Message_CS_Submarine, 12.0, { 3, -70.0, 50.0, 60.0, 255 } );
   end

   --AI.SetJob( AI.FindNPC('GM14'), 'Working');
   --AI.SetJob( AI.FindNPC('GM15'), 'Working');
end

--------------------------------------------------------
-- Name: Level.OnTorpedaFall()
-- Desc:
--------------------------------------------------------
function Level.OnTorpedaFall()

   --AI.HandleVoice( AI.FindNPC('GM10'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
   --AI.HandleVoice( AI.FindNPC('GM11'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
   AI.HandleVoice( AI.FindNPC('GM10'), AI.VOICE_CUSTOM, "male_ger_ohers_chto_takoe_alarm");
   AI.HandleVoice( AI.FindNPC('GM10'), AI.VOICE_CUSTOM, "male_ger_ohers_chto_proizoshlo_alarm");

   Level.RunAnchorJob_Run(AI.FindNPC('GM23'), 'A172', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM24'), 'A173', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM37'), 'A174', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM06'), 'A175', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM07'), 'A176', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM09'), 'A177', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM31'), 'A178', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM29'), 'A179', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM36'), 'A180', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM30'), 'A181', true);

   Level.RunAnchorJob_Run(AI.FindNPC('GM11'), 'A183', true);

   Level.RunAnchorJob_Run(AI.FindNPC('GM10'), 'A185', true);
   Level.RunAnchorJob_Run(AI.FindNPC('SM34'), 'A186', true);

   Level.RunAnchorJob_Run(AI.FindNPC('SM20'), 'A188', true);
   Level.RunAnchorJob_Run(AI.FindNPC('GS34'), 'A189', true);
   
   -- From guards room:
   if (Level.AlertCalled == false) then
      Level.RunAnchorJob_Run(AI.FindNPC('GS29'), 'A255', true);
      Level.RunAnchorJob_Run(AI.FindNPC('GS28'), 'A256', true);
      Level.RunAnchorJob_Run(AI.FindNPC('GS30'), 'A257', true);
      Level.RunAnchorJob_Run(AI.FindNPC('GS31'), 'A258', true);
      Level.RunAnchorJob_Run(AI.FindNPC('GS33'), 'A259', true);
   end

   local torpeda = Level.FindWorldObject('TORP');

   AI.SetJob(AI.FindNPC('SM41'), "LookTorpeda");
   AI.SetJob(AI.FindNPC('SM40'), "LookTorpeda");
   AI.SetJob(AI.FindNPC('SM39'), "LookTorpeda");

   if ( torpeda != nil ) then
      local x, y, z = Level.GetWorldObjectPos( torpeda );
      --AI.AddSound( AI.SOUND_TYPE_ITEM, 500.0, x, y, z);
   end
   
   Level.PlayCustomSound('TorpedaCrash');

end


---------------------------------- Callbacks ---------------------------------

--------------------------------------------------------
-- Name: Level.CanGetDocuments()
-- Desc:
--------------------------------------------------------
function Level.CanGetDocuments( docId )

    if ( docId == 'RSEF' ) then    
      if ( Level.IsMissionTaskCompleted('CBOK') == true ) then
          return nil;
      else
          return MissionText.Message_GetCryptBook;    
      end;
    end;
    
    return nil;
    
end;

--------------------------------------------------------
-- Name: Level.OnGetDocuments()
-- Desc:
--------------------------------------------------------
function Level.OnGetDocuments( docId )

   if ( docId == 'RSEF' ) then
   
      local form = AI.GetPlayerForm();
      if (form != "Captain" and form != "Radist") then
        AI.StartDecamouflage( 30.0, 100.0, 5.0 ); 
      end
      
      Level.FinishTask('CBOK', true );
         
   end;
      
   return true;
   
end;

--------------------------------------------------------
-- Name: Level.OnOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.OnOpenDoor( door )
   --print("Level.OnOpenDoor " .. door);
   
   if ( Level.GetDocsTrigger != nil and door == 'RSEF' ) then
   
      -- TODO: AI.StartDecamouflage( 50.0, 70.0, 2.0 );
      Level.GetDocsTrigger:OnEnterArea();
      
      return;
      
   end;
   
   local net = Level.FindNet( door );
   if (net != nil) then
      Level.OnOpenNet(net);
      return;
   end
end

--------------------------------------------------------
-- Name: Level.OnCloseDoor()
-- Desc:
--------------------------------------------------------
function Level.OnCloseDoor( door )

   if ( door == 'RSEF' ) then

      Level.RemovePlayerAction("RSEF");
      --Level.SafeRemoveLevelPlayerAction('RSEF');
      return;
      
   end;
    
   local net = Level.FindNet( door );
   if (net != nil) then
      Level.OnCloseNet(net);
      return;
   end
end

--------------------------------------------------------
-- Name: Level.OnSeeCustomObject()
-- Desc:
--------------------------------------------------------
function Level.OnSeeCustomObject(npc, netId)
   AI.Debug(npc, "Level.OnSeeCustomObject", tostring(netId));
   
   if (netId == 'ENCO') then
      AI.SetupAlert(npc);
      AI.RemoveCustomObject('ENCO');
      return;
   end
   
   if (AI.IsImportantTask(npc) == true) then
      return;
   end
   
   if (AI.IsScriptTask(npc, true) == true) then
      return;
   end
   
   local net = Level.FindNet(netId);
   if (net == nil) then
      return;
   end
   
   local anchorId = Level.GetFreeAnchorId( net );
   if (anchorId != nil) then
      AI.AnchorBindProtect(AI.FindAnchor(anchorId), true);
      Level.RunAnchorJob_Run(npc, anchorId);
      AI.HandleVoice(npc, "@v_what_is_it");
   else
      AI.Debug(npc, "Level.OnSeeCustomObject", "Can't find anchor");
   end
end

--------------------------------------------------------
-- Name: Level.OnNearNet()
-- Desc:
--------------------------------------------------------
function Level.OnNearNet()
   if (Level.HasWirecut() == false) then
      Level.ClearSmallMessages();
      Level.AddSmallMessage( MissionText.Message_WirecutNearNet, 10.0, 255, 0, 0 );
   end
end

------------------------------- Door net scripts -----------------------------

--------------------------------------------------------
-- Name: Level.SaveNet()
-- Desc:
--------------------------------------------------------
function Level.SaveNet(net)
   Stream.WriteString(net.DoorUid);
   Stream.WriteInt   (table.getn(net.Anchors));
   for i in net.Anchors do
       Stream.WriteString(net.Anchors[i]);
   end
   
   Stream.WriteFloat(net.Position.x);
   Stream.WriteFloat(net.Position.y);
   Stream.WriteFloat(net.Position.z);
end

--------------------------------------------------------
-- Name: Level.LoadNet()
-- Desc:
--------------------------------------------------------
function Level.LoadNet()
   local net = {};
   
   net.DoorUid = Stream.ReadString();
   local n = Stream.ReadInt();
   
   net.Anchors = {};
   for i = 1, n do
       net.Anchors[i] = Stream.ReadString();
   end
   
   net.Position = {};
   net.Position.x = Stream.ReadFloat();
   net.Position.y = Stream.ReadFloat();
   net.Position.z = Stream.ReadFloat();
   
   return net;
end

--------------------------------------------------------
-- Name: Level.InstallNet()
-- Desc:
--------------------------------------------------------
function Level.InstallNet( doorUid, anchors, x, y, z )

   if (Level.Nets == nil) then
      Level.Nets = {};
   end
   
   local n = table.getn(Level.Nets);
   Level.Nets[n + 1] = {};
   local net = Level.Nets[n + 1];

   net.DoorUid = doorUid;
   net.Anchors = {};
   net.Position = {};
   
   net.Position.x = x;
   net.Position.y = y;
   net.Position.z = z;
   
   for i in anchors do 
      net.Anchors[i] = anchors[i];
      if (AI.FindAnchor(anchors[i]) == nil) then
         print("Error: Can't find anchor " .. anchors[i]);
      end
   end
end

--------------------------------------------------------
-- Name: Level.FindNet()
-- Desc:
--------------------------------------------------------
function Level.FindNet( doorId )
   for i in Level.Nets do
      local net = Level.Nets[i];
      if (net.DoorUid == doorId) then
         return net;
      end
   end
   
   return nil;
end

--------------------------------------------------------
-- Name: Level.OnOpenNet()
-- Desc:
--------------------------------------------------------
function Level.OnOpenNet(net)
   AI.AddCustomObject(net.DoorUid, net.Position.x, net.Position.y, net.Position.z);
   
   local box = Level.HideBodyBoxes[net.DoorUid];
   if (box != nil) then
      AI.RemoveHideBodyBox(net.DoorUid);
   end
end

--------------------------------------------------------
-- Name: Level.OnCloseNet()
-- Desc:
--------------------------------------------------------
function Level.OnCloseNet(net)
   AI.RemoveCustomObject(net.DoorUid);
   
   local box = Level.HideBodyBoxes[net.DoorUid];
   if (box != nil) then
      AI.AddHideBodyBox(box.x1, box.y1, box.z1, box.x2, box.y2, box.z2, net.DoorUid);
   end
end

--------------------------------------------------------
-- Name: Level.GetFreeAnchorId()
-- Desc:
--------------------------------------------------------
function Level.GetFreeAnchorId( net )
   for i in net.Anchors do
      local anchorId = net.Anchors[i];
      local anchor = AI.FindAnchor(anchorId);
      if (anchor != nil) then
         if (AI.IsAnchorBinded(anchor) == false) then
            return anchorId;
         end
      end
   end
   
   return nil;
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Worker()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Worker()
    Level.OnChangeCloth_Default(0);
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Seaman()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Seaman()
    local player = Level.GetPlayer();
    if ( player != nil ) then       
       Actor.EnableMesh( player, "mesh_pilotka" , false );
    end;
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_UboatSeaman()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_UboatSeaman()
    local player = Level.GetPlayer();
    if ( player != nil ) then       
       Actor.EnableMesh( player, "mesh_cap" , false );
    end;
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_SS_Soldier()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_SS_Soldier()
    Level.OnChangeCloth_Default(1);
end

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
  function Level.OnNotifyPickupItem( itemId, item )
    
    if ( itemId == 'ENIG' ) then

       if ( Level.IsMissionTaskCompleted('ENIG') == false ) then
          Level.FinishTask( 'ENIG' , true );       
       end;
       
       AI.StartDecamouflage( 30.0, 60.0, 1.0 );
       
    elseif ( itemId == 'DOC2' ) then    
       Level.EnableLevelMark('PRPS', false);    
    end;
  end;
  
--------------------------------------------------------
-- Name: Level.NeedEnableMark()
-- Desc:
--------------------------------------------------------
function Level.NeedEnableMark(markId)

   --print('NeedEnableMark ' .. tostring( markId ) );

   if (markId == 'RADI') then
      return (Level.UseMarkRadi == true) and (AI.FindNPC('GS19') != nil);
   elseif (markId == 'SGEN') then
      return (Level.UseMarkSgen == true) and (AI.FindNPC('BM13') != nil);
   elseif (markId == 'POIS') then
      return (Level.VinePoisson == false) and (Level.AlertCalled == false) and (AI.FindNPC('GC02') != nil);
   elseif (markId == 'KRAN') then
      return (Level.GetDifficulty() == 0) and (Level.FuelClosed == false);
   elseif (markId == 'KANA') then
      return (Level.GetDifficulty() != 2);
   elseif (markId == 'PRPS') then
      return (Level.GetDifficulty() == 0) and Level.PlayerHasDocuments() == false;      
   end
   
   
   return true;
end

--------------------------------------------------------
-- Name: Level.OnChangeClothTest()
-- Desc:
--------------------------------------------------------
function Level.OnChangeClothTest()
   if (AI.GetPlayerForm() == "Captain") then
   
      if (Level.GetDifficulty() != 2) then
         Level.HelpMessage( MissionText.Message_Captain );
      end
      
      if (Level.HasBackPack == true) then
         Level.EnableBackpackZone(false, 0.0);
      end
   else
      if (Level.HasBackPack == true) then
         Level.EnableBackpackZone(true, 0.0);
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth() 
   Level.InstallDpc("Level.OnChangeClothTest()", 3.0);
   Level.InstallDpc("Level.OnHelpForm()", 3.0);
end

--------------------------------------------------------
-- Name: Level.OnOfficerShowPass() 
-- Desc:
--------------------------------------------------------
function Level.OnOfficerShowPass() 
   Level.RunAnchorJobIfDefault(AI.FindNPC('GS12'), 'AN37');
   Level.VoiceMessage(AI.FindNPC('GO01'), "%Script21_Sound", "Message_ThisIsMyPass", 80.0);
end

--------------------------------------------------------
-- Name: Level.OnStartAnimationNotify()
-- Desc:
--------------------------------------------------------
function Level.OnStartAnimationNotify( npc, animName, cascadePhase)
   if (npc == AI.FindNPC('GO08') and
       animName == "Relaxed_Talk_Scratch2") then
       
       local actors  = { 'SM13', 'SM14', 'SM15', 'SM16' };
       local anchors = { 'A264', 'A265', 'A266', 'A267' };
       
       for i in actors do
          Level.RunAnchorJobIfDefault(AI.FindNPC(actors[i]), anchors[i]);
       end
   end
end


----------------------- Debug methods ----------------------------------------

--------------------------------------------------------
-- Name: Level.DebugPrintNets()
-- Desc:
--------------------------------------------------------
function Level.DebugPrintNets()
   print("Nets number " .. tostring(table.getn(Level.Nets)) );
   for i in Level.Nets do
      local net = Level.Nets[i];
      print("");
      print("Net #" .. tostring(i));
      print("Net.DoorUid: " .. net.DoorUid);
      local anchors = "";
      
      for j in net.Anchors do
         anchors = anchors .. ", " .. net.Anchors[j];
      end
      
      print("Net.Anchors: " .. anchors);
     
      print("Net.Position: (" .. tostring(net.Position.x) .. ", " 
                              .. tostring(net.Position.y) .. ", " 
                              .. tostring(net.Position.z) .. ")");
   end
end

--------------------------------------------------------
-- Name: Level.HackRestart()
-- Desc:
--------------------------------------------------------
function Level.HackRestart()
  AI.SetJob(AI.FindNPC('GC02'), "DefaultWalk");
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
   local bot = Level.FindActor('SM50');
   if (Actor.IsHitted(bot) == true) then
      Level.DecrementLevelStats(levelStats, "NumEnemiesStuned");
   end
   
   --local num = AI.Asc("num hitted npc at water");
   --Level.ChangeLevelStats(levelStats, "NumEnemiesStuned", -num);
   --Level.ChangeLevelStats(levelStats, "NumEnemiesKilled", num);
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformInputs(levelStats, aiStats, a, c, p, n, acc)
   c = c * 0.8;

   if (Level.GetDifficulty() == 3) then
      c = c * 0.2;
   end
   
   p = Level.DefaultCalcProf(c, n, acc);
   
   if (Level.GetDifficulty() == 3) then
      c = (c / 0.2) * 0.3;
   end

   return a, c, p, n;
end

--------------------------------------------------------
-- Name: Level.OnCalcScore()
-- Desc:
--------------------------------------------------------
function Level.OnCalcRateScore(rank, score, levelStats, aiStats, a, c, p, n, acc)
   return rank, score;
end