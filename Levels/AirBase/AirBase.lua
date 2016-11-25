-- Airbase mission. 
-- Sergey Gvozdev

-- Tasks:

------------------------------------ completed ------------ deadline ------------ completed ----
-- FIRST ITTERATION: 
-----------------------------------------------------------------------------------------------------
-- SECOND ITTERATION:
-----------------------------------------------------------------------------------------------------
-- THIRD ITTERATION:
-- Alert script                |    100%              |      08.11.2007       |   09.11.2007         |
-- Body alert script           |    100%              |      08.11.2007       |   09.11.2007         |
-- Task logic change           |    100%              |      08.11.2007       |   14.11.2007         |
-- Firepoints                  |    100%              |      09.11.2007       |   09.11.2007         |
-- Grenade custom holes        |    100%              |      09.11.2007       |   09.11.2007         |
-- Marks alert test            |    100%              |      09.11.2007       |   09.11.2007         |
-- Music for all rupors        |    100%              |      09.11.2007       |                      |
-- Test: pilot body at vehicle |      0%              |      09.11.2007       |                      |
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

-- bugs:

-- visual bugs:

-- art:

-- testcase:

-- level change:

--------------------------------- Messages table -----------------------------
  MissionText = 
  {
     Task_1                                        = " Определить летчика";
     Task_2                                        = " Захватить летчика";
     Task_3                                        = " Захватить механика";
     Task_4                                        = " Обезвредить зенитки";
     Task_5                                        = " Повредить радар";
     Task_6                                        = " Вызвать группу";
     Task_7                                        = " Доб-ся до точки сбора";

     MessageTaskChanged                            = "Задания изменены";

     Message_SetupDynamite                         = "УСТАНОВИТЬ ДИНАМИТ";
     Message_NoDynamite                            = "! У вас нет динамита..";
     Message_DynSetuped                            = "Динамит установлен";
      
     DocumentAction                                = " ПОИСКАТЬ В АРХИВАХ";
     ReadBlackBoardAction                          = " ПРОСМОТРЕТЬ РАСПИСАНИЕ";
     UseAcidAction                                 = " ИСПОЛЬЗОВАТЬ КИСЛОТУ";
     OilStopAction                                 = " ПЕРЕКРЫТЬ ПОДАЧУ ТОПЛИВА";
     BrakeRadarAction                              = " СЛОМАТЬ ОБОРУДОВАНИЕ";
     RadioSignalAction                             = " ВЫЗВАТЬ ГРУППУ";
     OrderMusicAction                              = " ПРИКАЗАТЬ СМЕНИТЬ МУЗЫКУ";
     ChangeMusicAction                             = " ПОДАТЬ СИГНАЛ";
     PoissonAction                                 = " ДОБАВИТЬ СЛАБИТЕЛЬНОГО";
     OrderDisableAlert                             = " ПРИКАЗАТЬ ОТКЛЮЧИТЬ ТРЕВОГУ";
     DisableAlertAction                            = " ОТКЛЮЧИТЬ ТРЕВОГУ";

     Fail_Alarm                                    = " МИССИЯ ПРОВАЛЕНА";

     AllTestPilotsKilled                           = "ВСЕ ЛЕТЧИКИ-ИСПЫТАТЕЛИ ПОГИБЛИ";
     Fail_BodyAlarm                                = "ОХРАНА ОБНАРУЖИЛА ТЕЛО ЛЕТЧИКА-ИСПЫТАТЕЛЯ";
     Fail_MissionTimer                             = "РАДАР ЗАПУЩЕН ДО ВЫСАДКИ ГРУППЫ";
     Fail_GroupMissionTimer                        = "ЗЕНИТКИ НЕ ОБЕЗВРЕЖЕНЫ ДО ПРИБЫТИЯ ГРУППЫ";
      
     SovietSoldierDie                              = "";

     WhereIsFuckenBenzovozMessage                  = "@ Где же этот чертов бензовоз?";
     FuelPlaneMessage                              = "@ Заправь его быстрее! Я у себя в кабинете!";
     MoveItToPlaneMessage                          = "@ И часа не прошло! Подвези его к моему самолету! И побыстрее!";

     Poison_Name                                   = "СЛАБИТЕЛЬНОЕ";
     Poison_TipName                                = "Слабительное";
     
     Acid_Name                                     = "СОЛЯНУЮ КИСЛОТУ";
     Acid_TipName                                  = "Соляная кислота";

     LetsGoWithMeMessage                           = "- Иди за мной..";
     GunSoldierNeedsBulletsMessage                 = "@ Зенитному расчету требуются боеприпасы. Грузчики на улице. Смотри не спутай с холостыми..";
     AllOkYouAreEmptyMessage                       = "@ Ты свободен. Мы сами разгрузим";
     GunGuardsHasNoAmmoMessage                     = "- Ганс, тебя с грузовиком ждут в ангаре с боеприпасами. У зенитчиков проблемы со снарядами..";
     WeAreOurBulletsMessage                        = "@ Где тебя носит? Нам срочно нужны боеприпасы!";
     TrackIsEmptyMessage                           = "@ Грузовик пуст! Привези нам боеприпасы!";
     ChangeMusicMessage                            = "@ Этот ритм меня уже достал!";
     CanChangeOfficerMessage                       = "@ Приказ сменить музыку может дать только офицер...";
     SendTrackToGunMessage                         = "@ Отвези боеприпасы к зенитке. Они ждут!";

     OrderLoadersAction                            = "ПРИКАЗАТЬ НАЧАТЬ ЗАГРУЗКУ";

     GunNeutralizedMessage                         = "Зенитка обезврежена";
     
     Table_1_Name                                  = "ТАБЛИЧКУ 'БОЕВЫЕ'";
     Table_1_TipName                               = "Табличка 'Боевые'";

     Table_2_Name                                  = "ТАБЛИЧКУ 'ХОЛОСТЫЕ'";
     Table_2_TipName                               = "Табличка 'Холостые'";

     Message_PovesitBoevie                         = "ПОВЕСИТЬ ТАБЛИЧКУ 'БОЕВЫЕ'";
     Message_ZamenaHolostie                        = "ЗАМЕНИТЬ НА 'ХОЛОСТЫЕ'";
 
     Key_FirstFloor                                = "Ключ главного здания";
     Key_Sklad                                     = "Ключ жилой зоны";
     
     Message_Help                                  = { "Механик имеет доступ к любому оборудованию",
                                                       "Летчик может посмотреть расписание вылетов",
                                                       "На складах всегда можно найти что-нибудь полезное",
                                                       "Район радара и зениток является закрытой зоной",
                                                       "Стрельба в отдаленных местах не приведет к тревоге",                                        
                                                       "Аэродром окружен минным полем",
                                                       "Форму водителя можно легко получить на стоянке",
                                                       "В пасмурную погоду летчики часто отдыхают в жилой зоне",
                                                       "Зенитные расчеты нуждаются в боеприпасах и питании",
                                                       "Остерегайтесь часовых на вышках",
                                                       "Офицеры обычно проводят совещание в главном здании",
                                                       "В грузовых машинах с тентом можно прятать тело"
                                                       };
                                      
      Message_ClothInfo                             = { "Солдаты в камуфляже охраняют периметр аэродрома",
                                                        "Солдат может свободно перемещаться в районе бараков",
                                                        "Солдаты СС охраняют главное здание",
                                                        "Летчик может посещать диспетчерскую и главное здание",
                                                        "Механик имеет доступ к оборудованию и самолетам",
                                                        "Солдаты в этой форме обслуживают зенитные установки" };
                             
      Message_Alarm                                 = "Поднята тревога!";
      Message_AlarmFinished                         = "Тревога закончилась";
      
      Message_TestPilotDetected                     = "! Охраной обнаружено тело летчика-испытателя!";
      
      Message_MissionTimer                          = "! Радар будет запущен через ";
      Message_GroupTimer                            = "! Группа прибудет через ";
      Message_TimerFinish_1                         = " минут..";
      Message_TimerFinish_2                         = " минуты..";
      Message_TimerFinish_3                         = " минуту..";
      Message_AllMechanicsDead                      = "! Все механики мертвы";
      
      Message_Zenit                                 = " - Необходимо обезвредить зенитные установки, для обеспечения успешной высадки..";
      
      Message_Info_Radar                            = "! Если радар будет запущен до прибытия разведгруппы - миссия будет провалена!";
      Message_Info_Pilot                            = "! Если тело пилота обнаружат - миссия будет провалена!";
      Message_Info_Body                             = "В грузовик можно спрятать тело..";
      
      Message_StopMove_TankTrack                    = "@ Только водитель может использовать бензовоз!";
      Message_StopMove_GunPlace                     = "@ Доступ разрешен только зенитному расчету";
      Message_StopMove_GunPlace2                    = "@ Доступ разрешен только зенитному расчету";
      Message_StopMove_MainHouseFloor1              = "@ Передвижение по первому этажу запрещено!";
      Message_StopMove_MainHouseFloor2              = "@ В зале проходит совещание офицеров!";
      Message_StopMove_MainHouseFloor3              = "@ На этом этаже могут находиться только летчики или офицеры";
      Message_StopMove_MainHouseHall                = "@ Немедленно покиньте здание!";
      Message_StopMove_MainHouseEnter_ForestSoldier = "@ Ты должен охранять периметр аэродрома!";
      Message_StopMove_MainHouseEnter_Civilian      = "@ Доступ в здание разрешен только военным";
      Message_StopMove_Radar_ForestSoldier          = "@ Солдатам запрещено находиться на этой территории!";
      Message_StopMove_Radar_Civilian               = "@ Зона закрыта для гражданских лиц!";
      Message_StopMove_Radar_Driver                 = "@ Ваше место - в автопарке! Тут вам нечего делать!";
      Message_StopMove_Tower                        = "@ Никто не имеет право находиться на вышке! Немедленно спускайтесь!";
      Message_StopMove_AirTowerEnter_1              = "@ Вы не летчик, чтобы посещать диспечерскую!";
      Message_StopMove_AirTowerEnter_2              = "@ У меня приказ стрелять на поражение!";
      Message_StopMove_Sklad                        = "@ У меня приказ никого не пускать на территорию склада!";
      Message_StopMove_AirTower                     = "@ Немедленно покиньте диспечерскую!";
      Message_StopMove_KitchenZone                  = "@ Вам здесь нечего делать!";
      Message_StopMove_MusicComputer                = "@ Только мне разрешено работать с этим устройством!";
      Message_StopMove_Building1Enter               = "@ Стой! Стрелять буду!";
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
       
       -- Level.UpdateSounds();
       
       if (Level.GetDifficulty() > 0) then
           System:SetVar("ai_minefield_scale", 0.4);
           System:SetVar("ai_minefield_barier", 0.6);
       else
           System:SetVar("ai_minefield_scale", 0.2);
           System:SetVar("ai_minefield_barier", 0.7);
       end
       

       Level.MineFieldRefs = 0;
       Level.DisableMineField = false;
       
       Level.EnableDocumentRoomLighting( Level.DocumentRoomLighting );

       local player = Level.GetPlayer();
       if ( player != nil ) then 
         local rain = Level.CreateEffect( 'RAIN' , Actor.GetNode( player ) );
         
         Level.SetEffectParameter( rain, "DropLimit" , 2 );
         
         Level.SetEffectParameter( rain, "UseCamera" , true );

         Level.SetEffectParameter( rain, "CancelArea", -478.31,-7.67,-571.43,-348.31,52.32,-381.43 );
         Level.SetEffectParameter( rain, "CancelArea", -1602.4501,-7.3584,-950.3668,-1582.4501,25.6416,-916.3668 );
         Level.SetEffectParameter( rain, "CancelArea", -1355.0228,-10.5675,-1190.3176,-1255.0226,29.6786,-1150.0709 );
         Level.SetEffectParameter( rain, "CancelArea", 300.4597,-3.30,-463.91,361.58,56.69,-418.91 );
         Level.SetEffectParameter( rain, "CancelArea", 1041.596,-1.879,-1268.113,1058.357,26.121,-1243.712 );

         -- vishki

         Level.SetEffectParameter( rain, "CancelArea", 1588.67,99.33,-859.28,1618.67,126.331,-831.283 );
         Level.SetEffectParameter( rain, "CancelArea", 1172.35,99.90,-1525.20,1200.35,126.90,-1495.20 );
         Level.SetEffectParameter( rain, "CancelArea", 270.48,99.52,-1331.10,300.48,126.52,-1303.10 );
         Level.SetEffectParameter( rain, "CancelArea", -954.82,99.45,-1174.43,-924.82,126.45,-1145.43 );
         Level.SetEffectParameter( rain, "CancelArea", -1574.16,99.96,-989.63,-1544.16,126.96,-960.63 );
         Level.SetEffectParameter( rain, "CancelArea", -1716.08,100.51,157.16,-1687.08,127.50,187.16 );
         Level.SetEffectParameter( rain, "CancelArea", 991.12,99.86,11.36,1021.12,126.86,1181.36 );
         Level.SetEffectParameter( rain, "CancelArea", 1920.54,99.76,10.81,1950.54,126.76,1053.81 );
         Level.SetEffectParameter( rain, "CancelArea", 2128.55,99.84,226.09,2157.55,126.84,256.08 );
       end;
       
       Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\b_action2.ogg" );
       --Level.AddMusic( Level.MUSIC_MOOD_ATTENTION, "sounds\\music\\b_action2.ogg" );
       Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.25#sounds\\music\\b_dark3.ogg" );
       
       Level.SetDefaultMusicPause( 180.0, 300.0, 30.0, 120.0 );
       
       Level.SetDOFPostFilter( 1, 0.0, 1200.0, 2500.0 );              
       System:SetVar("r_dofsky", 128 );
       System:SetVar( "r_rimsunlightfactor", 0.15 );
              
       if ( Level.RadarPultLive > 0 ) then
         Level.EnableObjectHitNotify('RPLT', true );
       end;
       
       Level.SetDoorKey('DR10', 'FFKY');
       Level.SetDoorKey('DR11', 'FFKY');
       Level.SetDoorKey('DR12', 'FFKY');
       Level.SetDoorKey('DR12', 'FFKY');
       Level.SetDoorKey('DS11', 'FFKY');
           
       Level.SetDoorKey('SRDR', 'SLKY');
       Level.SetDoorKey('DR39', 'SLKY');
       Level.SetDoorKey('DR35', 'SLKY');
       Level.SetDoorKey('DR01', 'SLKY');
       
       if (Level.TrackLoaded != "") then
          local vehicle = Level.FindVehicle(Level.TrackLoaded);
          if (vehicle != nil) then
	          Entity.EnableMesh(vehicle, "nakidka", true);
	      end
       end   

       Level.SetHudEffect( "noise_small" , true );              
       
       Level.DisableHudFadeIn = true;
       Level.DynamiteTrigger  = nil;
  end;
  
--------------------------------------------------------
-- Name: Level.OnSave()
-- Desc:
--------------------------------------------------------
  function Level.OnSave()
  
       Stream.WriteInt(6);
       
       Stream.WriteBool(Level.GotPoisson);
       Stream.WriteBool(Level.InstalledPoisson);
       Stream.WriteBool(Level.TankTrackScriptEnabled);
       Stream.WriteBool(Level.PlayerAtTankTrack);
       Stream.WriteBool(Level.AtBenzovozTrigger);
       Stream.WriteBool(Level.UsesAcid[1]);
       Stream.WriteBool(Level.UsesAcid[2]);
       Stream.WriteBool(Level.OilStoped);

       Stream.WriteInt(table.getn(Level.TestPilots));
       for i in Level.TestPilots do
           Stream.WriteString(Level.TestPilots[i]);
       end

       Stream.WriteInt(table.getn(Level.Mechanics));
       for i in Level.Mechanics do
           Stream.WriteString(Level.Mechanics[i]);
       end

       Stream.WriteInt( Level.RadarPultLive );

       -- SG. 01
       Stream.WriteString( Level.PlayerTrack );
       Stream.WriteString( Level.TrackInZone );
       Stream.WriteString( Level.TrackLoaded );
       Stream.WriteString( Level.TrackNearGun );
       Stream.WriteBool( Level.BadBulletsLoaded );
       Stream.WriteBool( Level.CanOrderLoaders );
       Stream.WriteBool( Level.BulletsInfoScriptCompleted );
       Stream.WriteBool( Level.BadBulletsInstalled );
       Stream.WriteBool( Level.DriverGunScriptCompleted );

       Stream.WriteInt( table.getn(Level.Vehicles) );
       for i in Level.Vehicles do 
           Stream.WriteString(Level.Vehicles[i]);
       end

       -- BZ
       Stream.WriteFloat( Level.TableHosPos.x );
       Stream.WriteFloat( Level.TableHosPos.y );
       Stream.WriteFloat( Level.TableHosPos.z );
       Stream.WriteBool( Level.TablePodmena );
       
       Stream.WriteInt ( Level.TryUseAcid );
       Stream.WriteBool( Level.DocumentRoomLighting );
       Stream.WriteBool( Level.KilledSovietSoldier );
       
       Stream.WriteBool( Level.DynamiteFused[1] );
       Stream.WriteBool( Level.DynamiteFused[2] );
       
       Stream.WriteBool( Level.CanSoldierUrinate );
       
       Stream.WriteBool( Level.AlertCalled );
       Stream.WriteBool( Level.AlertDisabled );
       
       Level.WriteArray( Level.AlertBodyAnchors );
       Stream.WriteBool( Level.PilotBodyDetected );
       
       Stream.WriteFloat( Level.MissionTimer );
       Stream.WriteFloat( Level.MissionTimerInterval );
       
       Stream.WriteBool( Level.RadarBroken );
       Stream.WriteBool( Level.VehicleExploded );
       
       Stream.WriteBool( Level.NearTankTrackTrigger );
       Stream.WriteBool( Level.PlaneCutscene );
       
       Stream.WriteBool( Level.WasMoveItToPlaneMessage );
       
       -- version 1
       Stream.WriteBool( Level.LoadedsTimerStarted );
       Stream.WriteBool( Level.TankTrackNearPlane );
       
       -- version 2
       Stream.WriteBool( Level.RadioCutScene );
       
       -- version 3
       Stream.WriteBool( Level.MissionTimerStarted );
       
       -- version 4
       Stream.WriteBool( Level.BenzovozCutsceneShowed );
       
       -- version 5
       Stream.WriteBool( Level.JustSeePilotBody );
       
       -- version 6
       Stream.WriteBool( Level.LoadersScriptRunning );
       Stream.WriteBool( Level.LoadingFailed );
       
       Level.OnSave_Common();
  end

--------------------------------------------------------
-- Name: Level.OnLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnLoad()
  
       local version = Stream.ReadInt();

       Level.GotPoisson             = Stream.ReadBool();
       Level.InstalledPoisson       = Stream.ReadBool();
       Level.TankTrackScriptEnabled = Stream.ReadBool();
       Level.PlayerAtTankTrack      = Stream.ReadBool();
       Level.AtBenzovozTrigger      = Stream.ReadBool();
       Level.UsesAcid = {};
       Level.UsesAcid[1]            = Stream.ReadBool();
       Level.UsesAcid[2]            = Stream.ReadBool();
       Level.OilStoped              = Stream.ReadBool();

       local n = Stream.ReadInt();
       Level.TestPilots = {};
       for i = 1, n do
           Level.TestPilots[i] = Stream.ReadString();
       end

       n = Stream.ReadInt();
       Level.Mechanics = {};
       for i = 1, n do
           Level.Mechanics[i] = Stream.ReadString();
       end

       Level.RadarPultLive              = Stream.ReadInt();

       Level.PlayerTrack                = Stream.ReadString();
       Level.TrackInZone                = Stream.ReadString();
       Level.TrackLoaded                = Stream.ReadString();
       Level.TrackNearGun               = Stream.ReadString();
       Level.BadBulletsLoaded           = Stream.ReadBool();
       Level.CanOrderLoaders            = Stream.ReadBool();
       Level.BulletsInfoScriptCompleted = Stream.ReadBool();
       Level.BadBulletsInstalled        = Stream.ReadBool();
       Level.DriverGunScriptCompleted   = Stream.ReadBool();

       n = Stream.ReadInt();
       Level.Vehicles = {};
       for i =1, n do 
           Level.Vehicles[i] = Stream.ReadString();
       end
       
       Level.TableHosPos = {};
       Level.TableHosPos.x           = Stream.ReadFloat();
       Level.TableHosPos.y           = Stream.ReadFloat();
       Level.TableHosPos.z           = Stream.ReadFloat();
       Level.TablePodmena            = Stream.ReadBool(); 
       
       Level.TryUseAcid              = Stream.ReadInt();
       Level.DocumentRoomLighting    = Stream.ReadBool();
       
       Level.KilledSovietSoldier     = Stream.ReadBool();
      
       Level.DynamiteFused = {};
       
       Level.DynamiteFused[1]        = Stream.ReadBool();
       Level.DynamiteFused[2]        = Stream.ReadBool();
       
       Level.CanSoldierUrinate       = Stream.ReadBool();
       
       Level.AlertCalled             = Stream.ReadBool();
       Level.AlertDisabled           = Stream.ReadBool();
       
       Level.AlertBodyAnchors        = Level.ReadArray();
       Level.PilotBodyDetected       = Stream.ReadBool();
       
       Level.MissionTimer            = Stream.ReadFloat();
       Level.MissionTimerInterval    = Stream.ReadFloat();
       
       Level.RadarBroken             = Stream.ReadBool();
       Level.VehicleExploded         = Stream.ReadBool();
       
       Level.NearTankTrackTrigger    = Stream.ReadBool();
       Level.PlaneCutscene           = Stream.ReadBool();
       
       Level.WasMoveItToPlaneMessage = Stream.ReadBool();
       
       Level.LoadedsTimerStarted    = false;
       Level.TankTrackNearPlane     = false;
       Level.MissionTimerStarted    = false;
       Level.BenzovozCutsceneShowed = false;
       Level.LoadersScriptRunning   = false;
       Level.LoadingFailed          = false;
       
       if ( version >= 1 ) then
       
          Level.LoadedsTimerStarted = Stream.ReadBool();
          Level.TankTrackNearPlane  = Stream.ReadBool();
       end
       
       if ( version >= 2 ) then
          Level.RadioCutScene       = Stream.ReadBool();
       end;
        
       if (version >= 3) then
          Level.MissionTimerStarted = Stream.ReadBool();
       end;   
       
       if (version >= 4) then
          Level.BenzovozCutsceneShowed = Stream.ReadBool();
       end
       
       if (version >= 5) then
          Level.JustSeePilotBody = Stream.ReadBool();
       end
       
       if (version >= 6) then
          Level.LoadersScriptRunning = Stream.ReadBool();
          Level.LoadingFailed        = Stream.ReadBool();
       end
              
       Level.OnLoad_Common();
       Level.OnFinishLoad();
  end

--------------------------------------------------------
-- Name: Level.OnLoaded()
-- Desc:
--------------------------------------------------------
  function Level.OnLoaded()
  
       Level.OnLoaded_Common();

       Level.ChangePlayerStand( 2 );

       -- AI.InstallDifficultLevelJobs();
       Level.GotPoisson             = false;
       Level.InstalledPoisson       = false;
       Level.TankTrackScriptEnabled = true;
       Level.PlayerAtTankTrack      = false;
       Level.AtBenzovozTrigger      = false;
       Level.UsesAcid = {};
       Level.UsesAcid[1]            = false;
       Level.UsesAcid[2]            = false;
       Level.OilStoped              = false;
       
       Level.TestPilots = { 'GTP1', 'GTP2' };
       
       Level.Mechanics  = { 'GM09', 'GM10', 'GM11', 'GM08', 'GM05', 'GM07', 'GM04' };
       Level.SoundName  = { "dis_generator05", "acid01", "acid02", "dis_generator_off",
                             "radar_break2", "rupor_fin1", "rupor_fin2", "rupor01", 
                             "rupor02", "rupor03", "rupor04", "rupor05",
                             "rupor06", "rupor_fin03", "rupor_fin04", "rupor_fin05", 
                             "rupor_fin06", "rupor_fin07", "rupor_fin08"
                          };
       Level.SoundState = { true, false, false, false,
                            true, true, false, true,
                            true,  true,  true,  true, 
                            true,  false, false, false,
                            false, false, false };

       -- SG. 01
       Level.PlayerTrack                = "";
       Level.TrackInZone                = "";
       Level.TrackLoaded                = "";
       Level.TrackNearGun               = "";
       Level.BadBulletsLoaded           = false;
       Level.CanOrderLoaders            = false;
       Level.BulletsInfoScriptCompleted = false;
       Level.CanOrderLoaders            = false;
       Level.BadBulletsInstalled        = false;
       Level.DriverGunScriptCompleted   = false;
       Level.KilledSovietSoldier        = false;       
       Level.Vehicles = { 'BL06', 'BL07', 'BL08', 'BL10', 'BL01', 'BL11' };
       
       Level.AlertCalled                = false;
       Level.AlertDisabled              = false;
       Level.PilotBodyDetected          = false;
        
       Level.TryUseAcid                 = 0;
       Level.CanSoldierUrinate          = true;
       
       Level.MissionTimer               = 0.0;
       Level.MissionTimerInterval       = 60.0;
       
       Level.RadarBroken                = false;
       Level.VehicleExploded            = false;
       
       Level.NearTankTrackTrigger       = false;
       Level.PlaneCutscene              = false;
       
       Level.WasMoveItToPlaneMessage    = false;
       Level.LoadedsTimerStarted        = false;
       Level.TankTrackNearPlane         = false;
       Level.RadioCutScene              = false;
       
       Level.MissionTimerStarted        = false;
       Level.BenzovozCutsceneShowed     = false;
       
       Level.JustSeePilotBody           = false;
       Level.LoadersScriptRunning       = false;
       Level.LoadingFailed              = false;
       
       Level.AlertBodyAnchors        = { 'A310', 'A311', 'A312', 'A313', 'A314', 'A315',
                                         'A316', 'A317', 'A318', 'A319', 'A320', 'A321' };
       
       for i in Level.Vehicles do
          Level.AddActionHandler( Level.AH_ENTER_VEHICLE, Level.Vehicles[i], "OnEnterBlitz" );
          Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, Level.Vehicles[i], "OnLeaveBlitz" );
       end

       Level.AddActionHandler( Level.AH_DYNAMITE_FUSE );
       Level.AddActionHandler( Level.AH_EXPLOSION );
       
       Level.AddActionHandler( Level.AH_ENTER_VEHICLE, "BENZ", "OnEnterTankTrack" );
       Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, "BENZ", "OnLeaveTankTrack" );
                                                        
       Level.AddActionHandler( Level.AH_ENTER_VEHICLE, "KB02", "OnEnterKubel" );
       Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, "KB02", "OnLeaveKubel" );
       
       for i in Level.TestPilots do
          Level.AddActionHandler( Level.AH_ACTOR_HITTED, Level.TestPilots[i], "OnHittedTestPilot");
          Level.AddActionHandler( Level.AH_ACTOR_KILLED, Level.TestPilots[i], "OnKilledTestPilot");
       end

       for i in Level.Mechanics do
          Level.AddActionHandler( Level.AH_ACTOR_HITTED, Level.Mechanics[i], "OnHittedMechanic");
          Level.AddActionHandler( Level.AH_ACTOR_KILLED, Level.Mechanics[i], "OnKilledMechanic");
       end
       
       Level.AddActionHandler( Level.AH_ACTOR_KILLED, "SS01", "OnKilledSovietSoldier" );
       Level.AddActionHandler( Level.AH_ACTOR_HITTED, "SS01", "OnKilledSovietSoldier" );
       
       Level.AddActionHandler( Level.AH_ACTOR_HITTED, "GO05", "OnKilledConferenceOfficer" );
       Level.AddActionHandler( Level.AH_ACTOR_KILLED, "GO05", "OnKilledConferenceOfficer" );
       
       Level.AddActionHandler( Level.AH_EXPLODE_VEHICLE, "BL04", "OnExplodeVehicle" );
       Level.AddActionHandler( Level.AH_CHANGE_CLOTH );

       AI.EnableZone("TankTrack", false);
       AI.EnableZone("TankTrackOut", false);
       AI.EnableZone("Barack2", false);
       AI.EnableZone("KubelEnterZone", false);
       
       Level.AddKey('G116', 'FFKY', MissionText.Key_FirstFloor, nil, true );
       Level.AddKey('GS62', 'FFKY', MissionText.Key_FirstFloor, nil, true );
       
       Level.AddKey('GC10', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('GS73', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('GS66', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('G160', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('GTP1', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('G152', 'SLKY', MissionText.Key_Sklad, nil, true );
       Level.AddKey('GSC4', 'SLKY', MissionText.Key_Sklad, nil, true );
       

       Level.EnableSound("dis_generator05", true);

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
             --Actor.PutWeaponAmmo( player, "nagan");
             Actor.PutWeaponAmmo( player, "HiStandart");

             Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
             Actor.PutEmptyPouch( player, "medikit", "Equipment" );

             Actor.PutEmptyPouch( player, "f1", "Weapon" );
             Actor.PutEmptyPouch( player, "f1", "Weapon" );
             Actor.PutEmptyPouch( player, "f1", "Weapon" );

             Actor.PutEmptyPouch( player, "Smoke", "Weapon" );

             Actor.PutEmptyPouch( player, "binocular", "Equipment" );
             Actor.PutEmptyPouch( player, "lockpick", "Equipment" );
             
             Actor.PutEmptyPouch( player, "chloroform", "Weapon" );             

             local pack = Level.CreateItem( "playersack", "container" );
             if ( pack == nil ) 
             then
                error('Failed create player pack');
             end;

             --Actor.PutBackPack( player, pack );
          end;
          
          local kis = Level.CreateItem( "Custom:Poison" , "Equipment" );          
          if ( kis != nil ) then
          
            Entity.SetUniqueID( kis, 'KISL' );
            Entity.SetName( kis, MissionText.Acid_Name );
            Level.SetCustomItemName( kis, MissionText.Acid_TipName );
            
            local emptyPouch = Actor.GetEmptyPouch( player );
             if ( emptyPouch < 0 ) then
                emptyPouch = 17;
             end;
             
             Actor.PutPouch( player, emptyPouch, kis );
          end;
             
       end;

       Level.InstallInitialTasks();

       local poison = Level.FindItem( 'POIS' );
       if ( poison != nil ) then
           Entity.SetName( poison, MissionText.Poison_Name );
           Level.SetCustomItemName( poison, MissionText.Poison_TipName );
           Level.EnableNotifyPickup( poison, true );
       end;

       -- BZ

       local table_1 = Level.FindItem( 'TREL' );
       if ( table_1 != nil ) then
           Entity.SetName( table_1, MissionText.Table_1_Name );
           Level.SetCustomItemName( table_1, MissionText.Table_1_TipName );
           Level.EnableItemPickup( table_1, false );
           Level.EnableNotifyPickup( table_1, true );
       end;

       Level.TablePodmena = false;
       Level.TableHosPos  = {};

       local table_2 = Level.FindItem( 'THOS' );
       if ( table_2 != nil ) then

           Entity.SetName( table_2, MissionText.Table_2_Name );
           Level.SetCustomItemName( table_2, MissionText.Table_2_TipName );
           
           Level.TableHosPos.x, Level.TableHosPos.y, Level.TableHosPos.z = node.GetPosition( Entity.GetNode( table_2 ) );
       end;
       
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'FVDL', "OnChangeVodilaCloth" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'CCOK', "OnChangeCookCloth" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'SSFM', "OnChangeSSFormCloth" );

       Level.RadarPultLive         = 4;
       Level.DocumentRoomLighting = false;
       
       Level.EnableNotifyPickup( Level.FindItem( 'CCOK' ), true );
       Level.EnableNotifyPickup( Level.FindItem( 'FVDL' ), true );

       Level.AddTimer( 'GSTM', "OnGoSmoking", 300.0, true );
       
       AI.AddHideBodyBox(751.2620, -3.3309, 688.8276, 763.2620, 8.6691, 700.8276);
       
       Level.AddVisionBrushes();
       
       for i in Level.TestPilots do
          local npc = AI.FindNPC(Level.TestPilots[i]);
          if (npc != nil) then
             AI.Disable(npc, "body alert");
          end
       end
  
       Level.DynamiteFused={};

       Level.DynamiteFused[1] = false;
       Level.DynamiteFused[2] = false;
       
       Level.EnableLevelMark('POIS' , true );
       
       if (Level.GetDifficulty() != 3) then
          Level.EnableLevelMark('COOK' , true );
          Level.EnableLevelMark('VDCL' , true );
       end
       
       AI.Enable("notify_visited_body");
       
       local dynMarks = { 'DYN1' , 'DYN2' };

       for i = 1, 2, 1 do
         local dynamite = Level.FindWeaponItem( dynMarks[i] );
         if ( dynamite != nil ) then
              Level.EnableItemPickup( dynamite, false );
              Entity.SetHidden( dynamite, true );
         end;
       end;
       
       if (Level.GetDifficulty() == 3) then
          local anchor = AI.FindAnchor('A327');
          if (anchor != nil) then
             AI.EnableRandomIdleAnchor( anchor, false );
          end
       end
       
       Level.SetFormHelp( "ForestSoldier",     MissionText.Message_ClothInfo[1] );
       Level.SetFormHelp( "Soldier",           MissionText.Message_ClothInfo[2] );
       Level.SetFormHelp( "SS_Soldier",        MissionText.Message_ClothInfo[3] );
       Level.SetFormHelp( "Pilot",             MissionText.Message_ClothInfo[4] );
       Level.SetFormHelp( "Mechanic",          MissionText.Message_ClothInfo[5] );
       Level.SetFormHelp( "GunPlaceSoldier",   MissionText.Message_ClothInfo[6] );
       
       AI.AddSoundFader('GENE', "", 1465.02, 14.27, -591.25, 150.0, 150.0);

       if (Level.GetDifficulty() == 3) then
          local form_eq = { 'GWS1', 'MW03', 'GWSS', 'WGW1' };
          for i in form_eq do
             Level.HideItem( form_eq[i] );
          end
       end
       
       Level.OnFinishLoad();
  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false );

--------------------------------------------------------
-- Name: Level.OnChangeCamera()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeGunCamera()     
     Level.ChangeCamCutScene( "ZenCutscene", "Levels\\Airbase\\zen2.scm", { 1, 0.0, 130.0, 150.0, 128 } );
  end

--------------------------------------------------------
-- Name: Level.OnStartTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnStartGunCutscene()
     local dofParams = { 1, 0.0, 120.0, 150.0, 255 };
     Level.BeginCutScene( "ZenCutscene", "Levels\\Airbase\\zen1.scm", MissionText.Message_Zenit, 10.0, dofParams );
  end
  
--------------------------------------------------------
-- Name: Level.StartDgunTask()
-- Desc:
--------------------------------------------------------
  function Level.StartDgunTask()
     if (Level.HasMissionTask('DGUN') == false) then
        Level.InstallDpc("Level.OnStartGunCutscene()", 5.0);
        Level.InstallDpc("Level.OnChangeGunCamera()", 10.0);
 
        Level.StartTask(MissionText.Task_4, 'DGUN', "levels\\airbase\\gun_task.txt" );
     end
  end
  
--------------------------------------------------------
-- Name: Level.OnStartPlaneCutscene()
-- Desc:
--------------------------------------------------------
  function Level.OnStartPlaneCutscene()
     Level.BeginCutScene( "PlaneCutscene", "Levels\\Airbase\\plane.scm", "", 3.0, { 3, 20.0, 120.0, 180.0, 255 } );
  end

--------------------------------------------------------
-- Name: Level.CanPlayNearBenzovozMessage()
-- Desc:
--------------------------------------------------------
  function Level.CanPlayNearBenzovozMessage()
     return Level.IsWaitingForBenzovoz() and
            Level.PlayerAtTankTrack == true and
            Level.TankTrackScriptEnabled == true and
            Level.WasMoveItToPlaneMessage == false;
  end
  
--------------------------------------------------------
-- Name: Level.PlayNearBenzovozMessage()
-- Desc:
--------------------------------------------------------
  function Level.PlayNearBenzovozMessage()
      if (Level.WasMoveItToPlaneMessage == false) then
         Level.VoiceMessage( AI.FindNPC('GTP2'), "%Script03_Sound", "MoveItToPlaneMessage");
         Level.InstallDpc("AI.HandleVoice( AI.FindNPC('GTP2'), '%Script04_Sound')", 1.5);
      end
      
      Level.EnableLevelMark('PLAN', true);
      
      Level.WasMoveItToPlaneMessage = true;
      
      if (Level.PlaneCutscene == false) then
         Level.PlaneCutscene = true;
         
         if (Level.GetDifficulty() <= 1) then
            if (Level.HasDpc("Level.OnStartPlaneCutscene()") == false) then
               Level.InstallDpc("Level.OnStartPlaneCutscene()", 3.0);
            end
         end
      end
  end

--------------------------------------------------------
-- Name: Level.CanGoToBenzovoz()
-- Desc:
--------------------------------------------------------
  function Level.CanGoToBenzovoz()
     return Level.IsWaitingForBenzovoz() == true and
            Level.TankTrackScriptEnabled == true and
            Level.TankTrackNearPlane == true;
  end

--------------------------------------------------------
-- Name: Level.GoToBenzovoz()
-- Desc:
--------------------------------------------------------
  function Level.GoToBenzovoz()
     Level.TankTrackScriptEnabled = false;
     -- Level.EnableVehicleUse( 'BENZ', false );

     Level.EnableLevelMark('PLAN', false);

     -- Run new bot job...
     AI.SetJob(AI.FindNPC('GTP2'), "SetOrderBenzovoz");
  end

--------------------------------------------------------
-- Name: Level.CheckBenzovoz()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckBenzovoz()
     if (Level.CanGoToBenzovoz() == true) then
        Level.GoToBenzovoz();
     end
  end

--------------------------------------------------------
-- Name: Level.OnEnterTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    AI.Debug(nil, "Level.OnEnterTriggerArea" .. trgname, "");
    -- print("Level.OnEnterTriggerArea " .. trgname);

    if ( trgname == "CheckBenzovozTrigger" ) then
       Level.AtBenzovozTrigger = true;

       Level.OnCheckBenzovoz();
       
    elseif (trgname == "OfficerConfTrigger") then
       
       local officer = AI.FindNPC('GO05');
       if (AI.IsDefault(officer) == true) then
          Level.RunAnchorJob(officer, 'AN53', true);
       end
      
    elseif (trgname == "RadioManMessageTrigger") then
    
       if (Level.CanOrderMusic_NoForm() == true) then
           Level.InstallDpc("Level.OnRadioManMessage()", 1.0);
           
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
       end
       
    elseif (trgname == "LeaveTrigger") then
       
       if (Level.IsMissionTaskCompleted('RADA') == true and
           Level.IsMissionTaskCompleted('SIGN') == true and
           Level.IsMissionTaskCompleted('DGUN') == true and
           Level.IsMissionTaskCompleted('NETP') == true and
           Level.HasMissionTask('LEAV')) then
          
          Level.FinishTask('LEAV');
       end
    
    elseif (trgname == "NearTankTrackTrigger") then
    
       Level.NearTankTrackTrigger = true;
       
    elseif (trgname == "ZenTrigger_1" or trgname == "ZenTrigger_2") then
    
       Level.StartDgunTask();
              
       Level.UnregisterTrigger(Level.FindTrigger( "ZenTrigger_1" ));
       Level.UnregisterTrigger(Level.FindTrigger( "ZenTrigger_2" ));

    elseif ( trgname == "NearTestPilotTrigger") then

       if (Level.CanPlayNearBenzovozMessage() == true) then
          Level.PlayNearBenzovozMessage();
       else
          Level.InstallSingleSmartDpc("Level.PlayNearBenzovozMessage()", 1.0, "Level.CanPlayNearBenzovozMessage()");
       end

    elseif (trgname == "ForestRadistTrigger") then
       Level.OnEnterForestRadistTrigger();

    elseif (trgname == "BulletsAngarPlaceTrigger") then
       Level.OnEnterBulletsAngarPlaceTrigger();

    elseif (trgname == "NearGunTrigger") then
       Level.OnEnterNearGunTrigger();
    elseif ( trgname == "ShowDynMark" or trgname == "ShowDynMark1" ) then
    
       local trg = Level.FindTrigger( trgname );
       local idx = Trigger.GetUniqueIdAsNumber( trg ) - 2;
              
       if ( Level.UsesAcid[idx] == false ) then
       
        local pack = Actor.GetBackPack( Level.GetPlayer() );
        if ( pack != nil ) then               
          local dynamiteIndex = ItemPack.FindWeapon( pack, Level.WEAPON_CLASS_EXPLOSIVE );
          if ( dynamiteIndex >= 0 ) then
              local it = Level.FindWeaponItem( Trigger.GetScriptCmd( trg ) );
              if ( it != nil ) then
                Entity.SetHidden( it, false );
              end;               
          end;
        end;
        
       else
       
         Level.UnregisterTrigger( trg );
       
       end;
    
    end;

  end

--------------------------------------------------------
-- Name: Level.OnLeaveTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

    AI.Debug(nil, "Level.OnLeaveTriggerArea" .. trgname, "");

    if (trgname == "CheckBenzovozTrigger") then
       Level.AtBenzovozTrigger = false;
       
    elseif ( trgname == "NearTestPilotTrigger") then
       
       Level.RemoveDpc("Level.PlayNearBenzovozMessage()");
       
    elseif (trgname == "NearTankTrackTrigger") then
    
       Level.NearTankTrackTrigger = false;

    elseif (trgname == "BulletsAngarPlaceTrigger") then
       Level.OnLeaveBulletsAngarPlaceTrigger();

    elseif (trgname == "NearGunTrigger") then
       Level.OnLeaveNearGunTrigger();
    elseif ( trgname == "ShowDynMark" or trgname == "ShowDynMark1" ) then
    
       local dynMark = Trigger.GetScriptCmd( Level.FindTrigger( trgname ) );       
       local it      = Level.FindWeaponItem( dynMark );
       if ( it != nil ) then
         Entity.SetHidden( it, true );       
       end;
       
    end;

  end


  
------------------------------- Level logic ----------------------------------

--------------------------------------------------------
-- Name: Level.InstallInitialTasks()
-- Desc:
--------------------------------------------------------
  function Level.InstallInitialTasks()
     -- old:
     -- Level.StartTask(MissionText.Task_1, 'IDEN', "levels\\airbase\\identify_task.txt");
     -- Level.StartTask(MissionText.Task_4, 'DGUN', "levels\\airbase\\gun_task.txt" );
     -- Level.StartTask(MissionText.Task_5, 'RADA', "levels\\airbase\\radar_task.txt" );
     -- Level.StartTask(MissionText.Task_3, 'NETM', "levels\\airbase\\mechanic_task.txt");

     Level.StartTask(MissionText.Task_1, 'IDEN', "levels\\airbase\\identify_task.txt");
     Level.StartTask(MissionText.Task_2, 'NETP', "levels\\airbase\\pilot_task.txt");
     Level.StartTask(MissionText.Task_3, 'NETM', "levels\\airbase\\mechanic_task.txt");
     Level.StartTask(MissionText.Task_5, 'RADA', "levels\\airbase\\radar_task.txt" );

     -- Level.StartTask(MissionText.Task_6, 'SIGN', "levels\\airbase\\signal_task.txt");
     -- Level.StartTask(MissionText.Task_4, 'DGUN', "levels\\airbase\\gun_task.txt" );     
  end

--------------------------------------------------------
-- Name: Level.CheckMissionTaskCompleted()
-- Desc:
--------------------------------------------------------
  function Level.CheckMissionTaskCompleted(id, completed)
     return (Level.IsMissionTaskCompleted(id) == true) or (completed == id);
  end

--------------------------------------------------------
-- Name: Level.RunLogic()
-- Desc:
--------------------------------------------------------
  function Level.RunLogic(completed)
  
--     if (Level.CheckMissionTaskCompleted('IDEN', completed) == true and
--         Level.HasMissionTask('NETP') == false) then

--        Level.StartTask(MissionText.Task_2, 'NETP', "levels\\airbase\\pilot_task.txt");

--        if (Level.IsMissionTaskOver('NETP') == true) then
--           Level.FinishTask('NETP', true);
--        end

--        return true;
--     end

--     if (Level.CheckMissionTaskCompleted('IDEN', completed) == true and
--         Level.CheckMissionTaskCompleted('NETP', completed) == true and
--         Level.CheckMissionTaskCompleted('DGUN', completed) == true and
--         Level.CheckMissionTaskCompleted('RADA', completed) == true) then

--         if (Level.HasMissionTask('SIGN') == false) then
--            Level.StartTask(MissionText.Task_6, 'SIGN', "levels\\airbase\\signal_task.txt");
--            return true;
--         end
--     end

     if (Level.CheckMissionTaskCompleted('NETP', completed) == true and
         Level.IsMissionTaskCompleted('IDEN') == false) then
        Level.FinishTask('IDEN', true, true);
     end

     if (Level.CheckMissionTaskCompleted('NETP', completed) == true and
         Level.CheckMissionTaskCompleted('RADA', completed) == true) then

        if (Level.HasMissionTask('DGUN') == false) then
           if (Level.IsMissionTaskOver('DGUN') == false) then
              Level.StartDgunTask();
           else
              Level.StartTask(MissionText.Task_4, 'DGUN', "levels\\airbase\\gun_task.txt" );
           end

           if (Level.IsMissionTaskOver('DGUN') == true) then
              Level.FinishTask('DGUN', true);
           end
        end

        if (Level.HasMissionTask('SIGN') == false) then
           Level.StartTask(MissionText.Task_6, 'SIGN', "levels\\airbase\\signal_task.txt");
        
           if (Level.IsMissionTaskOver('SIGN') == true) then
              Level.FinishTask('SIGN', true);
           end
        end
        
        if (Level.HasMissionTask('LEAV') == false) then
           Level.StartTask(MissionText.Task_7, 'LEAV', "levels\\airbase\\leave_task.txt");
        end
     end

     return false;
  end

--------------------------------------------------------
-- Name: Level.StartTask()
-- Desc:
--------------------------------------------------------
  function Level.StartTask(text, taskId, taskDscr)
     if (Level.HasMissionTask(taskId) != false) then
        return; 
     end

     Level.AddMissionTask( text, taskId, taskDscr );

     if (taskId == 'IDEN') then

        Level.EnableLevelMark('IDN1' , true );
        Level.EnableLevelMark('IDN2' , true );
        -- Level.SetMissionTaskImportant( 'IDEN' , false );
        
     elseif (taskId == 'LEAV') then
     
        Level.EnableLevelMark('LEAV' , true );

     elseif (taskId == 'NETP') then
        -- Do nothing...

     elseif (taskId == 'NETM') then

        Level.EnableLevelMark('MEC1' , true );
        Level.EnableLevelMark('MEC2' , true );
        Level.SetMissionTaskImportant( 'NETM' , false );

     elseif (taskId == 'DGUN') then

        if (Level.UsesAcid[1] == false) then
           Level.EnableLevelMark('ZEN1' , true );
        end
        
        if (Level.UsesAcid[2] == false and Level.BadBulletsInstalled == false) then
           Level.EnableLevelMark('ZEN1' , true );
        end
        
        Level.EnableLevelMark('ZEN2' , true );
        -- Level.EnableLevelMark('POIS' , true );
        -- Level.EnableLevelMark('COOK' , true );
        
        if (Level.AlertCalled == false) then
           -- Level.EnableLevelMark('VDCL' , true );
        end

     elseif (taskId == 'RADA') then

        if (Level.RadarBroken == false) then
           Level.EnableLevelMark('RADA', true );
           Level.EnableLevelMark('RAHL', true );
        end
       
     elseif (taskId == 'SIGN') then

        Level.EnableLevelMark('SIGR' , true );

        if (AI.FindNPC('SS01') != nil and
            Level.KilledSovietSoldier == false and
            Level.AlertCalled == false) then
            
           Level.EnableLevelMark('SIGM' , true );
           
        end

        if (Level.KilledSovietSoldier == false) then
           Level.EnableLevelMark('SIGF' , true );
        end

     end
  end

--------------------------------------------------------
-- Name: Level.IsMissionTaskOver()
-- Desc:
--------------------------------------------------------
  function Level.IsMissionTaskOver(taskId)
     if (taskId == 'DGUN') then

        return  Level.UsesAcid[1] and 
               (Level.UsesAcid[2] or (Level.BadBulletsInstalled == true));

     elseif (taskId == 'NETP') then
        for i in Level.TestPilots do
           local actor = Level.FindActor(Level.TestPilots[i]);
           
           if (Actor.IsDead(actor) == false) then
              if (Actor.IsHitted(actor) == true) then
                 return true;
              end
           end
        end

     elseif (taskId == 'NETM') then
        for i in Level.Mechanics do
           local actor = Level.FindActor(Level.Mechanics[i]);
           if (Actor.IsHitted(actor) == true) then
              return true;
           end
        end
     
     elseif (taskId == 'RADA') then 
        return Level.RadarBroken == true;
     end

     return false;
  end

--------------------------------------------------------
-- Name: Level.OnBreakRadar()
-- Desc:
--------------------------------------------------------
  function Level.OnBreakRadar()
     Level.PlayEffect( "levels\\airbase\\radio_break.sef" , -878.668, 82.47, 549.544 );
     Level.EnableObjectHitNotify('RPLT', false );
     Level.EnableSound("radar_break2", false );

     local sound = Level.FindSound( "radar_break" );

     if ( sound != -1 ) then
        Level.PlaySound( sound );
     end;
     
     Level.RadarBroken = true;
  end

--------------------------------------------------------
-- Name: Level.FinishTask()
-- Desc:
--------------------------------------------------------
  function Level.FinishTask(taskId, completed, passEffect)
     
     if (completed == false and 
         Level.HasMissionTask(taskId) == true and
         Level.IsMissionTaskCompleted(taskId) == true) then
         
         Level.RemoveMissionTask(taskId);
         return;
     end

     if (Level.HasMissionTask(taskId) == false or
         Level.IsMissionTaskCompleted(taskId) == true) then
        return; 
     end

     if (taskId == 'IDEN') then

        Level.EnableLevelMark('IDN1' , false );
        Level.EnableLevelMark('IDN2' , false );

        if (Level.IsMissionTaskCompleted('NETP') == false and
            Level.HasMissionTask('NETP') == true and
            passEffect != true) then

           Level.InstallTestPilotJob();

           Actor.MarkAsTarget( Level.FindActor('GTP1'), true );
           Actor.MarkAsTarget( Level.FindActor('GTP2'), true );
        
           if (Level.IsMissionTaskCompleted('NETP') == false and
               Level.HasMissionTask('NETP') == true) then
              Level.EnableLevelMark('PIL1', true);
              Level.EnableLevelMark('PIL2', true);
           end
        end

     elseif (taskId == 'LEAV') then
     
        Level.EnableLevelMark('LEAV' , false );

     elseif (taskId == 'NETP') then

        Actor.MarkAsTarget( Level.FindActor('GTP1'), false );
        Actor.MarkAsTarget( Level.FindActor('GTP2'), false );

        Level.EnableLevelMark('PLAN', false);
        
        -- if (Level.IsMissionTaskCompleted('SIGN') == false) then
           --Level.EnableLevelMark('SIGF', false);
        -- end

        Level.EnableLevelMark('PIL1', false);
        Level.EnableLevelMark('PIL2', false);
        
        if (Level.GetDifficulty() <= 1) then
           Level.InstallDpc("Level.AddSmallMessage( MissionText.Message_Info_Pilot, 10.0, 255, 0, 0)", 5.0);
        end
        
        if (Level.GetDifficulty() == 0) then
           if (AI.FindNPC('GTP2') == nil) then
              Level.InstallDpc("Level.HelpMessage( MissionText.Message_Info_Body )", 15.0);
           end
        end

     elseif (taskId == 'NETM') then

        Level.EnableLevelMark('MEC1' , false );
        Level.EnableLevelMark('MEC2' , false );

     elseif (taskId == 'DGUN') then

        Level.EnableLevelMark('ZEN1' , false );
        Level.EnableLevelMark('ZEN2' , false );
        Level.EnableLevelMark('POIS' , false );
        Level.EnableLevelMark('COOK' , false );
        Level.EnableLevelMark('TRBL', false);
        Level.EnableLevelMark('NRGN', false);
        Level.EnableLevelMark('VDCL' , false );

     elseif (taskId == 'RADA') then

        Level.EnableLevelMark('RADA' , false );
        Level.EnableLevelMark('RAHL' , false );

        Level.StartMissionTimer();
        
        Level.RemoveActionHandler( Level.AH_EXPLOSION );
        
        Level.InstallDpc("Level.AddSmallMessage( MissionText.Message_Info_Radar, 10.0, 255, 0, 0)", 10.0);

     elseif (taskId == 'SIGN') then

        Level.EnableLevelMark('SIGR' , false );
        Level.EnableLevelMark('SIGM' , false );
        Level.EnableLevelMark('SIGF' , false );

        if (Level.MissionTimerStarted == true) then
           if (Level.MissionTimer > 20.0 * 60.0) then
              Level.MissionTimer = Level.MissionTimer - 10.0 * 60.0;
           end
        end
                
        Level.StartMissionTimer();
        
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
-- Name: Level.OnDisableAcid01Sound()
-- Desc:
--------------------------------------------------------
  function Level.OnDisableAcid01Sound()
     Level.EnableSound("acid01", false);
  end

--------------------------------------------------------
-- Name: Level.OnDisableAcid02Sound()
-- Desc:
--------------------------------------------------------
  function Level.OnDisableAcid02Sound()
     Level.EnableSound("acid02", false);
  end

--------------------------------------------------------
-- Name: Level.OnDisGeneratorOffDisable()
-- Desc:
--------------------------------------------------------
  function Level.OnDisGeneratorOffDisable()
     Level.EnableSound("dis_generator_off", false);
  end

--------------------------------------------------------
-- Name: Level.StartGunAcidDecamouflage()
-- Desc:
--------------------------------------------------------
  function Level.StartGunAcidDecamouflage()
     local diffState = { {min = 40.0,  max = 250.0, time = 8.0}, 
                         {min = 80.0,  max = 350.0, time = 6.5},
                         {min = 100.0, max = 350.0, time = 5.0},
                         {min = 120.0, max = 350.0, time = 3.0} };

     local state = diffState[Level.GetDifficulty() + 1];

     AI.StartDecamouflage( state.min, state.max, state.time );
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

     if     (id == "GetDocumentTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_SearchBookshelf", 0, true, true, 'GDOC' ) == false ) then
           return false;        
        end;

        AI.StartDecamouflage( 60.0, 80.0, 7.0 );

     elseif (id == "ReadBlackBoardTrigger") then

        Level.FinishTask('IDEN', true);

        onFinishUnregister = true;        

     elseif (id == "UseAcidTrigger_1" or
             id == "UseAcidTrigger_1_a2") then

        if ( Level.StartPlayerCustomAnim("Custom_UseAcid", 0, true, true) == false ) then
           return false;        
        end;
        
        Level.StartGunAcidDecamouflage();
        Level.TryUseAcid           = 1;        

     elseif (id == "UseAcidTrigger_2" or
             id == "UseAcidTrigger_2_a2") then

        if ( Level.StartPlayerCustomAnim("Custom_UseAcid", 0, true, true) == false ) then
            return false;        
        end;

        Level.StartGunAcidDecamouflage();
        Level.TryUseAcid           = 2;

     elseif (id == "OilStopTrigger") then
                 
        if ( Level.StartPlayerCustomAnim("Custom_CloseFuelCrane_Crouch", 2, true, true, 'OILS' ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 30.0, 150.0, 10.0 ); 
        
     elseif (id == "BrakeRadarTrigger") then
                
        if ( Level.StartPlayerCustomAnim("Custom_BreakRadar2", 0, true, true, 'BRAD' ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 30.0, 150.0, 5.0 ); 

     elseif (id == "RadioSignalTrigger" or
             id == "ForestRadioTriggerAmbush") then

        if (id == "RadioSignalTrigger") then
           if ( Level.StartPlayerCustomAnim("Custom_Radio", 0, true, true, 'RADS') == false ) then
               return false;           
           end;
        else
           Level.AddTimer( 'RSTM', "OnRadioSignalTimer", 5.0, true );
        end
        
        AI.StartDecamouflage( 30.0, 100.0, 2.0 );
     
        -- onFinishUnregister = true;
        
     elseif (id == "OrderMusicTrigger")  then
 
        Level.BotChangeMusic();

        onFinishUnregister = true;
        
     elseif (id == "ChangeMusicTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_Radio", 0, true, true, 'CMSA' ) == false ) then
            return false;        
        end;
        
        AI.StartDecamouflage( 30.0, 100.0, 5.0 );

        onFinishUnregister = true;
        
     elseif (id == "PoissonTrigger" or
             id == "PoissonTrigger_a2") then

        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true) == false ) then
           return false;        
        end;

        if (AI.GetPlayerForm() != "Civilian") then
            AI.StartDecamouflage( 80.0, 160.0, 6.0 ); 
        else
            AI.StartDecamouflage( 40.0, 80.0, 6.0 ); 
        end

     -- SG.01
     elseif (id == "OrderLoadersTrigger") then

        if (Level.IsTableChanged() == true) then
           Level.RunLoadersScript(1);
           -- Level.AddTimer( 'LDTM', "OnLoadersTimer", 22.5 - 6.0, true );
        else
           Level.RunLoadersScript(2);
           -- Level.AddTimer( 'LDTM', "OnLoadersTimer", 30.0 - 8.0, true );
        end
        
        onFinishUnregister = true;
        
     end
     
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
-- Name: Level.CanCallSignal()
-- Desc:
--------------------------------------------------------
  function Level.CanCallSignal()
     -- return Level.IsMissionTaskCompleted('NETP') == true;
     return true;
  end

--------------------------------------------------------
-- Name: Level.CanOrderMusic_NoForm()
-- Desc:
--------------------------------------------------------
  function Level.CanOrderMusic_NoForm()
     return Level.HasMissionTask('SIGN') == true and
            Level.IsMissionTaskCompleted('SIGN') == false and
            Level.CanCallSignal() == true and
            AI.IsDefault(AI.FindNPC('G124')) == true and
            Level.KilledSovietSoldier == false and
            Level.AlertCalled == false;
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
     
     if     (id == "GetDocumentTrigger") then

        if (Level.IsMissionTaskCompleted('IDEN') == false) then
           return MissionText.DocumentAction;
        end

     elseif (id == "ReadBlackBoardTrigger") then

        if (Level.IsMissionTaskCompleted('IDEN') == false) then
           return MissionText.ReadBlackBoardAction;
        end

     elseif (id == "UseAcidTrigger_1" or
             id == "UseAcidTrigger_1_a2") then

        if (Level.IsMissionTaskCompleted('DGUN') == false and
            Level.UsesAcid[1] == false and Actor.HasCustomEquipment(Level.GetPlayer(),'KISL') == true ) then
           return MissionText.UseAcidAction;
        end

     elseif (id == "UseAcidTrigger_2" or
             id == "UseAcidTrigger_2_a2") then

        if (Level.IsMissionTaskCompleted('DGUN') == false and
            Level.UsesAcid[2] == false and Actor.HasCustomEquipment(Level.GetPlayer(),'KISL') == true ) then
           return MissionText.UseAcidAction;
        end

     elseif (id == "OilStopTrigger") then

        if (Level.IsMissionTaskCompleted('RADA') == false and
            Level.OilStoped == false) then
           return MissionText.OilStopAction;
        end

     elseif (id == "BrakeRadarTrigger") then

        if (Level.IsMissionTaskCompleted('RADA') == false) then
           return MissionText.BrakeRadarAction;
        end

     elseif (id == "RadioSignalTrigger" or
             id == "ForestRadioTriggerAmbush") then

        if (Level.HasMissionTask('SIGN') == true and
            Level.IsMissionTaskCompleted('SIGN') == false and
            Level.CanCallSignal() == true) then

           return MissionText.RadioSignalAction;

        end

     elseif (id == "OrderMusicTrigger") then

        if (Level.CanOrderMusic_NoForm() and
            AI.GetPlayerForm() == "Officer") then

           return MissionText.OrderMusicAction;

        end
        
        if (AI.IsDefault(AI.FindNPC('G124')) == true and
            AI.GetPlayerForm() == "Officer" and
            Level.AlertCalled == true and 
            Level.IsAlertNow() == true and
            Level.AlertDisabled == false) then
            
            return MissionText.OrderDisableAlert;
            
        end        

     elseif (id == "ChangeMusicTrigger") then

        if (Level.HasMissionTask('SIGN') == true and
            Level.IsMissionTaskCompleted('SIGN') == false and
            Level.CanCallSignal() == true and
            Level.KilledSovietSoldier == false and
            Level.AlertCalled == false) then

           return MissionText.ChangeMusicAction;

        end
        
        if (Level.AlertCalled == true and 
            Level.IsAlertNow() == true and
            Level.AlertDisabled == false) then
            
            return MissionText.DisableAlertAction;
            
        end

     elseif (id == "PoissonTrigger" or
             id == "PoissonTrigger_a2") then

        if ( Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == false or
             Level.InstalledPoisson == true ) then
            return nil;
        end;

        return MissionText.PoissonAction;

     -- SG.01
     elseif (id == "OrderLoadersTrigger") then

        if (Level.CanRunOrderLoadersScript() == true) then

           return MissionText.OrderLoadersAction;

        end
     end

     return nil;
  end

--------------------------------------------------------
-- Name: Level.OnRadioSignalTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnRadioSignalTimer()
     Level.RemoveTimer('RSTM');
     Level.FinishTask('SIGN', true);
  end

--------------------------------------------------------
-- Name: Level.OnChangeMusicTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeMusicTimer()
     Level.RemoveTimer('CMTM');
     Level.FinishTask('SIGN', true);
  end
  
--------------------------------------------------------
-- Name: Level.DisableAlert()
-- Desc:
--------------------------------------------------------
  function Level.DisableAlert()
     AI.DisableAlert( true );
     Level.AlertDisabled = true;
     Level.EnableLevelMark('DISA', false);

     if (Level.AlertCalled == true) then     
        Level.EnableAlarmSound( false );     
        AI.OnPlayerLeaveZone("alert", 'ALZN');
     end
  end

--------------------------------------------------------
-- Name: Level.OnHittedTestPilot()
-- Desc:
--------------------------------------------------------
  function Level.OnHittedTestPilot()
              
     if (Level.HasMissionTask('NETP') != false and
         Level.IsMissionTaskCompleted('NETP') == false and
         Level.IsMissionTaskOver('NETP') == true) then

         Level.FinishTask('NETP', true);
     end
  end

--------------------------------------------------------
-- Name: Level.OnKilledTestPilot()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledTestPilot()
     if (Level.IsAllDied(Level.TestPilots) != false) then
        Level.FailedMission( MissionText.AllTestPilotsKilled );
        return;
     end

     if (Level.HasMissionTask('NETP') == true and
         Level.IsMissionTaskCompleted('NETP') == true and
         Level.IsMissionTaskOver('NETP') == false) then

        Level.ResumeMissionTask('NETP');
     end 
  end

--------------------------------------------------------
-- Name: Level.OnHittedMechanic()
-- Desc:
--------------------------------------------------------
  function Level.OnHittedMechanic()
     if (Level.HasMissionTask('NETM') != false and
         Level.IsMissionTaskCompleted('NETM') == false and
         Level.IsMissionTaskOver('NETM') == true) then

         Level.FinishTask('NETM', true);
     end
  end

--------------------------------------------------------
-- Name: Level.OnKilledMechanic()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledMechanic()
     if (Level.IsAllDied(Level.Mechanics) != false) then
        
        Level.AddSmallMessage( MissionText.Message_AllMechanicsDead, 10.0, 255, 255, 255 );
        Level.FinishTask('NETM', false);
        return;
     end

      if (Level.HasMissionTask('NETM') == true and
          Level.IsMissionTaskCompleted('NETM') == true and
          Level.IsMissionTaskOver('NETM') == false) then

           Level.ResumeMissionTask('NETM');
      end
  end

--------------------------------------------------------
-- Name: Level.OnAnchorStartMusic()
-- Desc:
--------------------------------------------------------
  function Level.OnAnchorStartMusic()
      if (Level.AlertCalled == false) then
         Level.ChangeBaseMusic();
         Level.AddTimer( 'CMTM', "OnChangeMusicTimer", 10.0, false );
      else
         Level.DisableAlert();
      end
  end

--------------------------------------------------------
-- Name: Level.OnAlert()
-- Desc:
--------------------------------------------------------
  function Level.OnAlert( alertGroupId )
    for i = 0, 10 do
       AI.SetLocalAlert(i, true, 10.0 * 60.0);
    end
    
    Level.AlarmMessage( MissionText.Message_Alarm );
    
    AI.AddAlertValue(1); 
    
    if (Level.PilotBodyDetected == true) then
       Level.FailedMission( MissionText.Fail_BodyAlarm );
       return;
    end
    
    -- Alarm sound
    Level.EnableAlarmSound( true );

    if (Level.AlertCalled == false) then
        AI.SetJob("alive", "alert");
        
        -- Enable global alert zone...
        AI.OnPlayerEnterZone("alert", 'ALZN');
        
        Level.AlertCalled = true;
        
        Level.BeginSoldiersAlert();        
        
        Level.EnableLevelMark('VDCL', false);
        Level.EnableLevelMark('NRGN', false);
        Level.EnableLevelMark('TRBL', false);
        Level.EnableLevelMark('SIGM', false);
        
        Level.EnableLevelMark('DISA', true);        
        
        Level.FinishTask('NETM', false);
     end
     
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "1", AI.ATTENTION_ALARM, true);
    
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "3", AI.ATTENTION_ALARM, true);
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "4", AI.ATTENTION_ALARM, true);
    
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "7", AI.ATTENTION_ALARM, true);
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "8", AI.ATTENTION_ALARM, true);
     AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "9", AI.ATTENTION_ALARM, true);
  end

  --------------------------------------------------------
  -- Name: Level.IsAlertNow()
  -- Desc:
  --------------------------------------------------------
  function Level.IsAlertNow()
     for i = 0, 10, 1 do
        if (AI.IsLocalAlert( i ) == true) then
           return true;
        end
     end
     
     return false;
  end

  --------------------------------------------------------
  -- Name: Level.OnFinishAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level.OnFinishAlert", tostring(alertGroupId));
     
     AI.SetLocalAlert( alertGroupId, false );
     
     for i = 0, 10, 1 do
        if (AI.IsLocalAlert( i ) == true) then
           return;
        end
     end
     
     for i = 0, 10 do
        AI.SetLocalAlert( i, false );
     end
     
     Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
     Level.EnableAlarmSound( false );     
     
     AI.OnPlayerLeaveZone("alert", 'ALZN');
  end
  
--------------------------------------------------------
-- Name: Level.OnEnterForestRadistTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterForestRadistTrigger()
     if (Level.HasMissionTask('SIGN') == true and
         Level.IsMissionTaskCompleted('SIGN') == false and
         Level.IsMissionTaskCompleted('NETP') == true and
         AI.IsDefault(AI.FindNPC('SS01')) == true) then

         Level.FinishTask('SIGN');         
         AI.SetJob(AI.FindNPC('SS01'), "radio");
     end
  end

--------------------------------------------------------
-- Name: Level.SwitchRain()
-- Desc:
--------------------------------------------------------
  function Level.SwitchRain( boolCamera )
      local rain = Level.FindEffect('RAIN');
      if (rain != nil) then
         Level.SetEffectParameter( rain, "UseCamera" , boolCamera );  
      end  
  end;
  
  
---------------------- OnStopMove notifications ------------------------------

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
     
     if (zone == "TankTrack") then

       Level.AddSmallMessage( MissionText.Message_StopMove_TankTrack, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_02");
       
     elseif (zone == "Barack") then
     
       Level.AddSmallMessage( MissionText.Message_StopMove_KitchenZone, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_18"); 

     elseif (zone == "GunPlace") then

       if (playerForm == "Driver" and
           Level.DriverGunScriptCompleted == false and
           Level.AlertCalled == false) then
           
           if (Level.PlayerTrack == "") then
               Level.VoiceMessage(npc, "%Script09_Sound", "WeAreOurBulletsMessage");
           else
               Level.VoiceMessage(npc, "%Script10_Sound", "TrackIsEmptyMessage");
           end
           
       else
           Level.AddSmallMessage(  MissionText.Message_StopMove_GunPlace, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "male_ger_script_script_15");
       end
       
     elseif (zone == "Sklad" or
             zone == "CookSklad") then

        Level.AddSmallMessage(  MissionText.Message_StopMove_Sklad, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");

     elseif (zone == "GunPlace2") then

       Level.AddSmallMessage( MissionText.Message_StopMove_GunPlace2, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_script_script_15");

     elseif (zone == "MainHouseFloor1") then

       Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseFloor1, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_13");

     elseif (zone == "MainHouseFloor2") then

       Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseFloor2, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_03");

     elseif (zone == "MainHouseFloor3") then

       Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseFloor3, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove");

     elseif (zone == "Angar") then
     
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_08");

     elseif (zone == "MainHouseHall" or
             zone == "PilotHouse") then

       Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseHall, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_04");
     
     elseif (zone == "MainHouseEnter") then

       if (playerForm == "ForestSoldier") then
          
          Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseEnter_ForestSoldier, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_08");

       elseif (playerForm == "Civilian" or
               playerForm == "Mechanic") then
               
          Level.AddSmallMessage( MissionText.Message_StopMove_MainHouseEnter_Civilian, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_06");
       end

     elseif (zone == "Radar") then

       if (playerForm == "ForestSoldier" or
           playerForm == "Soldier" or
           playerForm == "SS_Soldier") then
           
           Level.AddSmallMessage( MissionText.Message_StopMove_Radar_ForestSoldier, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "male_ger_stopmove_stopmove_08");
       end            

       if (playerForm == "Civilian") then
          Level.AddSmallMessage( MissionText.Message_StopMove_Radar_Civilian, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_06");
       end
       
       if (playerForm == "Driver") then
          Level.AddSmallMessage( MissionText.Message_StopMove_Radar_Driver, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_11");
       end
       
     elseif (zone == "Tower") then
     
       Level.AddSmallMessage( MissionText.Message_StopMove_Tower, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_17");

     elseif (zone == "AirTowerEnter") then

       if (Random() < 0.5) then
          Level.AddSmallMessage( MissionText.Message_StopMove_AirTowerEnter_2, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_19");
       else
          Level.AddSmallMessage( MissionText.Message_StopMove_AirTowerEnter_1, 5.0, 175, 175, 175 );
          AI.HandleVoice(npc, "male_ger_stopmove_stopmove_19");
       end

     elseif (zone == "AirTower" or
             zone == "AirTowerFloor2") then
             
       Level.AddSmallMessage( MissionText.Message_StopMove_AirTower, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_19");

     elseif (zone == "KitchenZone") then

       Level.AddSmallMessage( MissionText.Message_StopMove_KitchenZone, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_08");

     elseif (zone == "MusicComputer") then

       Level.AddSmallMessage( MissionText.Message_StopMove_MusicComputer, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_08");
       
     elseif (zone == "Building1Enter") then

       Level.AddSmallMessage( MissionText.Message_StopMove_Building1Enter, 5.0, 175, 175, 175 );
       AI.HandleVoice(npc, "male_ger_stopmove_stopmove_07");
       
     end

     --AI.HandleVoice( npc, AI.VOICE_STOP_MOVE );
  end 

--------------------- Music and other funny stuff ----------------------------

--------------------------------------------------------
-- Name: Level.ChangeBaseMusic()
-- Desc:
--------------------------------------------------------
  function Level.ChangeBaseMusic()
      Level.EnableSound( "rupor_fin1" , false );
      Level.EnableSound( "rupor_fin2" , true );
      
      for i = 1, 6 do
         Level.EnableSound( "rupor0" .. tostring(i), false );
         Level.EnableSound( "rupor_fin0" .. tostring(i + 2), true );
      end      
  end 

--------------------------------------------------------
-- Name: Level.EnableDocumentRoomLighting()
-- Desc:
--------------------------------------------------------
  function Level.EnableDocumentRoomLighting( onOff )
  
      Level.EnableLight( 'ARLT' , onOff );
      Level.EnableFlare( 'FL01' , onOff );
      Level.EnableFlare( 'FL02' , onOff );
      Level.EnableFlare( 'FL03' , onOff );
      
      local brushRoom = Level.FindWorldObject( 'BLTS' );
      if ( brushRoom != nil ) then      
      
         if ( onOff == true ) then
            Level.SetWorldObjectLightmap( brushRoom, 'ARLT' );         
         else
            Level.SetWorldObjectLightmap( brushRoom, 'AROF' );         
         end;
      
      end;
      
      Level.DocumentRoomLighting = onOff;
  
  end;
    
----------------------- Bot idles and ai scripts -----------------------------

--------------------------------------------------------
-- Name: Level.BotChangeMusic()
-- Desc:
--------------------------------------------------------
  function Level.BotChangeMusic()
      Level.RunAnchorJobIfDefault(AI.FindNPC('G124'), 'A213');
  end

--------------------------------------------------------
-- Name: Level.OnCarParkWorkersTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnCarParkWorkersTrigger()
      AI.SetJob(AI.FindNPC('GS07'), "CarParkForeman");
      AI.SetJob(AI.FindNPC('GS06'), "CarParkWorker");
      AI.SetJob(AI.FindNPC('GS05'), "CarParkWorker");
      AI.SetJob(AI.FindNPC('GS04'), "CarParkWorker");
  end

--------------------------------------------------------
-- Name: Level.StartForestPatrol()
-- Desc:
--------------------------------------------------------
  function Level.StartForestPatrol()
      local actors = { 'GS25', 'GS97', 'GS26', 'GS99',
                       'GS98', 'G100', 'G101' };
       
      for i in actors do
         AI.SetJob(AI.FindNPC(actors[i]), "GoToBasePatrol");
      end

      Level.AddTimer( 'FPTM', "OnFinishForestPatrol", 180.0, false );
  end

--------------------------------------------------------
-- Name: Level.OnFinishForestPatrol()
-- Desc:
--------------------------------------------------------
  function Level.OnFinishForestPatrol()
      Level.RemoveTimer( 'FPTM' );

      AI.SetJob(AI.FindNPC('GS25'), "lector");

      local actors = { 'GS97', 'GS26', 'GS99', 
                       'GS98', 'G100', 'G101' };
       
      for i in actors do
         AI.SetJob(AI.FindNPC(actors[i]), "listening");
      end
  end

--------------------------------------------------------
-- Name: Level.OnGoSmoking()
-- Desc:
--------------------------------------------------------
  function Level.OnGoSmoking()
     AI.Debug(nil, "Level.OnGoSmoking", "");
     
     if (Level.NearTankTrackTrigger == true) then
        return;
     end
     
     local bot1 = AI.FindNPC('GS43');
     local bot2 = AI.FindNPC('GS44');
     if (AI.IsDefault(bot1) and
         AI.IsDefault(bot2)) then

        Level.RunAnchorJob(bot1, 'AN21');
        Level.RunAnchorJob(bot2, 'AN22');

     end
  end

--------------------------------------------------------
-- Name: Level.OnDocumentRoomTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnDocumentRoomTrigger()
     AI.Debug(nil, "Level.OnDocumentRoomTrigger", "");
     
     local bot = AI.FindNPC('GS62');
     if (AI.IsDefault(bot)) then
        AI.SetJob(bot, "GoToRoom");
     end
  end

--------------------------------------------------------
-- Name: Level.LectionClapping()
-- Desc:
--------------------------------------------------------
  function Level.LectionClapping()
     local actors = { 'GO06', 'GO09', 'GO07', 'GO08', 'GO10' };
     local anchors = { 'AN54', 'AN58', 'AN55', 'AN56', 'AN57' };

     for i in actors do
        local actor = AI.FindNPC(actors[i]);
        if (AI.IsDefault(actor)) then
           Level.RunAnchorJob(actor, anchors[i]);
        end 
     end
  end

--------------------------------------------------------
-- Name: Level.GoForClothes()
-- Desc:
--------------------------------------------------------
  function Level.GoForClothes()
     if (Level.AlertCalled == true) then
        return;
     end
     
     local bot = AI.FindNPC('GS67');
     if (AI.IsDefault(bot)) then
        AI.SetJob(bot, "GetCloths");
     end
  end

--------------------------------------------------------
-- Name: Level.InstallDinnerTimer()
-- Desc:
--------------------------------------------------------
  function Level.InstallDinnerTimer()
    Level.BeginDinner(0);
  end

--------------------------------------------------------
-- Name: Level.BeginSoldiersAlert()
-- Desc:
--------------------------------------------------------
  function Level.BeginSoldiersAlert()
       if (AI.IsDefault(AI.FindNPC('GO15'))) then
          Level.RunAnchorJob(AI.FindNPC('GO15'), 'A301');

          Level.RunAnchorJob(AI.FindNPC('G149'), 'A128');
          Level.RunAnchorJob(AI.FindNPC('GS88'), 'AN27');
          Level.RunAnchorJob(AI.FindNPC('GS87'), 'A124');
          Level.RunAnchorJob(AI.FindNPC('GS86'), 'A125');

          Level.RunAnchorJob(AI.FindNPC('GS84'), 'AN30');
          Level.RunAnchorJob(AI.FindNPC('G146'), 'AN31');
          Level.RunAnchorJob(AI.FindNPC('G147'), 'A133');
          Level.RunAnchorJob(AI.FindNPC('G148'), 'A134');
          return;
       end
  end

--------------------------------------------------------
-- Name: Level.BeginDinner()
-- Desc:
--------------------------------------------------------
  function Level.BeginDinner(phase)
    if (Level.AlertCalled == true) then
       return;
    end
    
    if (phase == 0) then 
       if (AI.IsDefault(AI.FindNPC('GO15'))) then
          Level.RunAnchorJob2(AI.FindNPC('GO15'), 'A122', 'A136');

          Level.RunAnchorJob(AI.FindNPC('G149'), 'A128');
          Level.RunAnchorJob(AI.FindNPC('GS88'), 'AN27');
          Level.RunAnchorJob(AI.FindNPC('GS87'), 'A124');
          Level.RunAnchorJob(AI.FindNPC('GS86'), 'A125');

          Level.RunAnchorJob(AI.FindNPC('GS84'), 'AN30');
          Level.RunAnchorJob(AI.FindNPC('G146'), 'AN31');
          Level.RunAnchorJob(AI.FindNPC('G147'), 'A133');
          Level.RunAnchorJob(AI.FindNPC('G148'), 'A134');
          return;

       end
    elseif (phase == 1) then
          Level.RunAnchorJob(AI.FindNPC('G147'), 'A135');

          Level.RunAnchorJob(AI.FindNPC('GO15'), 'A145');

          Level.AddTimer( 'DNTM', "OnDinnerTimer", 4.0, false );
          Level.AddTimer( 'RDTM', "OnRemoveIdbTimer", 250.0, false );

          AI.EnableZone("Barack2", true);

          return;
    end
  end

--------------------------------------------------------
-- Name: Level.OnRemoveIdbTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnRemoveIdbTimer()
     Level.RemoveTimer( 'RDTM' );

     AI.EnableZone("Barack2", false);

     local actors  = { 'G149', 'GS88', 'GS87', 'GS86', 'GS84', 'G146', 'G148' };

     for i in actors do
        local actor = AI.FindNPC(actors[i]);
        if (actor != nil) then
           NPC.SetFlag(actor, NPC.F_IGNORE_DYNAMIC_BLOCKS, false);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnDinnerTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnDinnerTimer()
     Level.RemoveTimer( 'DNTM' );

     local actors  = { 'G149', 'GS88', 'GS87', 'GS86', 'GS84', 'G146', 'G148' };
     local anchors = { 'A142', 'A137', 'AN41', 'A140', 'A138', 'B137', 'A139' };

     for i in actors do
        local actor = AI.FindNPC(actors[i]);

        if (actor != nil) then
           NPC.SetFlag(actor, NPC.F_IGNORE_DYNAMIC_BLOCKS, true);
           Level.RunAnchorJob(actor, anchors[i]);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnStorageManAsk()
-- Desc:
--------------------------------------------------------
  function Level.OnStorageManAsk()
       if (AI.IsDefault(AI.FindNPC('GS73'))) then
          Level.RunAnchorJob2(AI.FindNPC('GS73'), 'A148', 'A149');
       end
  end

--------------------------------------------------------
-- Name: Level.OnGetPoisson()
-- Desc:
--------------------------------------------------------
  function Level.OnGetPoisson()
       if (Level.InstalledPoisson != false) then
           Level.GotPoisson = true;
       end
  end

--------------------------------------------------------
-- Name: Level.OnCheckPoisson()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckPoisson()
       if (Level.GotPoisson != false) then
          Level.RunPoissonScript();
       else
          local diff = Level.GetDifficulty();
          
          if (Level.CanSoldierUrinate == true) then
             
             local soldier = AI.FindNPC('GSC2');
             
             if (AI.IsDefault(soldier) == true) then
                Level.RunAnchorJob(soldier, 'A294');
             end
             
             Level.CanSoldierUrinate = false;
             
             if (diff == 1) then
                 Level.InstallDpc("Level.CanSoldierUrinate = true", 120.0);
             elseif (diff == 0) then
                 Level.InstallDpc("Level.CanSoldierUrinate = true", 60.0);
             elseif (diff == 2) then
                 Level.InstallDpc("Level.CanSoldierUrinate = true", 240.0);
             else
                 Level.InstallDpc("Level.CanSoldierUrinate = true", 160.0);
             end
          end
       end
  end

--------------------------------------------------------
-- Name: Level.RunPoissonScript()
-- Desc:
--------------------------------------------------------
  function Level.RunPoissonScript()
     local actors  = { 'GSC1', 'GSC2', 'GSC3' };
     local anchor1 = { 'A161', 'A162', 'A163' };
     local anchor2 = { 'A164', 'A165', 'A166' };

     for i in actors do

        local actor = AI.FindNPC(actors[i]);
     
        if (AI.IsDefault(actor)) then

           local properties = Level.CreateCustomParams();
   
           Level.SetValue(properties, "CustomString_1", anchor1[i] );
           Level.SetValue(properties, "CustomString_2", anchor2[i] );
           Level.SetValue(properties, "CanBeDisabled", false );
                                   
           NPC.SetFlag(actor, NPC.F_IGNORE_DYNAMIC_BLOCKS, true);

           AI.RunScriptTask(actor, "scripts:job\\AnchorJob2_safe_run.lua", AI.LOGIC_DEFAULT, properties);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.RunRadarScript()
-- Desc:
--------------------------------------------------------
  function Level.RunRadarScript()
     local actor = AI.FindNPC('S163');
     if (AI.IsDefault(actor) != false) then
        local properties = Level.CreateCustomParams();
   
        Level.SetValue(properties, "CustomString_1", 'A173' );
        Level.SetValue(properties, "CustomString_2", 'A172' );
        Level.SetValue(properties, "CanBeDisabled", false );
                                   
        AI.RunScriptTask(actor, "scripts:job\\AnchorJob2_safe_run.lua", AI.LOGIC_DEFAULT, properties);
     end
  end

--------------------------------------------------------
-- Name: Level.IsWaitingForBenzovoz()
-- Desc:
--------------------------------------------------------
  function Level.IsWaitingForBenzovoz()
     if (Level.TankTrackScriptEnabled == false) then
        return false;
     end
       
     if (AI.IsDefault(AI.FindNPC('GTP2')) == false) then
        return false;
     end

     return Level.IsNear('GTP2', 354.0, -346.0, 200.0);
  end

--------------------------------------------------------
-- Name: Level.OnEnterKubel()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterKubel()
     AI.EnableZone("KubelEnterZone", true);
  end

--------------------------------------------------------
-- Name: Level.OnLeaveKubel()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveKubel()
     AI.EnableZone("KubelEnterZone", false);
  end

--------------------------------------------------------
-- Name: Level.OnEnterTankTrack()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTankTrack()
     Level.PlayerAtTankTrack = true;
     Level.TankTrackNearPlane = false;

     AI.EnableZone("TankTrack", true);
     AI.EnableZone("TankTrackOut", true);
  end

--------------------------------------------------------
-- Name: Level.OnLeaveTankTrack()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTankTrack()
     Level.PlayerAtTankTrack = false;
     
     if (Level.AtBenzovozTrigger == true) then
        Level.TankTrackNearPlane = true;
     end

     AI.EnableZone("TankTrack", false);
     AI.EnableZone("TankTrackOut", false);
  end

--------------------------------------------------------
-- Name: Level.InstallTestPilotJob()
-- Desc:
--------------------------------------------------------
  function Level.InstallTestPilotJob()
     AI.Debug(npc, "Script", "Level.InstallTestPilotJob()");

     local testPilot = AI.FindNPC('GTP2');

     if (testPilot != nil) then

        Level.TankTrackScriptEnabled = true;
        AI.SetJob(testPilot, "WaitingForBenzonoz");

     else
        print("Can't install testPilot new job");
     end
  end

--------------------------------------------------------
-- Name: Level.ChangePilotJob()
-- Desc:
--------------------------------------------------------
  function Level.ChangePilotJob()
     AI.Debug(npc, "Script", "Level.ChangePilotJob()");

     if (AI.IsDefault(AI.FindNPC('GP14')) != false) then
        AI.SetJob(AI.FindNPC('GP14'), "LookMapIdle");
     end
  end

--------------------------------------------------------
-- Name: Level.OnRepairOilGenerator()
-- Desc:
--------------------------------------------------------
  function Level.OnRepairOilGenerator()
     Level.EnableSound("dis_generator05", true);
     Level.EnableSound("dis_generator_off", false);
     Level.OilStoped = false;
  end

--------------------------------------------------------
-- Name: Level.OnCheckMineField()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckMineField()
     if (Level.DisableMineField == true) then
        return;
     end

     local player = Level.GetPlayer();
     local n = Actor.GetNode(player)
     local x, y, z = node.GetPosition(n);

     local f = AI.CalculateFunction("minefield", x, y, z);
     
     if (f > 0.0) then
        
        if (Actor.IsDead(Level.GetPlayer()) == false) then
           Level.CreateExplosion(x, y, z);
           --Level.KillPlayer();
        end

     end
  end

--------------------------------------------------------
-- Name: Level.ChangeMechanicJob()
-- Desc:
--------------------------------------------------------
  function Level.ChangeMechanicJob()
     AI.Debug(npc, "Script", "Level.ChangeMechanicJob");
     AI.SetJob(AI.FindNPC('GM12'), "LookPlane");
  end

--------------------------------------------------------
-- Name: Level.Hack()
-- Desc:
--------------------------------------------------------
  function Level.Hack()
     Level.FinishTask('IDEN');
--     Level.FinishTask('NETM');
     Level.FinishTask('RADA');
     Level.FinishTask('DGUN');
     Level.FinishTask('NETP');
  end

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyPickupItem( itemId, item )

    if ( itemId == 'CCOK' ) then
           
       Level.OnChangeCookCloth();
       Level.EnableNotifyPickup( item, false );
            
    elseif ( itemId == 'POIS' ) then
       Level.EnableNotifyPickup( item, false );
       Level.EnableLevelMark( 'POIS' , false );

       AI.StartDecamouflage( 30.0, 60.0, 1.0 );

    elseif ( itemId == 'TREL' ) then  -- tablica 'Boevie'

       local px,py,pz = node.GetPosition( Entity.GetNode(item) );

       local tab  = Level.CreateWorldItem("Custom:Table", "Equipment",
                                          px, py, pz,
                                          0.0, -180.0, 0.0, 
                                          'THOS');
       if ( tab != nil ) then
          Entity.SetName( tab, MissionText.Table_2_Name );
          Entity.SetSkin( tab, 1 );
          Level.SetCustomItemName( tab, MissionText.Table_2_TipName );
          Level.EnableItemPickup( tab, false );
          Level.TablePodmena = true; 
       else
          print('WARNING: Script error, failed to create table THOS');
       end;
       
    elseif ( itemId == 'FVDL' ) then
    
       Level.CheckStartVodilaCloth();       
       Level.EnableNotifyPickup( item, false );
    
    end;
    
end;

--------------------------------------------------------
-- Name: Level.OnFinishCutScene()
-- Desc:
--------------------------------------------------------
  function Level.OnFinishCutScene( cutscene, boolBreaked, cutsceneName )
  
      CutScene.Activate(nil);
      Level.SwitchRain(false);
  
  end;

--------------------------------------------------------
-- Name: Level.OnBeginRadioCutScene()
-- Desc:
--------------------------------------------------------
  function Level.OnBeginRadioCutScene()
        
     if ( Level.RadioCutScene == true ) then
        return;
     end;     
       
     local ns = Level.FindCutScene('radio');
     if ( ns == nil ) then
        Level.AddCinematicCamera('Levels\\AirBase\\radio.scm', 3, 14.0, 15.0, 30.0, 128 );
          
        ns = Level.NewCutScene('radio', 0.0, 30.0 * 8.0 );
          
        CutScene.SetCamera( ns, 'Levels\\AirBase\\radio.scm');
        CutScene.SetBlurEffect( ns, 0.0 );
        CutScene.AddSubTitle( ns, MissionText.GunGuardsHasNoAmmoMessage, 0.0, 150.0 );
     end;
        
     CutScene.Play( ns, 30.0 );
     CutScene.Activate( ns , true );
   
     Level.PlayCustomSound( "Script08_Sound" );
     Level.RadioCutScene = true;
     
  end;

--------------------------------------------------------
-- Name: Level.CheckStartVodilaCloth()
-- Desc:
--------------------------------------------------------
  function Level.CheckStartVodilaCloth()
    Level.EnableLevelMark('VDCL', false );
    
    if (Level.GetDifficulty() == 3) then
       return;
    end
            
    if ( Level.AlertCalled == true or Level.RadioCutScene == true ) then
       return;
    end

    if (Level.IsMissionTaskCompleted('DGUN') == false and
        Level.UsesAcid[2] == false and
        Level.BadBulletsInstalled == false) then

        -- install show radio camera..
        local playerRoomId = AI.GetPlayerRoom();
        if ( playerRoomId == Level.GetRoom('VA33') ) then
           Level.AddTimer( 'FVDL', "OnBeginRadioCutScene", 2.0, false );
        end
    end
          
  end;
  
--------------------------------------------------------
-- Name: Level.OnChangeVodilaCloth()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeVodilaCloth()
    
    local player = Level.GetPlayer();
    if ( player != nil ) then
      Actor.EnableMesh( player, "sabg_equipment_up"   , false );
      Actor.EnableMesh( player, "sabg_equipment_down" , false );
      Actor.EnableMesh( player, "mesh_helmet"         , false );
      Actor.SetSkin( player, 3 );
    end;
    
    Level.RemoveActionHandler( Level.AH_FINISH_CHANGECLOTH, 'FVDL' );
    Level.CheckStartVodilaCloth();

  end;

--------------------------------------------------------
-- Name: Level.OnChangeCookCloth()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeCookCloth()
    Level.EnableLevelMark( 'COOK' , false );
    Level.RemoveActionHandler( Level.AH_FINISH_CHANGECLOTH, 'CCOK' );
  end;

--------------------------------------------------------
-- Name: Level.OnChangeSSFormCloth()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeSSFormCloth()

    local player = Level.GetPlayer();
    if ( player != nil ) then
      Actor.EnableMesh( player, "sabg_equipment_up"   , false );
      Actor.EnableMesh( player, "sabg_equipment_down" , false );
      Actor.EnableMesh( player, "mesh_helmet"         , false );
      Actor.SetSkin( player, 1 );
    end;

    Level.RemoveActionHandler( Level.AH_FINISH_CHANGECLOTH, 'SSFM' );

  end;

--------------------------------------------------------
-- Name: Level.OnHitSurfaceBullet()
-- Desc:
--------------------------------------------------------
  function Level.OnHitSurfaceBullet( object, uniqueId, surface, px, py, pz )

    if ( uniqueId == 'RPLT' ) then

      local bbox = { -880.317, 73.758, 537.420, 
                     -875.317, 83.758, 557.42 };

      if ( bbox[1] <= px and bbox[4] >= px and
           bbox[2] <= py and bbox[5] >= py and
           bbox[3] <= pz and bbox[6] >= pz ) then

         Level.RadarPultLive = Level.RadarPultLive - 1;

         if ( Level.RadarPultLive <= 0 ) then

            Level.OnBreakRadar();
            
            Level.FinishTask('RADA', true);

         end;
      end;
    end;
  end;

--------------------------------------------------------
-- Name: Level.OnExplodeExplosives()
-- Desc:
--------------------------------------------------------
  function Level.OnExplodeExplosives( item, radius, damage, byPlayer )

      if ( Level.IsMissionTaskCompleted('RADA') == false ) then

        local radarBBox = { -939.41,70.0,530.50,-874.41,98.68,565.50 };

        local n = Entity.GetNode( item );
        if ( n == nil ) then
           return;
        end;

        x,y,z = node.GetPosition(n);

        if ( radarBBox[1] <= x and radarBBox[4] >= x and
             radarBBox[2] <= y and radarBBox[5] >= y and
             radarBBox[3] <= z and radarBBox[6] >= z ) then

         Level.RadarPultLive = 0;
         
         Level.OnBreakRadar();
         Level.FinishTask('RADA', true);

        end;

      end;

  end;

  -- SG.01
--------------------------------------------------------
-- Name: Level.NeedsDisableGunZone()
-- Desc:
--------------------------------------------------------
  function Level.NeedsDisableGunZone()
     return Level.PlayerTrack == Level.TrackLoaded and
            Level.PlayerTrack != "" and
            AI.GetPlayerForm() == "Driver";
  end

--------------------------------------------------------
-- Name: Level.CanRunGuardiansNewJob()
-- Desc:
--------------------------------------------------------
  function Level.CanRunGuardiansNewJob()
     return Level.TrackNearGun == Level.TrackLoaded and
            Level.TrackNearGun != "" and
            Level.AlertCalled == false;
  end

--------------------------------------------------------
-- Name: Level.OnEnterBlitz()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterBlitz()
     for i in Level.Vehicles do
        if (Level.IsPlayerInVehicle(Level.Vehicles[i])) then
          Level.PlayerTrack = Level.Vehicles[i];
        end
     end
           
     if (Level.BulletsInfoScriptCompleted == false and
         Level.IsMissionTaskCompleted('DGUN') == false and
         Level.UsesAcid[2] == false and
         Level.AlertCalled == false) then

         Level.EnableLevelMark('TRBL', true);
     end
     
     if (Level.LoadersScriptRunning == true) then
        Level.LoadingFailed = true;
     end
                      
     if (Level.NeedsDisableGunZone()) then
         AI.EnableZone("GunPlace", false);
     end
  end

--------------------------------------------------------
-- Name: Level.CanStartBlitzInfoMessage()
-- Desc:
--------------------------------------------------------
  function Level.CanStartBlitzInfoMessage()
     return (Level.TrackInZone != "" and
             AI.GetPlayerForm() == "Driver" and
             Level.BulletsInfoScriptCompleted == false and
             Level.AlertCalled == false);
  end

--------------------------------------------------------
-- Name: Level.RunGuardiansScript()
-- Desc:
--------------------------------------------------------
  function Level.RunGuardiansScript()
     local actors = { 'GS59', 'GS56', 'GS57' };
     for i in actors do
        AI.SetJob(AI.FindNPC(actors[i]), "NewJob");
     end

     Level.RunAnchorJobIfDefault(AI.FindNPC('GS59'), 'A245');
  end

--------------------------------------------------------
-- Name: Level.OnGoWithMeCutScene()
-- Desc:
--------------------------------------------------------
  function Level.OnGoWithMeCutScene()
  
      local ns = Level.FindCutScene('gowt');
      if ( ns == nil ) then
      
          Level.AddCinematicCamera('Levels\\AirBase\\gowithme.scm', 1, 0.0, 60.0, 70.0, 255 );
          
          ns = Level.NewCutScene( 'gowt' , 0.0, 2.5 * 30.0 );
          
          CutScene.SetCamera( ns, 'Levels\\AirBase\\gowithme.scm' );
          CutScene.SetBlurEffect( ns, 0.0 );
          
          CutScene.AddSubTitle( ns, MissionText.LetsGoWithMeMessage, 0.0, 150.0 );
               
          CutScene.Play( ns, 30.0 );
          CutScene.Activate( ns , true );
          
          Level.SwitchRain(true);
          
          Level.PlayCustomSound( "Script05_Sound" );
      end;
  end;

--------------------------------------------------------
-- Name: Level.OnLeaveBlitz()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveBlitz()
  
     local wasPlayerTrack = Level.PlayerTrack;
     Level.PlayerTrack = "";

     if (Level.CanStartBlitzInfoMessage()  ) then
        Level.InstallDpc("Level.RunAnchorJob2IfDefault(AI.FindNPC('G167'), 'A252', 'A253', true)", 1.0);
     end

     if (Level.LoadersScriptRunning == true and
         Level.TrackInZone != "" and
         Level.LoadingFailed == true) then

        Level.LoadingFailed = false;
     end
     
     if (Level.CanRunGuardiansNewJob() and wasPlayerTrack == Level.TrackNearGun) then

        Level.RunGuardiansScript();
        Level.EnableVehicleUse( Level.TrackNearGun, false );
        Level.AddTimer( 'RZTM', "OnResumeZoneTimer", 25.0, false );

        if (Level.BadBulletsLoaded == true) then
            Level.BadBulletsInstalled = true;
            
            if (Level.UsesAcid[2] == false) then
               Level.AddLargeMessage( MissionText.GunNeutralizedMessage, 10.0, 255, 255, 255 );
                        
               Level.EnableLevelMark('ZEN2', false);

               local dynamiteMark = Level.FindWeaponItem( 'DYN2' );
               if ( dynamiteMark != nil ) then
                    Level.DeleteItem( dynamiteMark ); 
               end;                
            end            
        end

        Level.EnableLevelMark('TRBL', false);
        Level.EnableLevelMark('NRGN', false);

        Level.DriverGunScriptCompleted = true;

        if (Level.IsMissionTaskOver('DGUN') == true) then
            Level.FinishTask('DGUN', true);
        end

     else
        AI.EnableZone("GunPlace", true);
     end
  end

--------------------------------------------------------
-- Name: Level.OnResumeZoneTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnResumeZoneTimer()
     AI.EnableZone("GunPlace", true);
  end

--------------------------------------------------------
-- Name: Level.OnEnterBulletsAngarPlaceTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterBulletsAngarPlaceTrigger()
     if (Level.PlayerTrack != "") then
        Level.TrackInZone = Level.PlayerTrack;
     end
  end

--------------------------------------------------------
-- Name: Level.OnLeaveBulletsAngarPlaceTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveBulletsAngarPlaceTrigger()
     if (Level.PlayerTrack != "") then
        Level.TrackInZone = "";
     end
  end

--------------------------------------------------------
-- Name: Level.OnBulletsAngarGuardianSpeech()
-- Desc:
--------------------------------------------------------
  function Level.OnBulletsAngarGuardianSpeech()
     Level.BulletsInfoScriptCompleted = true;
     Level.CanOrderLoaders = true;

     Level.VoiceMessage(AI.FindNPC('G167'), nil, "GunSoldierNeedsBulletsMessage");
  end

  -- TODO... Remove command when enter blitz...

--------------------------------------------------------
-- Name: Level.CanRunOrderLoadersScript()
-- Desc:
--------------------------------------------------------
  function Level.CanRunOrderLoadersScript()
     local actors = { 'G194', 'G196', 'G197', 'G198', 'G199' };
     
     local bIsDef = false;
     for i in actors do
        if (AI.IsImportantTask(AI.FindNPC(actors[i])) == false) then
           bIsDef = true;
           break;
        end
     end

     return bIsDef == true and
            Level.PlayerTrack == "" and
            Level.TrackLoaded == "" and
            Level.TrackInZone != "" and
            Level.CanOrderLoaders == true and
            Level.AlertCalled == false and
            (AI.GetPlayerForm() == "Driver" or AI.GetPlayerForm() == nil);
  end

--------------------------------------------------------
-- Name: Level.RunLoadersScript()
-- Desc:
--------------------------------------------------------
  function Level.RunLoadersScript( target )
     local actors  = { 'G194', 'G196', 'G197', 'G198', 'G199' };
     local anchors = nil;

     if (target == 1) then
        anchors = { 'A254', 'A259', 'A256', 'A257', 'A258' };
     else
        anchors = { 'A266', 'A265', 'A269', 'A267', 'A268' };
     end

     for i in actors do
        local actor = AI.FindNPC(actors[i]);
     
        if (AI.IsImportantTask(actor) == false) then

           local properties = Level.CreateCustomParams();

           Level.SetValue(properties, "CustomString_1", anchors[i] );
           Level.SetValue(properties, "CanBeDisabled", false );

           NPC.SetFlag(actor, NPC.F_IGNORE_DYNAMIC_BLOCKS, true);

           AI.RunScriptTask(actor, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_DEFAULT, properties);
        end
     end
     
     Level.LoadersScriptRunning = true;
     
     Level.InstallDpc("Level.OnLoadersVoice()", 0.5);
     
     -- lock vehicle
     --if (Level.TrackInZone != "") then
     --    Level.EnableVehicleUse(Level.TrackInZone, false);
     --end
  end

--------------------------------------------------------
-- Name: Level.OnTeleportTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnLoadersVoice()
     local actors  = { 'G194', 'G196', 'G197', 'G198', 'G199' };
     for i in actors do
        AI.HandleVoice(AI.FindNPC(actors[i]), "@v_military_yes");
     end
  end

--------------------------------------------------------
-- Name: Level.OnTeleportTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnTeleportTimer()
     local actors  = { 'G194', 'G196', 'G197', 'G198', 'G199' };
     local pos     = { { x = 554.62, y = 0.45, z = 1073.95 },
                       { x = 566.23, y = 0.45, z = 1059.72 },
                       { x = 585.30, y = 0.45, z = 1066.96 },
                       { x = 582.85, y = 0.45, z = 1086.75 },
                       { x = 564.76, y = 0.45, z = 1091.60 } };

     for i in actors do
        local npc = AI.FindNPC(actors[i]);
        if (npc != nil) then
           local n = Entity.GetNode( AI.GetActor(npc) );

           node.SetPosition( n, pos[i].x, pos[i].y, pos[i].z );
           node.InvalidateTransforms( n , true );
           
           AI.FailTask( npc, AI.TASK_SCRIPT_DEFAULT );
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnLoadersTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnLoadersTimer()
     if (Level.TrackInZone == "") then
        return;
     end
     
     --if (Level.TrackInZone != "") then
     --   Level.EnableVehicleUse(Level.TrackInZone, true);
     --end
     
     Level.CanOrderLoaders  = false;
     
     Level.LoadersScriptRunning = false;
     
     if ((AI.IsSilence() == false) or (Level.LoadingFailed == true)) then
        Level.EnableLevelMark('TRBL', false);
        Level.EnableLevelMark('VDCL', false);
        Level.EnableLevelMark('NRGN', false);
     
        return;
     end
     

     Level.AddTimer( 'TPTM', "OnTeleportTimer", 1.0, false );

     Level.RemoveTimer('LDTM');

     Level.EnableLevelMark('TRBL', false);
     Level.EnableLevelMark('VDCL', false);
     
     if (Level.AlertCalled == false) then
        Level.EnableLevelMark('NRGN', true);
     end

     Level.SetHudFadeOut(1);
     Level.DisableHudFadeIn = false;
     Level.LockPlayer(true);
     Level.AddTimer( 'RZTM', "OnHudFadeIn", 2.5, false );
     
     Level.LoadersScriptRunning = false;
     
     if (Level.IsNpcAtVehicle(Level.TrackInZone) == false) then
        Level.TrackLoaded      = Level.TrackInZone;
        Level.BadBulletsLoaded = Level.IsTableChanged();

        Level.AddTimer( 'DATM', "OnChangeVisualStateTimer", 1.0, false );
     else
        Level.AddTimer( 'DATM', "OnDirtyAlarmTimer", 1.0, false );
     end
  end

--------------------------------------------------------
-- Name: Level.OnChangeVisualStateTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnChangeVisualStateTimer()
     if (Level.TrackInZone == "") then
        return;
     end
     
     local vehicle = Level.FindVehicle(Level.TrackInZone);
     if (vehicle != nil) then
        Entity.EnableMesh(vehicle, "nakidka", true);
        Level.EnableVehicleHideBodys(vehicle, false);
     end
     
     -- Move objects
     local bulletsBad  = { 'HS01', 'HS02', 'HS03', 'HS04', 'HS05', 
                           'HS06', 'HS07', 'HS08', 'HS09',  
                           'HS10', 'HS11', 'HS12', 'HS13', 'HS14', 
                           'HS15', 'HS16', 'HS17', 'HS18', 'HS19' };
                           
     local bulletsGood = { 'BF01', 'BF02', 'BF03', 'BF04', 'BF05', 
                           'BF06', 'BF07', 'BF08', 'BF09',  
                           'BF10', 'BF11', 'BF12', 'BF13', 'BF14', 
                           'BF15', 'BF16', 'BF17', 'BF18', 'BF19' };
     
     local bullets = bulletsGood;
     if (Level.BadBulletsLoaded == true) then
        bullets = bulletsBad;
     end
     
     for i in bullets do
        local obj = Level.FindWorldObject(bullets[i]);
        if (obj != nil) then
           local x, y, z;
           x, y, z = Level.GetWorldObjectPos(obj);
           Level.SetWorldObjectPos(obj, x, y - 1000.0, z);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnDirtyAlarmTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnDirtyAlarmTimer()
     local actors  = { 'G194', 'G196', 'G197', 'G198', 'G199', 'G167' };
     for i in actors do
        local npc = AI.FindNPC(actors[i]);
        if (npc != nil) then
           AI.SetupAlert( npc );
              
           AI.SetAttention(AI.AI_TARGET_ALERT_GROUP, "9", AI.ATTENTION_ALARM, true);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnHudFadeIn()
-- Desc:
--------------------------------------------------------
  function Level.OnHudFadeIn()
     Level.LockPlayer(false);
     
     if (Level.DisableHudFadeIn != true) then
         Level.SetHudFadeIn(1);
     end
     
     Level.RunAnchorJobIfDefault(AI.FindNPC('G167'), 'A292');
  end

--------------------------------------------------------
-- Name: Level.IsTableChanged()
-- Desc:
--------------------------------------------------------
  function Level.IsTableChanged()
     return Level.TablePodmena == true;
  end

--------------------------------------------------------
-- Name: Level.OnEnterNearGunTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterNearGunTrigger()
     if (Level.PlayerTrack != "") then
        Level.TrackNearGun = Level.PlayerTrack;
     end
  end

--------------------------------------------------------
-- Name: Level.OnLeaveNearGunTrigger()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveNearGunTrigger()
     if (Level.PlayerTrack != "") then
        Level.TrackNearGun = "";
     end
  end

--------------------------------------------------------
-- Name: Level.IsNpcAtVehicle()
-- Desc:
--------------------------------------------------------
  function Level.IsNpcAtVehicle(vehicleUID)
     local vehicle = Level.FindVehicle(vehicleUID);
     if (vehicle == nil) then
        return false;
     end
     
     return Level.HasHiddenBodysInVehicle(vehicle);
  end
  
  --------------------------------------------------------
  -- Name: Level.OnStartPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStartPlayerCustomAnim( animId )
  
     if ( animId == 'BRAD' ) then
          Level.PlayCustomAnimSound( 'CrashRadar' );
     elseif ( animId == 'OILS' ) then
          Level.PlayCustomAnimSound( 'OilStop' );
     elseif ( animId == 'GDOC' ) then
          Level.PlayCustomAnimSound( 'GetDocsSound' );
     elseif ( animId == 'RADS' ) then
          Level.PlayCustomAnimSound( 'radio_exit' );  
     elseif ( animId == 'CMSA') then
          --Level.PlayCustomAnimSound( 'CrashRadar01' );
     end;
       
  end;
  
  --------------------------------------------------------
  -- Name: Level.OnFinishPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishPlayerCustomAnim(animName, animUniqueId, boolBreaked )
  
     if ( boolBreaked == true ) then
     
        if ( Level.FinishAnimTrigger != "" and Level.FinishAnimTrigger != nil ) then
                
         local playerNode = Entity.GetNode( Level.GetPlayer() );
         
         local s = Level.FinishAnimTrigger .. ':OnEnterArea( playerNode );';
         local f = loadstring( s );
                  
         Level.FinishAnimTrigger    = "";
         
         if ( f != nil ) then
            f();         
         end;                  
        
        end;
        
        AI.StopDecamouflage();
        
        Level.FinishAnimTrigger    = "";
        Level.FinishAnimUnregister = false;        
        
        Level.StopAllCustomAnimSounds();
        
        return;
                        
     end;
     
     if ( Level.FinishAnimTrigger != "" and Level.FinishAnimUnregister == true ) then
     
         local t = Level.FindTrigger( Level.FinishAnimTrigger );
         if ( t != nil ) then
            Level.UnregisterTrigger( t );         
         end;
             
     end;
     
     Level.FinishAnimTrigger    = "";
     Level.FinishAnimUnregister = false;
     
     if (animUniqueId == 'CMSA') then
     
        if (Level.AlertCalled == false) then
           AI.StartDecamouflage( 30.0, 100.0, 5.0 ); 

           Level.EnableLevelMark('SIGR' , false );
           Level.EnableLevelMark('SIGM' , false );
           Level.EnableLevelMark('SIGF' , false );

           Level.ChangeBaseMusic();

           -- Level.AddTimer( 'CMTM', "OnChangeMusicTimer", 10.0, false );
           Level.AddTimer( 'CMTM', "OnChangeMusicTimer", 1.0, false );
        else
           Level.DisableAlert();
        end
        
     elseif (animName == "Custom_CloseFuelCrane_Crouch") then  

        Level.EnableSound("dis_generator05", false);
        Level.EnableSound("dis_generator_off", true);
        Level.AddTimer( 'DOTM', "OnDisGeneratorOffDisable", 5.0, false );
        Level.EnableLevelMark('RAHL', false);
        Level.OilStoped = true;

     elseif (animName == "Custom_SearchBookshelf") then

        Level.FinishTask('IDEN', true);
        
     elseif (animName == "Custom_Radio") then
     
        Level.AddTimer( 'RSTM', "OnRadioSignalTimer", 1.5, true );
        
     elseif (animName == "Custom_UsePoison") then

        Level.InstalledPoisson = true;
        Level.EnableLevelMark('POIS', false );
        Level.EnableLevelMark('COOK', false );

     elseif (animName == "Custom_BreakRadar2") then
        
        Level.AddPlayerAiSound(30.0); 
        Level.OnBreakRadar();
        Level.FinishTask('RADA', true);
        
     elseif (animName == "Custom_UseAcid") then
        
        if (Level.TryUseAcid == 1) then
           Level.UsesAcid[1] = true;
           Level.EnableLevelMark('ZEN1' , false );
 
           Level.AddLargeMessage( MissionText.GunNeutralizedMessage, 10.0, 255, 255, 255 );

           --Level.AddPlayerAiSound(60.0);
           Level.InstallDpc("Level.AddPlayerAiSound(60.0)", 1.0);

           Level.EnableSound("acid02", true);
           Level.AddTimer( 'A2TM', "OnDisableAcid02Sound", 5.0, false );

           if (Level.IsMissionTaskOver('DGUN') == true) then
               Level.FinishTask('DGUN', true);
           end
           
           local dynamiteMark = Level.FindWeaponItem( 'DYN1' );
           if ( dynamiteMark != nil ) then
               Level.DeleteItem( dynamiteMark ); 
           end;
           
           Level.RemovePlayerAction("SDYN");
           
        elseif (Level.TryUseAcid == 2) then
        
           Level.UsesAcid[2] = true;
           Level.EnableLevelMark('ZEN2', false);

           --Level.AddPlayerAiSound(60.0);
           Level.InstallDpc("Level.AddPlayerAiSound(60.0)", 1.0);

           if (Level.BadBulletsInstalled == false) then
               Level.AddLargeMessage( MissionText.GunNeutralizedMessage, 10.0, 255, 255, 255 );
           end

           Level.EnableSound("acid01", true);
           Level.AddTimer( 'A1TM', "OnDisableAcid01Sound", 5.0, false );

           Level.EnableLevelMark('NRGN', false);
           Level.EnableLevelMark('TRBL', false);
           Level.EnableLevelMark('VDCL', false );

           local dynamiteMark = Level.FindWeaponItem( 'DYN2' );
           if ( dynamiteMark != nil ) then
             Level.DeleteItem( dynamiteMark ); 
           end;
        
           if (Level.IsMissionTaskOver('DGUN') == true) then
               Level.FinishTask('DGUN', true);
           end           
           
           Level.RemovePlayerAction("SDYN");
        end
        
     end
     
     Level.PlayerAnimSounds     = {};
     
  end

--------------------------------------------------------
-- Name: Level.OnSoldierMessage()
-- Desc:
--------------------------------------------------------
  function Level.OnSoldierMessage()
     if (AI.IsDefault(AI.FindNPC('G125')) == true) then
         Level.VoiceMessage(AI.FindNPC('G124'), "%Script12_Sound", "CanChangeOfficerMessage");
     end
  end

--------------------------------------------------------
-- Name: Level.OnRadioManMessage()
-- Desc:
--------------------------------------------------------
  function Level.OnRadioManMessage()
     if (Level.AlertCalled == true) then
        return;
     end
     
     if (AI.IsDefault(AI.FindNPC('G125')) == true and
         AI.IsDefault(AI.FindNPC('G124')) == true) then  
         
        Level.VoiceMessage(AI.FindNPC('G125'), "%Script11_Sound", "ChangeMusicMessage");
        Level.InstallDpc("Level.OnSoldierMessage()", 3.5);
        
     end
  end

--------------------------------------------------------
-- Name: Level.OnKilledSovietSoldier()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledSovietSoldier()
               
     if ( Level.KilledSovietSoldier == false ) then
        if ( MissionText.SovietSoldierDie != "" and MissionText.SovietSoldierDie != nil ) then
           Level.AddLargeMessage( MissionText.SovietSoldierDie, 10.0, 255, 255, 255 );
        end

        Level.KilledSovietSoldier = true;
     end     
  end
  
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
                
     return true,false;
  else

     return true,true;

  end;
end;

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
       
  local mark = Trigger.GetScriptCmd( Level.DynamiteTrigger );

  if ( dynNumber == 2 and Level.UsesAcid[2] == false ) then
  
    Level.UsesAcid[2] = true;
    Level.EnableLevelMark('ZEN2', false);

    if (Level.BadBulletsInstalled == false) then
        Level.AddLargeMessage( MissionText.GunNeutralizedMessage, 10.0, 255, 255, 255 );
    end

    Level.EnableLevelMark('NRGN', false);
    Level.EnableLevelMark('TRBL', false);
    
    -- Remove use acid action from menu if it has one..
    Level.RemovePlayerAction('AFTC');
             
  elseif ( dynNumber == 1 and Level.UsesAcid[1] == false ) then
  
    Level.UsesAcid[1] = true;
    Level.EnableLevelMark('ZEN1' , false );
 
    Level.AddLargeMessage( MissionText.GunNeutralizedMessage, 10.0, 255, 255, 255 );
    
    -- Remove use acid action from menu if it has one..
    Level.RemovePlayerAction('AFTC');
              
  end;

  if (Level.IsMissionTaskOver('DGUN') == true) then
            Level.FinishTask('DGUN', true);
  end
        
  local dynamiteMark = Level.FindWeaponItem( mark );
  if ( dynamiteMark != nil ) then
      Level.DeleteItem( dynamiteMark ); 
  end;

  Level.UnregisterTrigger( Level.DynamiteTrigger );
  Level.DynamiteTrigger = nil;
  Level.RemovePlayerAction("SDYN");
  
end;

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor301()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor301()
   AI.FailTask(AI.FindNPC('GO15'), AI.TASK_SCRIPT_DEFAULT );

   AI.FailTask(AI.FindNPC('G149'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('GS88'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('GS87'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('GS86'), AI.TASK_SCRIPT_DEFAULT );

   AI.FailTask(AI.FindNPC('GS84'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('G146'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('G147'), AI.TASK_SCRIPT_DEFAULT );
   AI.FailTask(AI.FindNPC('G148'), AI.TASK_SCRIPT_DEFAULT );
end

--------------------------------------------------------
-- Name: Level.IsTestPilot()
-- Desc:
--------------------------------------------------------
function Level.IsTestPilot( body )
   for i in Level.TestPilots do
      if (body == Level.FindActor(Level.TestPilots[i])) then
         return true;
      end
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.OnNotifyInvestigatedBody()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyVisitedBody(npc, body, accident)
   
   AI.Debug(npc, "Level.OnNotifyVisitedBody", "accident:", tostring(accident));
   
   if (Level.IsTestPilot( body ) == false) then
      return;
   end
   
   local job = AI.GetScriptJob("TASK_SCRIPT_CALL_ALERT");
   if (job != nil) then
      return;
   end
   
   if (Level.AlertBodyAnchors == nil) then
      return;
   end
   
   if (Actor.IsDead(body) == true) then
      return;
   end
   
   if (Level.JustSeePilotBody == true) then
      return;
   end
      
   local anchorId = Level.FindNearestAnchor(Level.AlertBodyAnchors, Level.GetNpcPosition(npc));
       
   if (anchorId != nil) then
      local anchor = AI.FindAnchor(anchorId);
          
      if (anchor == nil) then
         return;
      end
          
      if (AI.IsAnchorBinded(anchor) == true) then
         return;
      end
          
      AI.Debug(npc, "Nearest body alert anchor", anchorId);
          
      AI.AnchorBindProtect(anchor, true);

      local properties = Level.CreateCustomParams();
      Level.SetValue(properties, "CustomString_1", anchorId );
		
      Level.AddSmallMessage( MissionText.Message_TestPilotDetected, 10.0, 255, 0, 0);
      
      Actor.MarkAsTarget( AI.GetActor(npc), true );
  	  AI.RunScriptTask(npc, "scripts:job\\CallAlert.lua", AI.LOGIC_NEUTRAL, properties);
  	  
  	  -- hmmm...
  	  -- it's hack. on one hand, but it covers more then 95% of bad combinations 
  	  Level.PilotBodyDetected = true;
  	  Level.InstallDpc("Level.PilotBodyDetected = false", 10.0 * 60.0);
  	  
  	  Level.JustSeePilotBody = true;
  	  Level.InstallDpc("Level.JustSeePilotBody = false", 5.0);
   end       
end

--------------------------------------------------------
-- Name: Level.OnCallBodyAlert()
-- Desc:
--------------------------------------------------------
function Level.OnCallBodyAlert()
   Level.FailedMission( MissionText.Fail_BodyAlarm );
end

--------------------------------------------------------
-- Name: Level.StartMissionTimer()
-- Desc:
--------------------------------------------------------
function Level.StartMissionTimer()
   if (Level.MissionTimerStarted == true) then
      return;
   end
   
   local difficulty = { 70.0, 50.0, 50.0, 120.0 };
   local minutes = difficulty[ Level.GetDifficulty() + 1 ];
      
   if (Level.MinutesHack != nil) then
      minutes = Level.MinutesHack;
   end

   Level.MissionTimer = minutes * 60.0; 

   Level.OnMissionTimerMessage();

   Level.AddTimer( 'MTMS', "OnMissionTimerMessage", Level.MissionTimerInterval, true );
   
   Level.MissionTimerStarted = true;
end

--------------------------------------------------------
-- Name: Level.OnExplodeVehicle()
-- Desc:
--------------------------------------------------------
function Level.OnExplodeVehicle()
   Level.VehicleExploded = true;
end
  
--------------------------------------------------------
-- Name: Level.OnMissionTimerMessage()
-- Desc:
--------------------------------------------------------
function Level.OnMissionTimerMessage()
  
   Level.MissionTimer = Level.MissionTimer - Level.MissionTimerInterval;
     
   if ( Level.MissionTimer < 0.0 or Level.MissionTimer == 0.0 ) then

      if (Level.IsMissionTaskCompleted('SIGN') == false or
          Level.HasMissionTask('SIGN') == false) then
   
         Level.FailedMission( MissionText.Fail_MissionTimer );
   
      else
         Level.FailedMission( MissionText.Fail_GroupMissionTimer );
      end
        
      return;        
   end;
               
   local minutes = floatToInt( Level.MissionTimer / 60.0 );
   local seconds = floatToInt( Level.MissionTimer - ( minutes * 60.0 ) );
     
   if ( minutes < 0 ) then
     minutes = 0;
   end;
     
   if ( seconds < 0 ) then
     seconds = 0;
   end;

   local msg;
     
   --if ( minutes < 10 ) then
   --   msg = MissionText.Message_MissionTimer .. '0' .. tostring( minutes );
   --else
   if (Level.IsMissionTaskCompleted('SIGN') == false or
       Level.HasMissionTask('SIGN') == false) then
   
      msg = MissionText.Message_MissionTimer .. tostring( minutes );
   
   else
      msg = MissionText.Message_GroupTimer .. tostring( minutes );
   end
   --end;
   
   local s = floatToInt( minutes / 10.0 );
   local n = minutes - s * 10;
   
   if ( n == 0 or n > 4 or ( minutes > 10 and minutes < 20 ) ) then
      msg = msg .. MissionText.Message_TimerFinish_1;
   elseif ( n > 1 ) then
      msg = msg .. MissionText.Message_TimerFinish_2;
   else
      msg = msg .. MissionText.Message_TimerFinish_3;
   end;
   
   Level.AddSmallMessage( msg, 10.0, 255, 255, 255 );
  
end

--------------------------------------------------------
-- Name: Level.ShowBenzovozCutscene()
-- Desc:
--------------------------------------------------------
function Level.ShowBenzovozCutscene()
   Level.BeginCutScene( 'BenzovozCutscene', 'Levels\\Airbase\\benzovoz.scm', '', 3.0, { 1, 0.0, 190.0, 220.0, 255 } );
end

--------------------------------------------------------
-- Name: Level.OnAnchor_WhereIsFuckenBenzovoz()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_WhereIsFuckenBenzovoz()
   if (Level.WasMoveItToPlaneMessage == false) then
      local npc = AI.FindNPC('GTP2');
      Level.VoiceMessage( npc, "%Script01_Sound", "WhereIsFuckenBenzovozMessage");
      
      if (Level.GetDifficulty() == 0 and Level.BenzovozCutsceneShowed != true) then
         local npcPos    = Level.GetNpcPosition( npc );
         local playerPos = Level.GetPlayerPosition();

         local distance = Level.BalanceDistance(npcPos, playerPos);
         if (distance < 60.0) then
             Level.InstallDpc("Level.ShowBenzovozCutscene()", 10.0);
             Level.BenzovozCutsceneShowed = true;
         end
      end
   end
   
   Level.OnCheckBenzovoz();
end

--------------------------------------------------------
-- Name: Level.OnKilledConferenceOfficer()
-- Desc:
--------------------------------------------------------
function Level.OnKilledConferenceOfficer()
   local officers = { 'GO06', 'GO07', 'GO08', 'GO10', 'GO09' };
 
   local bAdd = false;
   
   for i in officers do
      local npc = AI.FindNPC(officers[i]);
      if (AI.IsDefault(npc) == true) then
         AI.DirtyChangeAttention( npc, AI.ATTENTION_ALARM, true);
         
         if (bAdd == false) then
            Level.RunAnchorJob_Run(npc, 'A238', true);
            bAdd = true;
         end
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_BeginLoading()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_BeginLoading()
   if (Level.LoadedsTimerStarted == false) then
      Level.InstallDpc("Level.OnLoadersTimer()", 0.5);
      Level.LoadedsTimerStarted = true;
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor_A169()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor_A169()
   if (Level.OilStoped == true) then
      Level.RunRadarScript();
   end
end

--------------------------------------------------------
-- Name: Level.AddVisionBrushes()
-- Desc:
--------------------------------------------------------
function Level.AddVisionBrushes()
    AI.AddBlockVisionBox( -1748.270, -0.125, -692.364, -1742.270, 8.875, -686.364, 'VB 0', 0.6, 0.3);
    AI.AddBlockVisionBox( -1795.939, -0.071, -834.567, -1789.939, 8.929, -828.567, 'VB 1', 0.6, 0.3);
    AI.AddBlockVisionBox( -1916.213, -0.141, -626.058, -1910.213, 8.859, -620.058, 'VB 2', 0.6, 0.3);
    AI.AddBlockVisionBox( -1901.505, -0.141, -508.288, -1895.505, 8.859, -502.288, 'VB 3', 0.6, 0.3);
    AI.AddBlockVisionBox( 819.244, -0.189, 1250.262, 827.244, 12.811, 1258.262, 'VB 4', 0.6, 0.3);
    AI.AddBlockVisionBox( 1027.552, -0.097, 1108.325, 1035.552, 11.903, 1116.325, 'VB 5', 0.6, 0.3);
    AI.AddBlockVisionBox( 1806.667, -0.189, 1008.566, 1814.667, 12.811, 1016.566, 'VB 6', 0.6, 0.3);
    AI.AddBlockVisionBox( 2193.751, 0.051, 558.286, 2201.751, 13.051, 566.286, 'VB 7', 0.6, 0.3);
    AI.AddBlockVisionBox( 2213.331, 0.228, 219.783, 2221.331, 13.228, 227.783, 'VB 8', 0.6, 0.3);
    AI.AddBlockVisionBox( 1305.627, -0.143, -1550.708, 1313.627, 12.857, -1542.708, 'VB 9', 0.6, 0.3);
    AI.AddBlockVisionBox( 1201.228, 1.594, -1893.769, 1209.228, 14.594, -1885.769, 'VB10', 0.6, 0.3);
    AI.AddBlockVisionBox( 1081.237, 3.194, -2031.687, 1089.237, 16.194, -2023.687, 'VB11', 0.6, 0.3);
    AI.AddBlockVisionBox( 767.910, -0.000, -1862.362, 775.910, 13.000, -1854.362, 'VB12', 0.6, 0.3);
    AI.AddBlockVisionBox( 741.894, -0.425, -1489.028, 749.894, 12.575, -1481.028, 'VB13', 0.6, 0.3);
    
    -- new...
    AI.AddBlockVisionBox( -1205.179, -0.453, -921.023, -1196.179, 9.547, -912.023, 'VB14', 0.7, 0.35);
    
    AI.AddBlockVisionBox( 1911.4548, -1.7584, -735.5999, 1919.4548, 11.2416, -727.5999, 'VB15', 0.7, 0.35);
    AI.AddBlockVisionBox( 1916.0573, -0.4252, -835.5721, 1924.0573, 12.5748, -827.5721, 'VB16', 0.7, 0.35);
    AI.AddBlockVisionBox( 858.3342, -0.4252, -1575.4559, 868.3342, 12.5748, -1565.4559, 'VB17', 0.7, 0.35);
    
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth()
  Level.InstallDpc("Level.OnHelpForm()", 3.0);
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
   if (Level.IsMissionTaskCompleted('NETM') == true) then
      Level.DecrementLevelStats(levelStats, "NumEnemiesStuned");
   end

   if (Level.IsMissionTaskCompleted('NETP') == true) then
      Level.DecrementLevelStats(levelStats, "NumEnemiesStuned");
   end
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformInputs(levelStats, aiStats, a, c, p, n, acc)
   c = c * 0.8;
   
   if (Level.GetDifficulty() == 3) then
      c = c * 0.25;
   end
   
   p = Level.DefaultCalcProf(c, n, acc);
   
   if (Level.IsMissionTaskCompleted('NETM') == true) then
      p = p + 0.1;
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

