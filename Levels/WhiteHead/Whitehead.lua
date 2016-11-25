----------------------------------------------------------------------------
--
-- Description :  Mission "White head"
--
--
----------------------------------------------------------------------------


-- Tasks:

------------------------------------ completed ------------ deadline ------------ completed ----
-- FIRST ITTERATION: 
-- vector map                 |    100%              |                       |   09.10.2007         |
-- briefing map               |    100%              |                       |   13.10.2007         |
-- waypoints                  |    100%              |                       |   09.10.2007         |
-- firepoints                 |    100%              |                       |   19.10.2007         |
-- physics                    |    100%              |                       |   09.10.2007         |
-- ai mirror system           |    100%              |                       |   09.10.2007         |
-- lg:outdoor                 |    100%              |      09.10.2007       |   09.10.2007         |
-- lg:first floor             |    100%              |      10.10.2007       |   10.10.2007         |
-- lg:second floor            |    100%              |      10.10.2007       |   10.10.2007         |
-- lg:third floor             |    100%              |      11.10.2007       |   11.10.2007         |
-- first enemy script         |    100%              |      11.10.2007       |   11.10.2007         |
-- second enemy script        |    100%              |      11.10.2007       |   11.10.2007         |
-- keys                       |    100%              |      11.10.2007       |   11.10.2007         |
-- chandelier script          |    100%              |      11.10.2007       |   12.10.2007         |
-- script dynamic objects     |    100%              |      12.10.2007       |   12.10.2007         |
-- sniper script              |    100%              |      12.10.2007       |   12.10.2007         |
-- ai fade sound system       |    100%              |      12.10.2007       |   12.10.2007         |
-- cinema script              |    100%              |      12.10.2007       |   12.10.2007         |
-- bathroom script            |    100%              |      12.10.2007       |   12.10.2007         |
-- stairs                     |    100%              |      12.10.2007       |   12.10.2007         |
-- windows                    |    100%              |      12.10.2007       |   12.10.2007         |
-- npc postprocess            |    100%              |      13.10.2007       |   13.10.2007         |
-- zone system                |    100%              |      13.10.2007       |   13.10.2007         |
-- stop move messages         |    100%              |      13.10.2007       |   13.10.2007         |
-- tasks                      |    100%              |      13.10.2007       |   13.10.2007         |
-- marks                      |    100%              |      13.10.2007       |   13.10.2007         |
-- alert scripts              |    100%              |      13.10.2007       |   15.10.2007         |
-- potential physics test     |    100%              |      13.10.2007       |   13.10.2007         |
-- lma triggers               |    100%              |      15.10.2007       |   15.10.2007         |
-- water invisible wall       |    100%              |      15.10.2007       |   15.10.2007         |
-- I it. gameplay test        |    100%              |      15.10.2007       |   15.10.2007         |
-- vine scripts               |    100%              |      11.10.2007       |   15.10.2007         |
-- grenade holes              |    100%              |      15.10.2007       |   15.10.2007         |
-- boiler script <delay>      |    100%              |      12.10.2007       |      <?>             |
-- 
-- cinema film projector (gr) |    100%              |      13.10.2007<?>    |   13.10.2007         |
-- cinema animating objects   |    100%              |      13.10.2007<?>    |   13.10.2007         |
-- lighting                   |    100%              |         <?>           |      <?>             |
-- mirrors                    |    100%              |         <?>           |      <?>             |
-- effects                    |    100%              |         <?>           |      <?>             |
-- additional art to roof     |    100%              |      17.10.2007<?>    |   17.10.2007         |
-- soldiers at south          |    100%              |      13.10.2007<?>    |   13.10.2007         |
-- help messages              |      0%              |         <?>           |                      |
-- auto open cinema door      |    100%              |      13.10.2007<?>    |   13.10.2007         |
-- secret room decamouflage   |    100%              |      15.10.2007<?>    |   15.10.2007         |
-- add. physics [vine, ets]   |    100%              |      15.10.2007<?>    |   15.10.2007         |
-- dec-age with sniper rifle  |    100%              |      15.10.2007       |   15.10.2007         |
-----------------------------------------------------------------------------------------------------
-- SECOND ITTERATION:
-----------------------------------------------------------------------------------------------------
-- sniper reaction script     |    100%              |      16.10.2007       |   16.10.2007         |
-- waiter can't return from 
-- spyroom                    |    100%              |      17.10.2007       |   17.10.2007         |
-- don't decamouflage 
-- waiter when use poisson    |    100%              |      17.10.2007       |   17.10.2007         |
-- poisson place              |    100%              |      17.10.2007       |   17.10.2007         |
-- use poisson for shtandar   |    100%              |      17.10.2007       |   17.10.2007         |
-- turn off light             |    100%              |      17.10.2007       |   18.10.2007         |
-- Disapear object system     |    100%              |      17.10.2007       |   17.10.2007         |
-- Breakfast mark             |    100%              |      17.10.2007       |   18.10.2007         |
-- SS_Guard open door waiter  |    100%              |      17.10.2007       |   18.10.2007         |
-- Dynamic marks              |    100%              |      18.10.2007       |   18.10.2007         |
-- Hi gilter trigger          |    100%              |      18.10.2007       |   18.10.2007         | 
-- Informator script          |    100%              |      19.10.2007       |   19.10.2007         |
-- Get boxes task             |    100%              |      20.10.2007       |   20.10.2007         |
-- Order workers script       |    100%              |      20.10.2007       |   20.10.2007         |
-- Waypoints test             |    100%              |      22.10.2007       |   22.10.2007         |
-----------------------------------------------------------------------------------------------------

-- bugs:
--       1) GunGunAnchor.lua : 112  Actor.RemoveWeapon(AI.GetActor(npc), 'PIST'); - doesn't work
-- fixed 2) Stairs are bad. Actor penetrate with house geometry
-- fixed 3) Sniper isn't slipping
-- fixed 4) Visarea at room near spyroom is bad
-- fixed 5) Bad zone trigger on floor 2
-- fixed 6) 'library' zone 
-- fixed 7) Get eat decamouflage
-- fixed 8) Officers must decamouflage ss_man
-- fixed 9) Sodiers can here sniper
-- fixed 10) Debug Assert <DebugCheckCorrect>

-- testcase:
-- 1) Check cinema man zones                     <completed>
-- 2) Cinema room shoot sound                    <completed>
-- 3) Glass blow ai sounds                       <completed>
-- 4) Vine anchors, glass must disappear         <completed>
-- 5) Officer form and waiter form               <completed>
-- 6) Boxes script. Check !All! variants         <completed>

-- alertgroups:
-- (0) outdoor near
-- (1) outdoor far
-- (2) first floor
-- (3) first floor (east)
-- (4) outdoor (french)
-- (5) second floor 
-- (6) third floor

--------------------------------- Messages table -----------------------------
  
  MissionText = 
  {
      Task_KillSpy                      = " Уничтожить И. Мельника";
      Task_KillStandartenfurer          = " Уничтожить Г. Рихтера";
      Task_Leave                        = " Покинуть местность";
      Task_Information                  = " Встретиться с инф-ром";
      Task_Boxes                        = " Вывезти документы";
      
      Message_TaskChanged               = "Задания изменены";
       
      Message_StartTractor              = "ВКЛЮЧИТЬ ДВИГАТЕЛЬ";
      Message_CutRope                   = "ОТВЯЗАТЬ ВЕРЕВКУ";
      Message_StartCinema               = "ВКЛЮЧИТЬ КИНОПРОЕКТОР";
      Message_CloseCrane                = "ПЕРЕКРЫТЬ ВОДУ";
      Message_PoissonVine               = "ОТРАВИТЬ ВИНО";
      Message_LightOff                  = "ВЫКЛЮЧИТЬ СВЕТ";
      Message_PutToVehicle              = "ПОЛОЖИТЬ В МАШИНУ";
      Message_OrderWorkers              = "ПРИКАЗАТЬ НАЧАТЬ ЗАГРУЗКУ";
      
      Key_Cinema                        = "Ключ от кинозала";
      Key_Boiler                        = "Ключ от бойлерной";
      Key_SecondFloorStair              = "Ключ от второго этажа";
      Key_SpyRoom                       = "Ключ от комнаты связного";
      Key_KitchenStorage                = "Ключ от винного склада";
      Key_FirstFloor                    = "Ключ от номеров на первом этаже";
      Key_Shed                          = "Ключ от сарая";
      Key_Radist                        = "Ключ от радиокомнаты";
      Key_Storage                       = "Ключ от склада на третьем этаже";
      Key_Library                       = "Ключ от библиотеки";
      Key_OfficerRoom                   = "Ключ от номера";
      
      Message_IWantDinner               = "@ Принесите мне завтрак в комнату";
      Message_OnlyForDinner             = "@ Мне должны принести завтрак. Не пускай никого кроме официанта..";
      
      Message_ComeHere                  = "@ Подойди ближе.";
      Message_Thanks                    = "@ Спасибо! Мы знали, что можем расчитывать на вас!";
      
      Message_Cutscene_Spy              = "- Вот информация, которую нам удалось получить по охране резиденции... Еще, в здании находятся важные документы, замаскированные под ненужную макулатуру. Судя по всему, немцы сжигают старый хлам... Нужно вывезти их пока не поздно.";
      
      Message_StopMove_GetOut           = "@ Проваливай отсюда!";
      Message_StopMove_NoAccess         = "@ Покиньте резиденцию! Вам запрещено здесь находиться!";
      Message_StopMove_OnlySklad        = "@ Работы в другом месте хватает..";
      Message_StopMove_OnlyOfficers     = "@ Только офицерам разрешено посещать третий этаж!";
      Message_StopMove_ThisIsMyRoom     = "@ Это моя комната! Покиньте ее немедленно!";
      Message_StopMove_LeaveRoom        = "@ Немедленно покиньте эту комнату!";
      Message_StopMove_IMustStopYou     = "@ Мне приказано сюда никого не пускать!";
      Message_StopMove_FilmIsNotStarted = "@ Что вам здесь нужно? Фильм еще не начался!";
      Message_StopMove_LeaveRoof        = "@ Вам нечего делать на чердаке!";
      Message_StopMove_Leave            = "@ Вам тут делать нечего!";
      Message_StopMove_MainHouse        = "@ Что тебе нужно?";
      Message_StopMove_Sniper           = "@ Снайперских позиций в резиденции нет..";
      Message_StopMove_Kitchen          = "@ Я не могу пропустить вас на кухню..";
      Message_StopMove_WhereIsEat       = "@ Вы должны принести завтрак! Не так ли?";
      Message_StopMove_Officer          = "@ Вход только для офицеров!";
      
      Message_StopMove_Bathroom         = "@ Полковник Рихтер приказал никого не пускать!";
      Message_StopMove_Bathroom_Rihter  = "@ Что ты тут забыл!?";
      
      Message_Alarm                     = "Поднята тревога!";
      
      Message_BlitzLoaded               = "! Машина загружена..";
      Message_BlitzIsNotLoaded          = "! Необходимо загрузить машину..";
      
      Message_Help                      = { "В старых особняках могут быть потайные двери",
                                            "Включенный двигатель может приглушить остальные звуки..",
                                            "Веревку можно перебить выстрелом..",
                                            "В резиденции есть кинозал..",                                            
                                            "Столовая находится на первом этаже",
                                            "Кинозал располагается на третьем этаже",
                                            "Офицер может отдавать приказы рядовым"
                                           };
      
      Message_GrassHelp                 = "В густой траве намного сложнее заметить противника в камуфляже..";
      Message_TraktorHelp               = "Гул трактора может приглушить громкие звуки..";
      Message_KillHelp_1                = "Необходимо уничтожить Рихтера";
      Message_KillHelp_2                = "Необходимо уничтожить Мельника";

      Message_ClothInfo                 = { "Рабочие не вызывают подозрения в подсобных помещениях на первом этаже",
                                            "Официант может свободно передвигаться по первому и второму этажу",
                                            "Снайперы контролируют территорию вокруг резиденции",
                                            "Служащий отвечает за обслуживание офицеров на третьем этаже и работу кинозала",
                                            "Французским рабочим запрещено находиться в резиденции",
                                            "Повар не вызывает подозрения на кухне"
                                          };

      
      Poison_Name                       = "ЯД";
      Poison_TipName                    = "Яд";
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
       
       Level.AddMusic( Level.MUSIC_MOOD_ACTION, "#0.75#sounds\\music\\b_action2.ogg" );       
       Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.35#sounds\\music\\b_dark3.ogg" );
              
       Level.SetDefaultMusicPause( 180.0, 240.0, 30.0, 120.0 );
       Level.SetDOFPostFilter( 1, 0.0, 1500.0, 2000.0 );
       System:SetVar("r_dofsky", 128 );
       System:SetVar("r_farclip" , 1500.0 );
       
       System:SetVar( "r_rimsunlightfactor", 0.4 );
       System:SetVar( "r_fogfactor" , 1.75 );
       System:SetVar( "cl_viewdist", 400.0 );
       System:SetVar( "cl_fogfactor", 1.0 );
       
       Level.SetDoorKey('DR04', 'SHKY');
       Level.SetDoorKey('DR06', 'SHKY');
       Level.SetDoorKey('DR07', 'FFKY');
       Level.SetDoorKey('BLDR', 'BLKY');
       Level.SetDoorKey('DR38', 'KSKY');
       Level.SetDoorKey('DR17', 'SFKY');
       Level.SetDoorKey('DR05', 'RDKY');
       Level.SetDoorKey('DR23', 'SPKY');
       Level.SetDoorKey('DR31', 'STKY');
       Level.SetDoorKey('DR27', 'CIKY');
       Level.SetDoorKey('DR37', 'TFKY');
       Level.SetDoorKey('DR26', 'SPKY');

       if ( Level.StorageLightOn == false ) then
         Level.TurnStorageLight( false );
       end;
       
       -- effects
       Level.SetHudEffect("noise_small" , true ); 
       
       if ( Level.CinemaOn == true ) then
         Level.StartCinema();       
       else
         Level.EnableLight( 'CLT1' , false );
         Level.EnableLight( 'CLT2' , false );
         Level.EnableLight( 'Cinema' , false );
         Level.EnableFlare( 'CFLR' , false );
       
         local lightProj = Level.FindWorldObject('CINL');
         if ( lightProj != nil ) then
         
            local px,py,pz = Level.GetWorldObjectPos( lightProj );
            Level.SetWorldObjectPos( lightProj, px, -1000.0, pz );
         
         end;
       end;
       
       Level.SecretDoors = { 'SD01', 'SD02' };
        
       for i in Level.SecretDoors do
          local door = Level.FindDoor( Level.SecretDoors[i] );

          if ( door != nil ) then
             AI.RegisterClosedDoor( door, true );
             Level.SetDoorNotifyScript( door, true );
          else
             print("Warning: Can't find door: " .. Level.SecretDoors[i]);
          end;
       end
       
       local bojlerDoor = Level.FindDoor( 'BLDR' );
       if ( bojlerDoor != nil) then
          Level.SetDoorNotifyScript( bojlerDoor, true );
       else
          print("Warning: Can't find door: BLDR");
       end
       
       System:SetVar( "cl_vehicle_camera_radius" , 5.5 );
       
       Level.EnableObjectHitNotify('ROPE', true );
  end;
 
--------------------------------------------------------
-- Name: Level.OnSave()
-- Desc:
--------------------------------------------------------
  function Level.OnSave()
       Stream.WriteInt(6);
       
       Stream.WriteBool( Level.TractorStarted );
       Stream.WriteBool( Level.FilmStarted );
       Stream.WriteBool( Level.WaterStoped );
       Stream.WriteBool( Level.GuardSend );
       Stream.WriteBool( Level.RopeCutted );
       Stream.WriteBool( Level.SpyWasAlive );
       Stream.WriteBool( Level.CinemaStarted );
       Stream.WriteBool( Level.AlertCalled );
       Stream.WriteBool( Level.WasAtHouse );
       Stream.WriteBool( Level.CraneWasClosed );
       Stream.WriteBool( Level.FirstDishTry );
       
       if ( Level.CinemaOn == true ) then
         Level.CinemaPos = Level.GetLightParam("Cinema", "video.pos" );
       end;
       
       Stream.WriteFloat( Level.CinemaPos );
       Stream.WriteBool( Level.CinemaOn );
       
       Stream.WriteBool( Level.AlertCalled );
       
       Level.WriteArray( Level.VinePoissoned );
       
       Stream.WriteString( Level.UsePoissonTrigger );
       
       Stream.WriteBool ( Level.SniperAlert );
       Stream.WriteBool ( Level.SniperBody );
       
       Stream.WriteBool ( Level.WaiterEnteredSpyRoom );
       Stream.WriteBool ( Level.RoofJobCompleted );
       
       Stream.WriteBool ( Level.PlayerHasDish );
       
       -- version 1
       Stream.WriteBool ( Level.StorageLightOn );
       
       Stream.WriteBool ( Level.InformationRecieved );
       Stream.WriteBool ( Level.SniperMarkDisabled );
       
       Stream.WriteBool ( Level.AtSmallFrenchTrigger );
       
       Stream.WriteInt  ( Level.BoxesAtVehicle );
       Stream.WriteBool ( Level.PlayerHasBox );
       Level.WriteArray ( Level.PlayerBoxes );
       Level.WriteArray ( Level.WorkerBoxes );       
       Stream.WriteBool ( Level.NearVehicleTrigger );
       Level.WriteArray ( Level.BoxWorkers );
       
       Stream.WriteBool ( Level.BojlerReturnPlaceTrigger );
       
       Stream.WriteInt( Level.BoxesCompleted );
       Stream.WriteBool ( Level.WasWorksJob );
       Stream.WriteBool ( Level.WasAtBlitz );
       
       Stream.WriteBool ( Level.OrderWorkersTrigger );
       Stream.WriteBool ( Level.ChandelierScript );
       
       Stream.WriteBool ( Level.TraktorRuchka );
       
       if ( Level.TraktorRuchka == true ) then
          local frame = Level.GetWorldObjectAnimFrame( Level.FindWorldObject('TRU4' ) );
          Stream.WriteFloat( frame );
       end;
       
       Level.WriteArray( Level.PlayerBoxesMoved );
       Level.WriteArray( Level.CheckBotBox );
       
       Stream.WriteBool( Level.CinemaArea );
       Stream.WriteBool( Level.VehicleUseEnabled );
       
       -- version 2
       Stream.WriteBool( Level.PlayerAtBlitz );
       Stream.WriteInt( Level.BoxesVehicleAtZone );
       
       -- version 3
       Stream.WriteBool( Level.VehicleExploded );
       
       -- version 4
       Stream.WriteBool( Level.RopeBulletHitted );
       
       -- version 5
       Stream.WriteBool( Level.WaterCutsceneShowed );
       
       -- version 6
       Stream.WriteBool( Level.GotLuger );
       
       Level.OnSave_Common();              
  end

--------------------------------------------------------
-- Name: Level.OnLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnLoad()
       local version = Stream.ReadInt();
       
       Level.TractorStarted = Stream.ReadBool();
       Level.FilmStarted    = Stream.ReadBool();
       Level.WaterStoped    = Stream.ReadBool();
       Level.GuardSend      = Stream.ReadBool();
       Level.RopeCutted     = Stream.ReadBool();
       Level.SpyWasAlive    = Stream.ReadBool();
       Level.CinemaStarted  = Stream.ReadBool();
       Level.AlertCalled    = Stream.ReadBool();
       Level.WasAtHouse     = Stream.ReadBool();
       Level.CraneWasClosed = Stream.ReadBool();
       Level.FirstDishTry   = Stream.ReadBool();
       
       Level.CinemaPos      = Stream.ReadFloat();
       Level.CinemaOn       = Stream.ReadBool();
       
       Level.AlertCalled    = Stream.ReadBool();
       
       Level.VinePoissoned  = Level.ReadArray();
       
       Level.UsePoissonTrigger = Stream.ReadString();
       
       Level.SniperAlert    = Stream.ReadBool();
       Level.SniperBody     = Stream.ReadBool();
       
       Level.WaiterEnteredSpyRoom = Stream.ReadBool();
       Level.RoofJobCompleted     = Stream.ReadBool();
       
       Level.PlayerHasDish  = Stream.ReadBool();
       
       Level.RopeBulletHitted    = false;
       Level.WaterCutsceneShowed = false;
       Level.GotLuger            = false;
       
       if (version >= 1) then
          Level.StorageLightOn = Stream.ReadBool();
       
          Level.InformationRecieved = Stream.ReadBool();
          Level.SniperMarkDisabled  = Stream.ReadBool();
       
          Level.AtSmallFrenchTrigger = Stream.ReadBool();
       
          Level.BoxesAtVehicle     = Stream.ReadInt();
          Level.PlayerHasBox       = Stream.ReadBool();
          Level.PlayerBoxes        = Level.ReadArray();
          Level.WorkerBoxes        = Level.ReadArray();              
          Level.NearVehicleTrigger = Stream.ReadBool();
          Level.BoxWorkers         = Level.ReadArray();
       
          Level.BojlerReturnPlaceTrigger = Stream.ReadBool();
       
          Level.BoxesCompleted     = Stream.ReadInt();
          Level.WasWorksJob        = Stream.ReadBool();
          Level.WasAtBlitz         = Stream.ReadBool();
       
          Level.OrderWorkersTrigger = Stream.ReadBool();
          Level.ChandelierScript   = Stream.ReadBool();
          
          Level.TraktorRuchka       = Stream.ReadBool();
          
          if ( Level.TraktorRuchka == true ) then
           
            local frame = Stream.ReadFloat();
            Level.EnableWorldObjectAnim( Level.FindWorldObject('TRU4'), true, 0.0, 143.0, 30.0, frame );
          
          end;
          
          Level.PlayerBoxesMoved  = Level.ReadArray();
          Level.CheckBotBox       = Level.ReadArray();
          
          Level.CinemaArea        = Stream.ReadBool();
          Level.VehicleUseEnabled = Stream.ReadBool();
          
       end
       
       if (version >= 2) then
          Level.PlayerAtBlitz      = Stream.ReadBool();
          Level.BoxesVehicleAtZone = Stream.ReadInt();
       end
       
       if (version >= 3) then
          Level.VehicleExploded = Stream.ReadBool();
       end
       
       if (version >= 4) then
          Level.RopeBulletHitted = Stream.ReadBool();
       end
       
       if (version >= 5) then
          Level.WaterCutsceneShowed = Stream.ReadBool();
       end
       
       if (version >= 6) then
          Level.GotLuger = Stream.ReadBool();
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

       Level.SoundName  = { "TraktorSound" };
       Level.SoundState = { false };
       
       Level.TractorStarted       = false;
       Level.FilmStarted          = false;
       Level.WaterStoped          = false;
       Level.GuardSend            = false;
       Level.RopeCutted           = false;       
       Level.SpyWasAlive          = false;
       Level.CinemaStarted        = false;
       Level.AlertCalled          = false;
       Level.WasAtHouse           = false;
       Level.CraneWasClosed       = false;
       Level.FirstDishTry         = true;
       
       Level.TraktorRuchka        = false;
       
       Level.CinemaPos            = 0.0;
       Level.CinemaOn             = false;
       
       Level.AlertCalled          = false;
       Level.CinemaArea           = false;
       
       Level.VinePoissoned = {};
       Level.VinePoissoned['VineTrigger_01'] = false;
       Level.VinePoissoned['VineTrigger_02'] = false;
       Level.VinePoissoned['VineTrigger_03'] = false;
       
       Level.UsePoissonTrigger = "";
       
       Level.SniperAlert          = false;
       Level.SniperBody           = false;
       
       Level.WaiterEnteredSpyRoom = false;
       Level.RoofJobCompleted     = false;
       
       Level.PlayerHasDish        = false;
       Level.StorageLightOn       = true;
       
       Level.InformationRecieved  = false;     
       Level.SniperMarkDisabled   = false;  
       
       Level.AtSmallFrenchTrigger = false;

       Level.BoxesAtVehicle       = 0;
       Level.PlayerHasBox         = false;
       
       Level.PlayerBoxes = { 'BOX1', 'BOX2', 'BOX3' };
       
       Level.NearVehicleTrigger   = false;
       
       Level.BoxWorkers  = { 'GW06', 'GW07', 'GW08' }; 
       Level.WorkerBoxes = { 'BOX7', 'BOX8', 'BOX9' };
       
       Level.BojlerReturnPlaceTrigger = false;
       
       Level.BoxesCompleted       = 0;
       Level.WasWorksJob          = false;
       Level.WasAtBlitz           = false;
       
       Level.OrderWorkersTrigger  = false;
       
       Level.ChandelierScript     = false;
       Level.VehicleExploded      = false;
       Level.VehicleUseEnabled    = false;
       
       Level.PlayerAtBlitz      = false;
       Level.BoxesVehicleAtZone = 0;
       
       Level.RopeBulletHitted    = false;
       Level.WaterCutsceneShowed = false;
       
       Level.GotLuger            = false;
       
       Level.PlayerBoxesMoved = {};
       for i in Level.PlayerBoxes do
          Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] = false;
       end
       
       Level.CheckBotBox = {};
       
       -- Action handlers..
       Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );
       
       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'WHSH' , "OnKillStandartenfurer");
       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'WSPY' , "OnKillSpy");
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'WHSH' , "OnHitStandartenfurer");
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'WSPY' , "OnHitSpy");       

       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'GS65' , "OnKillGuard");

       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'FREN' , "OnKillFrench");
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'FREN' , "OnKillFrench");       

       Level.AddActionHandler( Level.AH_CHANGE_CLOTH );

       Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, 'BL04', "OnLeaveBlitz" );
       Level.AddActionHandler( Level.AH_ENTER_VEHICLE, 'BL04', "OnEnterBlitz" );

       Level.AddActionHandler( Level.AH_EXPLODE_VEHICLE, 'BL04', "OnExplodeVehicle" );

       Level.EnableNotifyPickup( Level.FindItem( 'WHOT' ), true );
             
       for i in Level.BoxWorkers do
          Level.AddActionHandler( Level.AH_ACTOR_KILLED, Level.BoxWorkers[i], "OnKilled" .. Level.BoxWorkers[i]);
          Level.AddActionHandler( Level.AH_ACTOR_HITTED, Level.BoxWorkers[i], "OnKilled" .. Level.BoxWorkers[i]);
       end
       
       Level.EnableVehicleUse( 'BL04', false );
       
       local item = Level.FindItem( 'DISH' );
          
       if (item != nil) then
          Level.EnableEquipmentNotify( item, "drop", true );
          Level.EnableEquipmentNotify( item, "pickup", true );
       else
          print("Can't identify object DISH");
       end
       
       for i in Level.PlayerBoxes do
          local box = Level.FindItem( Level.PlayerBoxes[i] );
          if (box != nil) then
             Level.EnableEquipmentNotify( box, "drop", true );
             Level.EnableEquipmentNotify( box, "pickup", true );
             
             Level.EnableItemPickup( box, true );
          else
             print("Can't find box: " .. Level.PlayerBoxes[i]);
          end
       end   

       for i in Level.WorkerBoxes do
          local box = Level.FindItem( Level.WorkerBoxes[i] );
          if (box != nil) then
             Level.EnableEquipmentNotify( box, "drop", true );
             Level.EnableEquipmentNotify( box, "pickup", true );
             
             Level.HideBox(Level.WorkerBoxes[i], true);
             
             Level.EnableItemPickup( box, false );
          else
             print("Can't find box: " .. Level.PlayerBoxes[i]);
          end
       end   
       
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
             
             Actor.PutEmptyPouch( player, "binocular", "Equipment" );
                                       
          end;
       end;
       
       local luger = Level.FindWeaponItem('LGSL');
       if (luger != nil) then
          Level.EnableNotifyPickup( luger, true );
       else
          print("Warning: Can't find luger: LGSL");
       end
       
       -- entities:
       -- Level.AddKey('GSC1', 'SHKY', MissionText.Key_Shed);
       Level.AddKey('GS04', 'SHKY', MissionText.Key_Shed, nil, true );
       -- Level.AddKey('GSC2', 'SHKY', MissionText.Key_Shed);
       Level.AddKey('GS20', 'SHKY', MissionText.Key_Shed, nil, true );
       
       Level.AddKey('GS23', 'FFKY', MissionText.Key_FirstFloor, nil, true );
       Level.AddKey('GS23', 'BLKY', MissionText.Key_Boiler, nil, true );
       
       Level.AddKey('HW02', 'KSKY', MissionText.Key_KitchenStorage, nil, true );
       Level.AddKey('GW04', 'KSKY', MissionText.Key_KitchenStorage, nil, true );
       
       Level.AddKey('GS55', 'SFKY', MissionText.Key_SecondFloorStair, nil, true );
       
       Level.AddKey('GS52', 'RDKY', MissionText.Key_Radist, nil, true );
       
       Level.AddKey('WSPY', 'SPKY', MissionText.Key_SpyRoom, nil, true );
       Level.AddKey('GS41', 'SPKY', MissionText.Key_SpyRoom, nil, true );
       
       Level.AddKey('CIMN', 'STKY', MissionText.Key_Storage, nil, true );
       Level.AddKey('CIMN', 'CIKY', MissionText.Key_Cinema, nil, true );
       Level.AddKey('GS30', 'CIKY', MissionText.Key_Cinema, nil, true );
       
       Level.AddKey('GS56', 'TFKY', MissionText.Key_Library, nil, true );
       Level.AddKey('GO04', 'SPKY', MissionText.Key_OfficerRoom, nil, true );
       
       Level.SetDoorLockedId('DR23', false);

       -- ai:       
       local properties = {};
       properties["DistanceRun"]    = true;
       properties["ParentPolicy"]   = true;
       properties["WatchCommander"] = true;
       properties["TurnCommander"]  = true;
       properties["RaisedWeapon"]   = true;
       
       AI.FollowActor( AI.FindNPC('GS65'), Level.FindActor('WHSH'), 0.0, -15.0, Level.ToCustomParams(properties));
       
       AI.AddMirror('MIRR', -1279.75, 0.81, 1555.00, -1.0, 0.0, 0.0);
       
       Level.AddTimer( 'OFTM', "OnOfficerTimer", 120.0, true );
       Level.AddTimer( 'TMRM', "OnUpdateSniperZone", 2.0, true ); 
       Level.AddTimer( 'IKTM', "OnIkTimer", 6.0, true );
       
       NPC.SetFlag( AI.FindNPC('WSPY'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('HW02'), NPC.F_CANT_OPEN_LOCK_DOOR, true );       
       
       for i in Level.BoxWorkers do
          NPC.SetFlag( AI.FindNPC(Level.BoxWorkers[i]), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       end
       
       AI.OnPlayerEnterZone("global", 'GLSC');
       AI.OnPlayerEnterZone("global_SniperForm", 'GLSN');
       
       Level.AddTimer( 'CCDT', "OnCheckCloseDoorTimer", 20.0, true );
       
       AI.EnableZone("SecretDoorZone", false);
       AI.EnableZone("global_box", false);
       
       AI.Enable("subordinate");
       AI.Enable("notify_visited_body");
       
       AI.Disable(AI.FindNPC('WSPY'), "surrender");
       
       AI.ChangeLogic(AI.FindNPC('FREN'), "CivilianScriptFriend");
       
       AI.AddBlockVisionBox( -1026.531, -21.989, 442.919, -1018.531, -3.988, 1192.919, 'VB 0', 0.8, 0.25);
       AI.AddBlockVisionBox( -1357.466, -21.104, 514.421, -1346.934, -1.388, 1194.485, 'VB 1', 0.7, 0.25);
       AI.AddBlockVisionBox( -1189.977, -20.011, 489.273, -1180.468, -2.306, 1169.328, 'VB 2', 0.7, 0.25);
       AI.AddBlockVisionBox( -1205.254, -19.258, 822.861, -1164.779, 11.290, 863.070, 'VB 3', 0.8, 0.25);
       AI.AddBlockVisionBox( -1284.688, -22.438, 152.749, -1276.662, -6.762, 402.807, 'VB 4', 0.7, 0.3);
       AI.AddBlockVisionBox( -1099.651, -22.055, 252.075, -1091.968, -6.618, 402.133, 'VB 5', 0.7, 0.3);
       AI.AddBlockVisionBox( -1271.744, -22.920, 394.569, -1106.550, -5.030, 402.176, 'VB 6', 0.7, 0.3);
       AI.AddBlockVisionBox( -1090.427, -22.175, 174.744, -1084.943, -1.940, 249.807, 'VB 7', 0.7, 0.3);
       AI.AddBlockVisionBox( -1075.172, -22.216, 144.442, -1069.808, -2.065, 184.506, 'VB 8', 0.65, 0.3);
       AI.AddBlockVisionBox( -1056.255, -22.092, 104.885, -1050.937, -5.941, 144.940, 'VB 9', 0.7, 0.3);
       AI.AddBlockVisionBox( -1226.410, -22.679, 122.610, -1106.227, -6.303, 129.059, 'VB10', 0.7, 0.3);
       AI.AddBlockVisionBox( -1316.544, -22.512, 110.185, -1216.371, -7.362, 116.563, 'VB11', 0.65, 0.3);
       AI.AddBlockVisionBox( -1101.949, -22.281, 117.832, -1061.752, -5.815, 123.007, 'VB12', 0.7, 0.3);
       AI.AddBlockVisionBox( -1230.741, -22.746, 199.943, -1135.252, -6.441, 295.305, 'VB13', 0.85, 0.4);
       AI.AddBlockVisionBox( -764.716, -52.102, -328.172, -384.716, -22.102, -228.172, 'VB14', 0.8, 0.4);
       AI.AddBlockVisionBox( -46.069, -46.135, -295.935, 293.931, -16.135, -195.935, 'VB15', 0.75, 0.4);
       AI.AddBlockVisionBox( -1304.733, -52.102, -695.307, -1104.733, -22.102, -495.307, 'VB16', 0.7, 0.4);
       AI.AddBlockVisionBox( -1227.187, -52.102, -493.413, -1137.187, -22.102, -423.413, 'VB17', 0.8, 0.4);
       AI.AddBlockVisionBox( -1347.017, -52.102, -624.048, -1307.017, -22.102, -554.048, 'VB18', 0.8, 0.4);
       AI.AddBlockVisionBox( -1098.395, -6.485, 292.959, -1093.224, 2.619, 312.997, 'VB19', 0.6, 0.3);
       
       AI.AddBlockVisionBox( -1180.5553, -6.2630, 1689.6848, -1168.4841, 18.2558, 1690.6948, 'WIND', 1.0, 0.4 );
       AI.AddBlockVisionBox( -1050.7360, -6.2630, 1689.2275, -1038.6648, 18.2558, 1690.2375, 'WIN2', 1.0, 0.4 );
       
       Level.SetFormHelp( "Worker",            MissionText.Message_ClothInfo[1] );
       Level.SetFormHelp( "Waiter",            MissionText.Message_ClothInfo[2] );
       Level.SetFormHelp( "Sniper",            MissionText.Message_ClothInfo[3] );
       Level.SetFormHelp( "CinemaMan",         MissionText.Message_ClothInfo[4] );
       Level.SetFormHelp( "French",            MissionText.Message_ClothInfo[5] );
       Level.SetFormHelp( "Civilian",          MissionText.Message_ClothInfo[5] );
       Level.SetFormHelp( "Cook",              MissionText.Message_ClothInfo[6] );
       
       if (Level.GetDifficulty() <= 1) then
          Level.InstallDpc("Level.HelpMessage(MissionText.Message_GrassHelp)", 15.0);
       end
       
       -- Init mission tasks..
       Level.InstallInitialTasks();
       
       Level.ChangePlayerStand( 2 );
                           
       -- Finish load..
       Level.OnFinishLoad();
       Level.OnLoadedDifficulty();
  end;

  --------------------------------------------------------
  -- Name: Level.OnLoadedDifficulty()
  -- Desc:
  --------------------------------------------------------
  function Level.OnLoadedDifficulty()
     local diff = Level.GetDifficulty();
     
     if (diff != 2) then
        Level.LockDoor('DR37', false);
        Level.LockDoor('DR26', false);
        Level.LockDoor('DR08', false);
     end
     
     if (diff == 2) then
        Level.AddTimer('GBOT', "OnGoUrinate", 60.0, true);
        
        AI.SetForm(AI.FindNPC('GS73'), "SF_Guard");
     end
     
     if (diff == 3) then
        local form_eq = { 'WHOT', 'WOFF', 'WFRN' };
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
     Level.StartTask(MissionText.Task_KillSpy,             'KIL1', "Levels\\Whitehead\\kill_spy_task.txt"  , true  , 2  );
     Level.StartTask(MissionText.Task_KillStandartenfurer, 'KIL2', "Levels\\Whitehead\\kill_stan_task.txt" , true  , 3  );
     Level.StartTask(MissionText.Task_Leave,               'LEAV', "Levels\\Whitehead\\leave_task.txt"     , true  , 0  );
     
     Level.StartTask(MissionText.Task_Information,         'INFO', "Levels\\Whitehead\\inform_task.txt"    , false , 0  );
  end

--------------------------------------------------------
-- Name: Level.RunLogic()
-- Desc:
--------------------------------------------------------
  function Level.RunLogic(completed)

     if ((Level.HasMissionTask('INFO') == false or Level.IsMissionTaskCompleted('INFO') == true) and   
         Level.HasMissionTask('BOJL') == false and 
         Level.InformationRecieved == true and
         AI.FindNPC('FREN') != nil) then

        Level.StartTask(MissionText.Task_Boxes, 'BOJL', "Levels\\Whitehead\\bojler_task.txt", false , 1 );
        
        return true;
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

     if (taskId == 'KIL1') then
        -- kill spy
       local spy = Level.FindActor('WSPY');
       if (spy != nil) then
          Actor.MarkAsTarget( spy, true );
       end
       
       Level.EnableLevelMark('KIL1', true);
        
     elseif (taskId == 'KIL2') then
     
--       local st = Level.FindActor('WHSH');
--       if (st != nil) then
--          Actor.MarkAsTarget( st, true );
--       end
       
       Level.EnableLevelMark('KIL2', true);
       
     elseif (taskId == 'INFO') then
     
       Level.EnableLevelMark('INFO', true);
       
       local actor = Level.FindActor('FREN');
       if (actor != nil) then
          Actor.MarkAsTarget( actor, true );
          Actor.SetMarkAsFriend( actor, true );
       end
       
     elseif (taskId == 'BOJL') then
      
       Level.EnableLevelMark('BOJL', true);
       Level.EnableLevelMark('BOJE', true);

       if (Level.BoxesAtVehicle >= 3) then
          Level.EnableLevelMark('BOJE', true);
          Level.SetMissionTaskFloor('BOJL', 0);
       else
          Level.EnableLevelMark('BOJL', true);       
       end
       
       if (Level.WasAtBlitz == false) then
          Level.EnableVehicleUse( 'BL04', false );
       end
       
     end

     Level.AddMissionTask( text, taskId, taskDscr, floor, isImportant );

     if (taskId == 'BOJL') then
        if (Level.CheckBojlerTask() == true) then
           Level.FinishTask('BOJL');
        end
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
     
     if (taskId == 'KIL1') then
        Level.EnableLevelMark('KIL1', false);
        Level.EnableLevelMark('DISH', false);
        Level.EnableLevelMark('CHAN', false);
        Level.EnableLevelMark('UPS1', false);
     elseif (taskId == 'KIL2') then
        Level.EnableLevelMark('KIL2', false);
        Level.EnableLevelMark('CINE', false);
        Level.EnableLevelMark('CRAN', false);
        Level.EnableLevelMark('UPS3', false);
        Level.EnableLevelMark('SER1', false);
        
     elseif (taskId == 'INFO') then
        
        Level.EnableLevelMark('INFO', false);

        if (AI.FindNPC('FREN') != nil) then        
           if (Level.SniperMarkDisabled == false and Level.GetDifficulty() <= 1) then
              Level.EnableLevelMark('SNIP', true);
           end
        
           if (Level.CinemaStarted == false) then
              Level.EnableLevelMark('CINE', true);
           end
        
           if (AI.GetPlayerForm() == nil and Level.GetDifficulty() <= 1) then
              Level.EnableLevelMark('FORM', true);
           end
        
           Level.InformationRecieved = true;
        
           if (Level.GetDifficulty() == 0) then
              if (AI.GetPlayerForm() != "Officer") then
                 Level.EnableLevelMark('FORO', true);
              end
          
              if (AI.GetPlayerForm() != "Waiter") then
                 Level.EnableLevelMark('FORW', true);
              end
           end
       
           if (Level.GetDifficulty() <= 1) then
              Level.EnableLevelMark('DISH', true);
           end
        
           AI.SetJob(AI.FindNPC('FREN'), "wait");
        end
        
     elseif (taskId == 'BOJL') then
      
       Level.EnableLevelMark('BOJL', false);
       Level.EnableLevelMark('BOJE', false);
       
       Level.EnableVehicleUse('BL04', false);
     end

     if (completed != false) then
        Level.RunLogic(taskId);
        Level.CompleteMissionTask(taskId);

        Level.PlayMenuSound("task_finish");
     else
        Level.RemoveMissionTask(taskId);
        
        if (Level.RunLogic(nil) == true) then
           Level.AddLargeMessage( MissionText.Message_TaskChanged, 10.0, 255, 255, 255 );
           Level.PlayMenuSound("task_finish");
        end
     end     
  end

--------------------------------------------------------
-- Name: Level.OnCheckSpySay()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckSpySay()
     local french = AI.FindNPC('FREN');
        
     if (french == nil) then
        Level.RemoveTimer('CSPS');
        return;
     end
        
     if (AI.IsScriptTask(french) == false and
         AI.IsImportantTask(french) == false and
         Level.InformationRecieved == false and
         Level.IsMissionTaskCompleted('INFO') == false and
         Level.HasMissionTask('INFO') and
         AI.HasPlayerInfo(french, "see")) then
            
         Level.ClearSmallMessages();
         Level.StartSpySpeaking();
         Level.RemoveTimer('CSPS');
     end
  end

--------------------------------------------------------
-- Name: Level.OnCheckSpyInvite()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckSpyInvite()
     local french = AI.FindNPC('FREN');
     
     if (french == nil) then
        Level.RemoveTimer('CSPI');
        return;
     end
     
     if (AI.IsScriptTask(french) == false and
         AI.IsImportantTask(french) == false and
         Level.InformationRecieved == false and
         Level.IsMissionTaskCompleted('INFO') == false and
         Level.HasMissionTask('INFO') and
         AI.HasPlayerInfo(french, "see") and
         Level.AtSmallFrenchTrigger == false) then
            
         Level.StartSpyInvite();
         Level.RemoveTimer('CSPI');
     end
  end

--------------------------------------------------------
-- Name: Level.OnEnterTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )
     AI.Debug(nil, "Level.OnEnterTriggerArea" .. trgname, "");
     
     if (trgname == "ChangeBotTrigger_01" or
         trgname == "ChangeBotTrigger_02" or
         trgname == "ChangeBotTrigger_03" or
         trgname == "ChangeBotTrigger_04") then

        if (trgname != "ChangeBotTrigger_04") then
           if (Level.IsMissionTaskCompleted('KIL2') == false) then
              local st = Level.FindActor('WHSH');
              if (st != nil) then
                 Actor.MarkAsTarget( st, true );
              end
           end
        end
        
        if (Level.AlertCalled == false and Level.WasAtHouse == false) then
           AI.SetJob(AI.FindNPC('WSPY'), "walk");
        end
        
        Level.WasAtHouse = true;
        
        Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
        
     elseif (trgname == "Shed2Trigger") then
     
        AI.EnableZone("global_SniperForm", false);
        
     elseif (trgname == "CinemaArea" ) then
                 
       if ( Level.CinemaOn == true ) then
         if ( Level.GetLightParam("Cinema", "video.play" ) == false ) then
            Level.SetLightParam("Cinema", "video.play" , true );             
         end;
       end;
       
       Level.CinemaArea = true;
                   
     elseif (trgname == "CinemaSync" ) then
     
        Level.SetLightParam("Cinema", "sound.sync" );
                  
     elseif (trgname == "MessageVehicleTrigger") then
     
        if (Level.VehicleUseEnabled == false) then
           Level.ClearSmallMessages();
           Level.AddSmallMessage( MissionText.Message_BlitzIsNotLoaded, 5.0, 255, 255, 0);
        else
           Level.UnregisterTrigger( Level.FindTrigger( "MessageVehicleTrigger" ) );
        end
        
     elseif (trgname == "BojlerTrigger") then
      
        Level.SetDoorLockedId('BLDR', false);
     
     elseif (trgname == "OrderWorkersTrigger") then
     
        if (Level.VehicleExploded == false) then
           Level.OrderWorkersTrigger = true;
           Level.AddTimer('OWTG', "OnCheckOrderWorkers", 1.0, true);
        end
     
     elseif (trgname == "NearVehicleTrigger") then
        Level.NearVehicleTrigger = true;
     
     elseif (trgname == "CheckFrenchTrigger") then
     
        Level.AddTimer( 'CSPI', "OnCheckSpyInvite", 1.0, true );
        
     elseif (trgname == "BojlerReturnPlaceTrigger") then
        
        Level.BojlerReturnPlaceTrigger = true;
        
        if (Level.PlayerAtBlitz == true) then
           Level.BoxesCompleted = Level.BoxesCompleted + Level.BoxesAtVehicle;
           if (Level.CheckBojlerTask() == false) then
              Level.BoxesCompleted = Level.BoxesCompleted - Level.BoxesAtVehicle;
           end
        end        
        
     elseif (trgname == "SayFrenchTrigger") then
     
        Level.AtSmallFrenchTrigger = true;
        Level.AddTimer( 'CSPS', "OnCheckSpySay", 1.0, true );
     
     elseif (trgname == "DisableWaiterZone") then
     
        if (AI.GetPlayerForm() == "Waiter" and Level.PlayerHasDish == true) then
           Level.WaiterEnteredSpyRoom = true;
        end
     
        Level.UnregisterTrigger( Level.FindTrigger( "DisableWaiterZone" ) );
        
     elseif (trgname == "CheckOfficiantTrigger") then
     
        -- check spy in room:
        local room_1 = Level.GetRoom('VA56');
        local room_2 = Level.GetRoom('VA54');
        
        local spy   = AI.FindNPC('WSPY');
        local guard = AI.FindNPC('GS41');
        
        local spyRoom = AI.GetRoom(spy);
        
        local door = Level.FindDoor('DR23');
        
        if (spy != nil and 
            AI.IsDefault(guard) == true and
            AI.GetPlayerForm() == "Waiter" and
            Level.PlayerHasDish == true and
            (Level.WaiterEnteredSpyRoom == false or Level.IsDoorLocked(door) == true) and
            AI.HasPlayerInfo(guard, "knowposition")) then
            
            
            if (spyRoom != room_1 and 
                spyRoom != room_2 and
                door != nil and
                Level.IsDoorLocked(door) == true) then

                Level.RunAnchorJob2(guard, 'AD10', 'A218', false);
            
            elseif (spyRoom == room_2) then
            
                Level.RunAnchorJob(guard, 'A217', false);
                
            end
           
        end
        
        
     elseif (trgname == "SwitchGuardJobTrigger_01" or 
             trgname == "SwitchGuardJobTrigger_02" or
             trgname == "SwitchGuardJobTrigger_03") then
             
        -- TODO... Use dpc system...
        if (Level.AlertCalled == true or 
            Level.GetDifficulty() == 2) then
           -- TODO. Save and load Level.NewGuardJob;
           -- TODO. Add dpc
           -- Level.NewGuardJob = trgcmd;
           AI.SetJob(AI.FindNPC('GS41'), trgcmd);
        end
        
     elseif (trgname == "LeaveTrigger") then
        
        if (Level.IsMissionTaskCompleted('KIL1') == true and
            Level.IsMissionTaskCompleted('KIL2') == true) then
            
           Level.FinishTask('LEAV');
        end
         
     end
  end
  
--------------------------------------------------------
-- Name: Level.OnLeaveTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )
     AI.Debug(nil, "Level.OnLeaveTriggerArea" .. trgname, "");
     
     if (trgname == "SayFrenchTrigger") then
        Level.RemoveTimer('CSPS');
        Level.AtSmallFrenchTrigger = false;
     elseif (trgname == "CheckFrenchTrigger") then
        Level.RemoveTimer('CSPI');
     elseif (trgname == "NearVehicleTrigger") then
        Level.NearVehicleTrigger = false;
     elseif (trgname == "OrderWorkersTrigger") then
        Level.OrderWorkersTrigger = false;
        Level.AddTimer('OWTG', "OnCheckOrderWorkers", 1.0, true);
        --Level.RemovePlayerAction('OWTG');
        Level.SafeRemoveLevelPlayerAction('OWTG');
     elseif (trgname == "BojlerReturnPlaceTrigger") then
        Level.BojlerReturnPlaceTrigger = false;
     elseif (trgname == "Shed2Trigger") then
        AI.EnableZone("global_SniperForm", true);
             
     elseif (trgname == "CinemaArea" ) then
                  
        if ( Level.CinemaOn == true ) then          
          Level.SetLightParam("Cinema", "video.stop" );          
        end;
       
        Level.CinemaArea = false;
                    
     end;
  end

--------------------------------------------------------
-- Name: Level.IsVineTrigger()
-- Desc:
--------------------------------------------------------
  function Level.IsVineTrigger(id)
     for i in Level.VinePoissoned do
        if i == id then
           return true;
        end
     end
     
     return false;
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
       
     if ( id == "TractorStartTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_Traktor", 0, true, true, 'STRC') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 6.0 );
        
     elseif (id == "PutBoxTrigger") then
        
        if (Level.PlayerHasBox == true) then
           Actor.DropPickupItem(Level.GetPlayer(), true);
           return;
        end
        
     elseif ( id == "TurnOffLightTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_PressButton", 0, true, true, 'PRBT', false ) == false ) then
           return false;
        end;

     elseif (Level.IsVineTrigger(id) == true) then

        Level.UsePoissonTrigger = id;
        
        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'CSUP') == false ) then
           return false;        
        end;

        if (id != "VineTrigger_03") then
           if (AI.GetPlayerForm() != "Waiter") then        
              AI.StartDecamouflage( 80.0, 150.0, 5.0 );
           end
        else
           if (AI.GetPlayerForm() != "Waiter" and
               AI.GetPlayerForm() != "CinemaMan") then        
              AI.StartDecamouflage( 80.0, 150.0, 5.0 );
           end
        end
        
     elseif (id == "CloseCraneTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_CloseFuelCrane_Crouch", 2, true, true, 'CLCR') == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 5.0 );
        
        Level.CraneWasClosed = true;
        Level.EnableLevelMark('CINE', false);
        
     elseif (id == "CutRopeTrigger") then
     
        if ( Level.StartPlayerCustomAnim("Custom_RopeCut", 0, true, true, 'CTRP') == false ) then
           return false;        
        end;
        
        Level.ChandelierScript = true;
        Level.InstallDpc("Level.ChandelierScript = false", 10.0);
        Level.InstallDpc("Level.OnChandelierCutscene()", 1.5);
        
        AI.StartDecamouflage( 130.0, 250.0, 5.0 );
        
     elseif (id == "StartCinemaTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_Radio", 0, true, true, 'SCIN') == false ) then
           return false;        
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
        Level.EnableLevelMark( 'CINE', false );
        
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
-- Name: Level.PlayerHasPoisson()
-- Desc:
--------------------------------------------------------
  function Level.PlayerHasPoisson()
     return Actor.HasCustomEquipment( Level.GetPlayer(), 'POIS' ) == true;
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
     
     if ( id == "TractorStartTrigger" ) then
     
        if ( Level.TractorStarted == false ) then         
          return MissionText.Message_StartTractor;
        end;
        
     elseif (id == "PutBoxTrigger") then
        
        if ( Level.WasAtBlitz == false and
             Level.PlayerHasBox == true) then
             
           return MissionText.Message_PutToVehicle;
        end
     
     elseif (Level.IsVineTrigger(id) == true) then
     
        if (Level.VinePoissoned[id] == false and
            Level.PlayerHasPoisson() == true) then
           return MissionText.Message_PoissonVine;
        end
        
     elseif (id == "CloseCraneTrigger") then
     
        if (Level.WaterStoped == false) then
           return MissionText.Message_CloseCrane;
        end
        
     elseif (id == "CutRopeTrigger") then
     
        if (Level.RopeCutted == false and Level.PlayerHasKnife() == true) then
           return MissionText.Message_CutRope;
        end
        
     elseif (id == "StartCinemaTrigger") then

        if (Level.CinemaStarted == false) then
           return MissionText.Message_StartCinema;
        end
      
     elseif (id == "TurnOffLightTrigger") then
     
        if (Level.StorageLightOn == true) then
           return MissionText.Message_LightOff;
        end
        
     end
               
     return nil;
  end

  --------------------------------------------------------
  -- Name: Level.OnAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnAlert( alertGroupId )
     AI.Debug(npc, "Level.OnAlert", tostring(alertGroupId));
     
     for i = 0, 6 do
        AI.SetLocalAlert(i, true);
     end

     Level.AlarmMessage( MissionText.Message_Alarm );

     AI.AddAlertValue(2);
     
     AI.OnPlayerEnterZone("AlertZone", 'ALZN');

     if (Level.AlertCalled == false) then     
        AI.SetJob("alive", "alert");
        
        Level.AlertCalled = true;
     end
     
     if (Level.CinemaStarted == true) then
        AI.SetJob("alive", "cinema_alert");
     end 
     
     if (Level.SniperBody == true) then
        Level.OnSniperAlert();
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnFinishAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level.OnFinishAlert", tostring(alertGroupId));
       
     AI.SetLocalAlert( alertGroupId, false );
     
     for i = 1, 6, 1 do
        if (AI.IsLocalAlert( i ) == true) then
           return;
        end
     end
     
     for i = 0, 6 do
        AI.SetLocalAlert( i, false );
     end
     
     --Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 255, 0);
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
     
     if (zone == "Shed") then
        Level.AddSmallMessage( MissionText.Message_StopMove_GetOut, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
     elseif (zone == "FirstFloor") then
        
        if (playerForm == "Worker") then
            Level.AddSmallMessage( MissionText.Message_StopMove_OnlySklad, 5.0, 175, 175, 175 );
        else
            Level.AddSmallMessage( MissionText.Message_StopMove_NoAccess, 5.0, 175, 175, 175 );
        end
        
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_16");
        
     elseif (zone == "SecondFloor" or 
             zone == "Stairs") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_NoAccess, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_04");
        
     elseif (zone == "ThirdFloor" or 
             zone == "ThirdFloor_MainStair") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_OnlyOfficers, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_13");
        
     elseif (zone == "SpyRoom") then
     
        if (npcForm == "Spy") then
           Level.AddSmallMessage( MissionText.Message_StopMove_ThisIsMyRoom, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "male_ger_stopmove_stopmove_14");
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_LeaveRoom, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "male_ger_stopmove_stopmove_05");
        end
        
     elseif (zone == "Library") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_IMustStopYou, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
     elseif (zone == "CinemaRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_FilmIsNotStarted, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
     elseif (zone == "Roof") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_LeaveRoof, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
     
     elseif (zone == "Bathroom" or
             zone == "Bathroom_near") then
     
        if (npcForm == "SF_Guard") then
           Level.AddSmallMessage( MissionText.Message_StopMove_Bathroom, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "~3male_ger_script_script_37");
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_Bathroom_Rihter, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "@v_stop_move");
        end
        
     elseif (zone == "MainHouse_near") then
     
        if (npcForm != "Sniper") then
           Level.AddSmallMessage( MissionText.Message_StopMove_MainHouse, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "@v_stop_move");
        else
           Level.AddSmallMessage( MissionText.Message_StopMove_Sniper, 5.0, 175, 175, 175 );
           AI.HandleVoice(npc, "@v_stop_move");
        end
     
     elseif (zone == "KitchenOutdoor_near") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_Kitchen, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_05");
        
     elseif (zone == "SpyRoom_near") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_IMustStopYou, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
     elseif (zone == "WaiterZone") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_WhereIsEat, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
        -- Enable breakfast mark
        if (Level.FirstDishTry == true and
            Level.PlayerHasDish == false) then
            
            Level.EnableLevelMark('DISH', true);
            
        end
     
     elseif (zone == "OfficerTacticRoom_near") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Officer, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "male_ger_stopmove_stopmove_20");
     
     else
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Leave, 5.0, 175, 175, 175 );
        AI.HandleVoice(npc, "@v_stop_move");
        
     end
  end
 
  --------------------------------------------------------
  -- Name: Level.TurnStorageLight()
  -- Desc:
  --------------------------------------------------------
  function Level.TurnStorageLight( onOff )
  
    Level.EnableLight( 'KLIT' , onOff );
    Level.EnableFlare( 'KFL2' , onOff );
    Level.EnableFlare( 'KFL1' , onOff );
          
    local brushRoom = Level.FindWorldObject( 'STRG' );
    if ( brushRoom != nil ) then
      
         if ( onOff == true ) then
            Level.SetWorldObjectLightmap( brushRoom, 'KLIT' );         
         else
            Level.SetWorldObjectLightmap( brushRoom, 'KOFF' );         
         end;
      
    end;
      
  end
 
  --------------------------------------------------------
  -- Name: Level.OnAnchor_LightOn()
  -- Desc:
  --------------------------------------------------------
  function Level.OnAnchor_LightOn()
     
     Level.TurnStorageLight( true );     
     Level.StorageLightOn = true;
     
  end

  --------------------------------------------------------
  -- Name: Level.OnAnchor_LightThink()
  -- Desc:
  --------------------------------------------------------
  function Level.OnAnchor_LightThink()
     if (Level.StorageLightOn == false) then
        local man = AI.FindNPC('CIMN');
        AI.TaskCommand(man, "current_anchor_completed", "", "");
        Level.RunAnchorJob(man, 'A219', true);        
     end
  end
  
  --------------------------------------------------------
  -- Name: Level.OnStartPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStartPlayerCustomAnim( animId )
  
     if ( animId == 'CLCR' ) then
       Level.PlayCustomAnimSound( 'OilStop' );
     elseif (animId == 'PRBT' ) then     
       Level.InstallDpc("Level.PlayCustomSound('SCRbutton')", 0.5);     
     elseif ( animId == 'STRC' ) then
       Level.EnableWorldObjectAnim( Level.FindWorldObject('TRU4'), true, 0.0, 143.0, 30.0 );
       Level.TraktorRuchka = true;    
       Level.PlayCustomAnimSound( 'TraktorStart' ); 
     end
     
  end;
    
  --------------------------------------------------------
  -- Name: Level.OnFinishPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishPlayerCustomAnim(animName, animUniqueId, boolBreaked )
 
     if ( animUniqueId == 'STRC' ) then
        Level.TraktorRuchka = false;
        Level.EnableWorldObjectAnim( Level.FindWorldObject('TRU4'), false );
     end;
     
     if ( boolBreaked == true ) then
        
        Level.OnBreakActionTrigger();
        AI.StopDecamouflage();
        Level.StopAllCustomAnimSounds();

        return;
     end;

     if (animUniqueId == 'STRC') then
        Level.EnableSound("TraktorSound", true);
        
        local actors  = { 'GS01', 'GS02', 'GS03' };
        local anchors = { 'AN13', 'AN14', 'AN15' };
        
        for i in actors do
           Level.RunAnchorJob(AI.FindNPC(actors[i]), anchors[i], false);
        end
        
        AI.HandleVoice( AI.FindNPC('GS01'), AI.VOICE_CUSTOM, "What_is_it_male_Guarder");
        
        Level.TractorStarted = true;
        Level.EnableLevelMark('TRAK', false);
        
        if (Level.GetDifficulty() == 0) then
           Level.HelpMessage( MissionText.Message_TraktorHelp );
        end
        
        AI.AddSoundFader('TRAK', "", -910, 16, 723, 150.0, 800.0);
        
     elseif (animUniqueId == 'PRBT') then
     
        Level.TurnStorageLight(false);        
        Level.StorageLightOn = false;
        
     elseif (animUniqueId == 'CSUP') then
     
        if (Level.UsePoissonTrigger != "") then
           Level.VinePoissoned[Level.UsePoissonTrigger] = true;
        end
        
     elseif (animUniqueId == 'CLCR') then
     
        Level.WaterStoped = true;
        
        Level.EnableLevelMark('CRAN', false);
        
        if (Level.WaterCutsceneShowed == false) then
           Level.WaterCutsceneShowed = true;
           Level.InstallDpc("Level.ShowNoWaterCutscene()", 1.0);
        end
        
     elseif (animUniqueId == 'CTRP') then
     
        Level.StartChandelierScript();
        
     elseif (animUniqueId == 'SCIN') then
     
        Level.PlayCustomSound('SCRbutton01');
             
        Level.StartFilm();
        
        
     end

               
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
  -- Name: Level.ShowNoWaterCutscene()
  -- Desc:
  --------------------------------------------------------
  function Level.ShowNoWaterCutscene()
     local npc = AI.FindNPC('WHSH');
     if (npc == nil) then
        return;
     end
     
     if (Level.CinemaStarted == true) then
        return;
     end
     
     local room    = Level.GetRoom('VA18');
     local npcRoom = AI.GetRoom(npc);
     
     if (npcRoom == room) then
        return;
     end
     
     Level.BeginCutScene( "NoWater", "Levels\\Whitehead\\nowater.scm", "", 3.0, { 3, 40.0, 60.0, 150.0, 255 }  );
  end
 
  --------------------------------------------------------
  -- Name: Level.OnFinishCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishCutScene( cutscene, boolBreaked, cutsceneName )
      CutScene.Activate(nil);
      
      if (cutsceneName == "Spy" and boolBreaked == true)then
         Level.FinishTask('INFO', false);
         AI.HandleVoice( AI.FindNPC('FREN'), "" );
      end
  end;
      
--------------------- Music and other funny stuff ----------------------------

----------------------- Bot idles and ai scripts -----------------------------


--------------------------------------------------------
-- Name: Level.StartFilm()
-- Desc:
--------------------------------------------------------
function Level.StartFilm()
   -- Activate projector:
   
   if ( Level.CinemaOn == false ) then
     Level.StartCinema();
   end;
      
   -- Change npc jobs
   if (Level.AlertCalled == false) then
      AI.SetJob("alive", "cinema");
      
      if (Level.GetDifficulty() == 2) then
         AI.SetJob("alive", "cinema_hard");
      end      
   else
      AI.SetJob("alive", "cinema");
      
      if (Level.GetDifficulty() == 2) then
         AI.SetJob("alive", "cinema_hard");
      end      
      
      AI.SetJob("alive", "cinema_alert");
   end
   
   Level.CinemaStarted = true;
   
   Level.RemoveTimer('OFTM');
      
   Level.InstallDpc("Level.RunAnchorJob(AI.FindNPC('GO15'), 'A178', false)", 360.0);
   
   AI.AddSoundFader('CINE', "", -1405, 90, 1594, 100.0, 150.0);
   
   -- Open door:
   local door = Level.FindDoor('DR27');
   if (door != nil) then
      Level.SetDoorLocked( door, false, true );
   end
end

--------------------------------------------------------
-- Name: Level.StartChandelierScript()
-- Desc:
--------------------------------------------------------
function Level.StartChandelierScript()

   Level.RopeCutted = true;
   
   Level.EnableLevelMark('CHAN', false);

   -- enable lustra physics
   local lustra = Level.FindWorldObject('LSTR');
   if (lustra != nil) then
      Level.EnableWorldObjectPhysics( lustra );
   end
   
   -- hide ropes
   local ropes = { 'ROPE' };
   for i in ropes do
      Level.HideWorldObject(ropes[i]);
   end
   
   -- Install event dpc
   Level.SpyWasAlive = (AI.FindNPC('WSPY') != nil);   
   
   local distance = 50.0;
   local gravity = 90.0;
   
   Level.InstallDpc("Level.OnChandelierFall()", sqrt(distance/gravity * 2.0));
end

--------------------------------------------------------
-- Name: Level.OnChandelierFall()
-- Desc:
--------------------------------------------------------
function Level.OnChandelierFall() 
   -- Enable sound
   if ((AI.FindNPC('WSPY') == nil) and (Level.SpyWasAlive == true)) then
      -- TODO... Start kill sound...
   end
   
   local npc = AI.FindNPC('WSPY');
   if (npc != nil) then
      local pos = Level.GetNpcPosition(npc);
      local bbox = { -1064.2456, -19.5932, 1487.3961, 
                     -1044.2456, 0.4069, 1502.3961 };
                       
      if (Level.IsAtBBox(bbox, pos) == true) then
         AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
         AI.KillNPC( npc, 0.0 );
      end
   end
   
   -- Add dynamic obstacle:
   AI.AddScriptDynamicObstacle( 'LUST', -1063.5862, -26.3875, 1485.2739,
                                        -1032.1351, -4.5055, 1503.6160 );
   
   -- TODO. Start fall sound:
   Level.PlayCustomSound('LustraCrash');
   
   local actors  = { 'GS30', 'GS33', 'GS34', 'GS35', 'HW01', 'GS39', 
                     'GS42', 'GS45', 'GS46', 'GS43', 'GS46', 'GS50', 'GS51' };
   local anchors = { 'A163', 'A159', 'A166', 'A169', 'A160', 'A164', 
                     'A170', 'A171', 'A172', 'A173', 'A176', 'A175', 'A174' };
   
   for i in actors do
      
      local actor = AI.FindNPC(actors[i]);
      Level.RunAnchorJob_Run( actor, anchors[i], false );
      
   end
end

--------------------------------------------------------
-- Name: Level.OnChandelierCutscene()
-- Desc:
--------------------------------------------------------
function Level.OnChandelierCutscene()
   Level.BeginCutScene( "Chandelier", "Levels\\Whitehead\\lustra.scm", "", 3.5, { 3, 40.0, 60.0, 150.0, 255 }  );
end

--------------------------------------------------------
-- Name: Level.OnAnchor_GirlDance()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_GirlDance()
   local officer = AI.FindNPC('GO06');
   if (Level.IsUsingAnchor(officer, 'AN88') == true) then
      Level.RunAnchorJob(officer, 'AN89', false);
      
      local tetka = AI.FindNPC('TC02');
      
      AI.TaskCommand(tetka, "current_anchor_completed", "", "");
      Level.RunAnchorJob(tetka, 'AN90', false);
   end
end

--------------------------------------------------------
-- Name: Level.OnGirlChangeJobTrigger()
-- Desc:
--------------------------------------------------------
function Level.OnTrigger_GirlChangeJob()
   Level.InstallDpc("Level.DoGirlChangeJob()", 50.0);
end

--------------------------------------------------------
-- Name: Level.DoGirlChangeJob()
-- Desc:
--------------------------------------------------------
function Level.DoGirlChangeJob()
   AI.SetJob(AI.FindNPC('TC07'), "stand");
   AI.SetJob(AI.FindNPC('GS55'), "stand");
   
   if (Level.GetDifficulty() == 2) then
      AI.SetJob(AI.FindNPC('GS55'), "stand_hard");
   end
   
   Level.RunAnchorJob_Run(AI.FindNPC('TC07'), 'A106', true);
end

--------------------------------------------------------
-- Name: Level.OnTrigger_RunGirl()
-- Desc:
--------------------------------------------------------
function Level.OnTrigger_RunGirl()
   AI.SetJob(AI.FindNPC('TC08'), "cry");
   Level.RunAnchorJob2_Run(AI.FindNPC('TC08'), 'A109', 'A108', true);
end

--------------------------------------------------------
-- Name: Level.OnTrigger_RunKeyMaster()
-- Desc:
--------------------------------------------------------
function Level.OnTrigger_RunKeyMaster()
   
   if (Level.GetDifficulty() <= 1) then
      AI.SetJob(AI.FindNPC('CIMN'), "move");
   else
      AI.SetJob(AI.FindNPC('CIMN'), "move_old");
   end
   
   Level.RunAnchorJob(AI.FindNPC('CIMN'), 'A110', true);
end

--------------------------------------------------------
-- Name: Level.OnOfficerTimer()
-- Desc:
--------------------------------------------------------
function Level.OnOfficerTimer()
   if (Level.FilmStarted == false) then
      Level.RunAnchorJob(AI.FindNPC('GO24'), 'A130', false);
      Level.RunAnchorJob(AI.FindNPC('GO25'), 'A131', false);
      
      AI.HandleVoice(AI.FindNPC('GO24'), "male_ger_casual_ik");
      Level.InstallDpc("AI.HandleVoice(AI.FindNPC('GO25'), 'male_ger_casual_ik')", 1.0);
   end
end

--------------------------------------------------------
-- Name: Level.FastHack()
-- Desc:
--------------------------------------------------------
function Level.FastHack()
   Level.RunAnchorJob(AI.FindNPC('GS65'), 'A178', true);
end

--------------------------------------------------------
-- Name: Level.OnAnchor_NearBathroom()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_NearBathroom()
   if (Level.WaterStoped == true and
       Level.GuardSend == true) then
      
      return;
   end
   
   local prop = {};
   prop["CustomString_1"] = 'A141';

   AI.RunScriptTask(AI.FindNPC('GS65'), "scripts:job\\AnchorJob_safe_firepolatt.lua", AI.LOGIC_DEFAULT, Level.ToCustomParams(prop));
end

--------------------------------------------------------
-- Name: Level.OnAnchor_AnalyzeBathroom()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AnalyzeBathroom()
   if (Level.WaterStoped == true) then  
      return;
   end
   
   if (Level.GetDifficulty() != 2) then
      Level.RunAnchorJob2(AI.FindNPC('GS65'), 'A237', 'A141', true);
   else
      Level.RunAnchorJob3(AI.FindNPC('GS65'), 'A258', 'A259', 'A141', true);
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_WaterOk()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_WaterOk()
   Level.GuardSend = false;
   AI.FailTask( AI.FindNPC('WHSH'), AI.TASK_SCRIPT_DEFAULT );
end

--------------------------------------------------------
-- Name: Level.OnAnchor_UseWater()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_UseWater()
   if (Level.WaterStoped == true) then
      if (Level.GuardSend == false) then
         Level.RunAnchorJob2_Run(AI.FindNPC('WHSH'), 'A143', 'A144', true);
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_SitWait()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_SitWait()
   if (AI.FindNPC('GS65') == nil) then
      Level.StartShCheckRoofJob();
   end
end

--------------------------------------------------------
-- Name: Level.StartShCheckRoofJob()
-- Desc:
--------------------------------------------------------
function Level.StartShCheckRoofJob()
  if (Level.RoofJobCompleted == true) then
     return;
  end
  
  Level.RunAnchorJob(AI.FindNPC('WHSH'), 'A215', true);
  Level.RoofJobCompleted = true;
end

--------------------------------------------------------
-- Name: Level.OnChangeWaterCamera()
-- Desc:
--------------------------------------------------------
function Level.OnChangeWaterCamera()
   Level.ChangeCamCutScene( "water", "Levels\\Whitehead\\water_2.scm", { 3, 80.0, 40.0, 80.0, 255 } );
end

--------------------------------------------------------
-- Name: Level.OnAnchorSetup_UseWater()
-- Desc:
--------------------------------------------------------
function Level.OnAnchorSetup_UseWater()
   if (Level.WaterStoped == true and Level.GuardSend == false) then
      if (AI.FindNPC('GS65') != nil) then
         Level.BeginCutScene( "water", "Levels\\Whitehead\\water_1.scm", "", 17.0, { 1, 0.0, 60.0, 90.0, 255 } );
         Level.InstallDpc("Level.OnChangeWaterCamera()", 4.0);
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnAnchor_RepairWater()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_RepairWater()
   Level.WaterStoped = false;
end

--------------------------------------------------------
-- Name: Level.OnAnchor_EnterBathroom()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_EnterBathroom()
   AI.EnableZone("Bathroom", true);
   AI.EnableZone("Bathroom_near", true);
end

--------------------------------------------------------
-- Name: Level.CheckAccidentState()
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

--------------------------------------------------------
-- Name: Level.ShowSniperCutscene()
-- Desc:
--------------------------------------------------------
function Level.ShowSniperCutscene()
   if (Level.WasAtHouse == true) then
      return;
   end
   
   if (Level.IsMissionTaskCompleted('KIL1') == true) then
      return;
   end
   
   if (AI.IsDefault(AI.FindNPC('WSPY')) == false) then
      return;
   end
   
   if (Level.InformationRecieved == false) then
      return;
   end
      
   Level.BeginCutScene( "sniper", "Levels\\Whitehead\\sniper_1.scm", "", 5.0, { 1, 0.0, 1500.0, 2000.0, 255 } );
   Level.InstallDpc("Level.OnChangeSniperCamera()", 1.5);   
end

--------------------------------------------------------
-- Name: Level.OnChangeWaterCamera()
-- Desc:
--------------------------------------------------------
function Level.OnChangeSniperCamera()
   Level.ChangeCamCutScene( "sniper", "Levels\\Whitehead\\sniper_2.scm", { 1, 0.0, 80.0, 150.0 , 255 } );
end

---------------------------------- Callbacks ---------------------------------
  
--------------------------------------------------------
-- Name: Level.OnKillStandartenfurer()
-- Desc:
--------------------------------------------------------
function Level.OnKillStandartenfurer()
   Level.FinishTask('KIL2');
end

--------------------------------------------------------
-- Name: Level.OnKillSpy()
-- Desc:
--------------------------------------------------------
function Level.OnKillSpy()
   if (Level.ChandelierScript == false) then
       Level.FinishTask('KIL1');
   else
       Level.InstallDpc("Level.FinishTask('KIL1')", 1.5);
   end
end
  
--------------------------------------------------------
-- Name: Level.OnInventoryChanged()
-- Desc:
--------------------------------------------------------
function Level.OnInventoryChanged()
   Level.UpdateSniperZone();
   
   if (Level.PlayerHasPoisson() == true) then
      Level.EnableLevelMark('POIS', false);
   end
end

--------------------------------------------------------
-- Name: Level.OnUpdateSniperZone()
-- Desc:
--------------------------------------------------------
function Level.OnUpdateSniperZone()
   Level.UpdateSniperZone();
end

--------------------------------------------------------
-- Name: Level.NeedAddToVehicle()
-- Desc:
--------------------------------------------------------
function Level.NeedAddToVehicle()
   return (Level.BoxesCompleted + Level.BoxesAtVehicle) < 3;
end

--------------------------------------------------------
-- Name: Level.AddToVehicle()
-- Desc:
--------------------------------------------------------
function Level.AddToVehicle( objectId, object, actor )
   --if (Level.NeedAddToVehicle() == false) then
   --   return;
   --end
   if (Level.VehicleExploded == true) then
      return false;
   end
   
   if (Level.BoxesAtVehicle > 6) then
      return false;
   end
   
   local bNotify = (Level.NeedAddToVehicle() == true);

   local pos = {};
   pos[0] = { x = -1332.87, y = -5.63, z = 1754.03 };
   pos[1] = { x = -1331.47, y = -5.63, z = 1747.60 };
   pos[2] = { x = -1330.89, y = -5.63, z = 1741.23 };
   pos[3] = { x = -1332.93, y =  0.02, z = 1754.17 };
   pos[4] = { x = -1331.61, y =  0.02, z = 1748.01 };
   pos[5] = { x = -1330.89, y =  0.02, z = 1741.23 };

   local itemNode  = Entity.GetNode( object );
   local x,y,z = node.GetPosition( itemNode );
   
   node.SetPosition( itemNode, pos[Level.BoxesAtVehicle].x, 
                               pos[Level.BoxesAtVehicle].y, 
                               pos[Level.BoxesAtVehicle].z );
   node.SetRotation( itemNode, 0.0, -8.76 + Random(4) * 90.0, 0.0 );
   
   node.InvalidateTransforms( itemNode, true );
   
   Level.EnableEquipmentNotify( object, "drop", false );
   Level.EnableEquipmentNotify( object, "pickup", false );
             
   Level.EnableItemPickup( object, false );
   
   Level.BoxesAtVehicle = Level.BoxesAtVehicle + 1;
   
   Level.ConnectToVehicle('BL04', object);
   
   if ((Level.NeedAddToVehicle() == false) and (bNotify == true)) then
      Level.AddSmallMessage( MissionText.Message_BlitzLoaded, 10.0, 255, 0, 0);
      Level.EnableVehicleUse( 'BL04', true);
      Level.VehicleUseEnabled = true;
      
      if (Level.HasMissionTask('BOJL') == true and
          Level.IsMissionTaskCompleted('BOJL') == false) then
          
          Level.EnableLevelMark('BOJL', false);
          Level.EnableLevelMark('BOJE', true);
          
          Level.SetMissionTaskFloor('BOJL', 0);
      end
   end
   
   return true;
end

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyPickupItem( objectId, object, actor )
   if (objectId == 'LGSL') then
      if (actor == Level.GetPlayer()) then
         Level.GotLuger = true;
      end
      
      return;
   end

   if (objectId == 'DISH' and (actor == Level.GetPlayer())) then
   
      if (Level.FirstDishTry == true) then
         Level.FirstDishTry = false;
         
         if (AI.GetPlayerForm() != "Waiter") then
            AI.StartDecamouflage( 50.0, 100.0, 2.0 );
         end
         
         Level.EnableLevelMark('DISH', false);
      end
      
      AI.EnableZone("WaiterZone", false);
      
      Level.PlayerHasDish = true;
   
   elseif (Level.GetIndex( Level.PlayerBoxes, objectId ) != -1) then
      
      if (actor == Level.GetPlayer()) then
      
         AI.EnableZone("global_box", true);
         Level.PlayerHasBox = true;
         
         Level.PlayerBoxesMoved[objectId] = true;
         
      end
   
   elseif (Level.GetIndex( Level.WorkerBoxes, objectId ) != -1 ) then
   
      local npc = AI.FromActor(actor);
      if (npc != nil) then
         local id = AI.GetUID( npc );
         if (id != nil) then
            Level.CheckBotBox[id] = nil;
         end
      end
   
   elseif( objectId == 'WHOT' ) then
      
      Level.EnableNotifyPickup( object, false );
      Level.EnableLevelMark( 'FORW', false );
               
   end;
end

--------------------------------------------------------
-- Name: Level.CheckBojlerTask()
-- Desc:
--------------------------------------------------------
function Level.CheckBojlerTask()
   if (Level.BoxesCompleted >= 3) then
   
     if (Level.HasMissionTask('BOJL') == true and
         Level.IsMissionTaskCompleted('BOJL') == false) then
         
        local fren = AI.FindNPC('FREN');
        if (AI.IsImportantTask(fren) == false) then
           Level.RunAnchorJob( fren, 'A238', true );
        end
     
        Level.FinishTask('BOJL');
        return true;
     end
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.OnNotifyDropItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyDropItem( objectId, object, actor )
   if (objectId == 'LGSL') then  
      return;
   end
   
   if (objectId == 'DISH' and (actor == Level.GetPlayer())) then
      
      if (Level.WaiterEnteredSpyRoom == false) then
         AI.EnableZone("WaiterZone", true);
      end
      
      Level.PlayerHasDish = false;      
   end

   if (Level.GetIndex( Level.PlayerBoxes, objectId ) != -1) then
      
      if (actor == Level.GetPlayer()) then
      
         Level.PlayerHasBox = false;
         AI.EnableZone("global_box", false);
         
         -- If near vehicle...
         if (Level.NearVehicleTrigger == true) then
            Level.AddToVehicle( objectId, object, actor );
            
            Level.RemovePlayerAction('DROP');
         
         elseif (Level.BojlerReturnPlaceTrigger == true) then
         
            local notify = Level.NeedAddToVehicle() == true;
            Level.BoxesCompleted = Level.BoxesCompleted + 1;
            
            Level.EnableEquipmentNotify( object, "drop", false );
            Level.EnableEquipmentNotify( object, "pickup", false );
             
            Level.EnableItemPickup( object, false );
      
            if (Level.NeedAddToVehicle() == false and notify == true) then
               Level.EnableVehicleUse( 'BL04', true);
               Level.VehicleUseEnabled = true;
               
               if (Level.HasMissionTask('BOJL') == true and
                  Level.IsMissionTaskCompleted('BOJL') == false) then
          
                  Level.EnableLevelMark('BOJL', false);
                  Level.EnableLevelMark('BOJE', true);
          
                  Level.SetMissionTaskFloor('BOJL', 0);
               end               
            end
                  
            Level.CheckBojlerTask();            
         end
       
      end
   end
   
   if (Level.GetIndex( Level.WorkerBoxes, objectId ) != -1 ) then
   
      local npc = AI.FromActor(actor);
      if (npc != nil) then

         if (Level.WasAtBlitz == false) then
            local anchors = { 'A229', 'A230', 'A231' };
            
            for i in anchors do
               if (Level.IsUsingAnchor(npc, anchors[i]) == true) then
                  Level.AddToVehicle( objectId, object, actor );
                  
                  local vehicle = Level.FindVehicle('BL04');
                  if (vehicle != nil and Level.HasHiddenBodysInVehicle(vehicle) == true) then
                     AI.SetupAlert(npc);
                     AI.DirtyChangeAttention(npc, AI.ATTENTION_ALARM, false);
                  end
                  
                  return;
               end
            end
         end
         
         Level.AddToArray(Level.PlayerBoxes, objectId);
         Level.EnableItemPickup( object, true );
      end
      
   end
end

--------------------------------------------------------
-- Name: Level.OnNearFrenchWorkers()
-- Desc:
--------------------------------------------------------
function Level.OnNearFrenchWorkers()
   local french = { 'FW01', 'FW02', 'FW03' };
   for i in french do
      AI.SetJob(AI.FindNPC(french[i]), "job1");
   end
end

--------------------------------------------------------
-- Name: Level.NeedEnableMark()
-- Desc:
--------------------------------------------------------
function Level.NeedEnableMark(markId) 
   if (Level.InformationRecieved == false) then
      return false;
   end
   
   if (markId == 'CRAN' and (Level.GetDifficulty() != 2)) then
      return Level.CraneWasClosed == false;
   elseif (markId == 'CHAN') then
      return Level.RopeCutted == false and Level.PlayerHasKnife() == true;
   elseif (markId == 'POIS' and (Level.GetDifficulty() != 2)) then
      return Level.PlayerHasPoisson() == false;
   elseif (markId == 'UPS3' and (Level.GetDifficulty() != 2)) then
      return Level.IsMissionTaskCompleted('KIL2') == false and 
             Level.VinePoissoned['VineTrigger_03'] == false;
   elseif (markId == 'UPS1' and (Level.GetDifficulty() != 2)) then
      return Level.IsMissionTaskCompleted('KIL1') == false and 
             Level.VinePoissoned['VineTrigger_01'] == false;
   elseif (markId == 'SER1' and (Level.GetDifficulty() != 2)) then
      return Level.CinemaStarted == false and
             Level.IsMissionTaskCompleted('KIL2') == false;
   elseif (markId == 'SER2') then
      return (AI.GetPlayerForm() != "Officer") and (Level.GetDifficulty() != 2);
   elseif (markId == 'TRAK') then
      return (Level.GetDifficulty() == 0) and Level.TractorStarted == false;
   end
end

--------------------------------------------------------
-- Name: Level.OnCloseDoor()
-- Desc:
--------------------------------------------------------
function Level.OnCloseDoor( door )
   for i in Level.SecretDoors do
      if (door == Level.SecretDoors[i]) then
         AI.EnableZone("SecretDoorZone", false);
         
         Level.RemoveDpc("AI.EnableZone('SecretDoorZone', false)");
         
         return;
      end
   end
end

--------------------------------------------------------
-- Name: Level.IsSecretDoorClosed()
-- Desc:
--------------------------------------------------------
function Level.IsSecretDoorClosed()
   for i in Level.SecretDoors do
      local door = Level.FindDoor(Level.SecretDoors[i]);
      if (door != nil) then
         if (Level.IsDoorOpened(door) == true) then
            return false;
         end
      end
   end
   
   return true;
end

--------------------------------------------------------
-- Name: Level.OnOpenDoor()
-- Desc:
--------------------------------------------------------
function Level.OnOpenDoor( door )
   for i in Level.SecretDoors do
      if (door == Level.SecretDoors[i]) then
         AI.EnableZone("SecretDoorZone", true);
         
         Level.InstallSingleSmartDpc("AI.EnableZone('SecretDoorZone', false)", 2.0, "Level.IsSecretDoorClosed()");
         
         return;
      end
   end
   
   if (door == 'BLDR') then
      Level.SetDoorLockedId('BLDR', false);
   end
end

--------------------------------------------------------
-- Name: Level.HackStartSpyJob()
-- Desc:
--------------------------------------------------------
function Level.HackStartSpyJob()
   AI.SetJob(AI.FindNPC('WSPY'), "walk");
end

--------------------------------------------------------
-- Name: Level.StartCinema()
-- Desc:
--------------------------------------------------------
function Level.StartCinema()
  
     Level.EnableLight( 'Cinema' , true );
     Level.EnableLight( 'CLT1' , true );
     Level.EnableLight( 'CLT2' , true );
     Level.EnableFlare( 'CFLR' , true );
     
     Level.SetLightParam("Cinema" , "video.bind" , "whcinema.vid" );
          
     if ( Level.CinemaPos != 0.0 ) then                      
       Level.SetLightParam("Cinema" , "video.pos"  , Level.CinemaPos );
     end;

     Level.BindCommandEntity("VideoIllum" , "Cinema" , "light" , "CLT1" );
     Level.BindCommandEntity("VideoIllum" , "Cinema" , "light" , "CLT2" );
     Level.BindCommandEntity("VideoIllum" , "Cinema" , "brush" , "CINL" );
     
     Level.BindCommandEntity("VideoIllum" , "Cinema" , "illumfactor" , "1.7" );

     local lightProj = Level.FindWorldObject('CINL');
     if ( lightProj != nil ) then
         
        local px,py,pz = Level.GetWorldObjectPos( lightProj );
        Level.SetWorldObjectPos( lightProj, px, 89.73369, pz );
         
     end;
                
     Level.EnableWorldObjectAnim( Level.FindWorldObject("PROJ") , true, 0.0, 30.0, 15.0 );
          
     if ( Level.CinemaArea == true ) then
       Level.SetLightParam("Cinema", "video.play" , true );         
     end;
     
     Level.SetLightParam("Cinema" , "sound.bind" , "CinemaSnd" );     
     
     Level.PlaySound( Level.FindSound("ProjectorSnd" ) );
       
     Level.CinemaOn = true;
     
  end;

--------------------------------------------------------
-- Name: Level.UpdateSniperZone()
-- Desc:
--------------------------------------------------------
  function Level.UpdateSniperZone()
     if (AI.Asc("player has sniperrifle") == true) then
     
        Level.EnableLevelMark('SNIP', false);
        AI.OnPlayerEnterZone("SniperZone", 'SNZN');
        
        if (Level.SniperAlert == true) then
           AI.OnPlayerEnterZone("SniperAlertZone", 'SNZA');
        end
        
     else
     
        AI.OnPlayerLeaveZone("SniperZone", 'SNZN');

        if (Level.SniperAlert == true) then
           AI.OnPlayerLeaveZone("SniperAlertZone", 'SNZA');
        end
        
     end
  end

--------------------------------------------------------
-- Name: Level.OnNotifyInvestigatedBody()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyVisitedBody(npc, body, accident)
   
   AI.Debug(npc, "Level.OnNotifyVisitedBody", "accident:", tostring(accident));
   
   if (Level.SniperAlert == true) then
      return;
   end
   
   if (accident == true) then
      return;
   end
   
   local info = Level.GetDeadBodyInfo( body );
   
   if (info == nil) then
      return;
   end
   
   if (info.sniper == true) then
      Level.SniperBody = true;
   end   
 end

--------------------------------------------------------
-- Name: Level.OnSniperAlert()
-- Desc:
--------------------------------------------------------
 function Level.OnSniperAlert()
    if (Level.SniperAlert == true) then
       return;
    end
    
    Level.SniperAlert = true;
    
    local actors  = { 'GS28', 'GS27', 'GS24', 'GS29', 'GS26', 'GS35',
                      'GS34', 'GS30', 'GS33', 'GS25', 'GS23', 'GS39',
                      'GS38', 'GS16', 'GS17', 'GS15', 'GS08', 'GS12',
                      'GS13', 'GS11', 'GS51', 'GS50', 'GS49' };
    local anchors = { 'A192', 'A193', 'A194', 'A195', 'A196', 'A197', 
                      'A198', 'A199', 'A200', 'A201', 'A202', 'A203',
                      'A204', 'A205', 'A206', 'A207', 'A208', 'A209',
                      'A210', 'A211', 'A212', 'A213', 'A214' };
    
    for i in actors do
       local npc = AI.FindNPC(actors[i]);
       
       if (npc != nil) then
          -- Set attention
          
          AI.DirtyChangeAttention(npc, AI.ATTENTION_ALARM, false);
          
          Level.RunAnchorJob_Run(npc, anchors[i], false);
       end       
    end
 end

--------------------------------------------------------
-- Name: Level.OnKillGuard()
-- Desc:
--------------------------------------------------------
 function Level.OnKillGuard()
     if (Level.IsUsingAnchor(AI.FindNPC('WHSH'), 'A144') == true) then
       Level.InstallDpc("Level.StartShCheckRoofJob()", 30.0);
    end
 end

  --------------------------------------------------------
  -- Name: Level:OnPlayerAction()
  -- Desc:
  --------------------------------------------------------
  function Level:OnPlayerAction(id)
     
     if (id == 'SAFR') then
        Level.RemovePlayerAction('SAFR');
        
        -- Start cutscene...
        Level.StartPlayerCustomAnim("OpenDoor_Stand", 0, true, true);

        Level.InstallDpc("Level.StartSpySpeaking()", 0.5);
     elseif (id == 'OWTG') then
        --Level.RemovePlayerAction('OWTG');
        Level.SafeRemoveLevelPlayerAction('OWTG');
        
        if (Level.CanOrderWorkers() == true) then
           Level.OrderWorkers();
        end
     end
  end

--------------------------------------------------------
-- Name: Level.StartSpySpeaking()
-- Desc:
--------------------------------------------------------
  function Level.StartSpyInvite()
     local npc = AI.FindNPC('FREN');
     
     -- Install player anim task...
     local p = {};
     -- p["CustomString_1"] = "Act_Stand_Passover";
     p["CustomString_1"] = "Act_Stand_Call";
     p["CustomString_2"] = "1.3";
     p["CustomString_3"] = "";
     
     Level.VoiceMessage(npc, "%Script01_Sound", "Message_ComeHere");

     AI.RunScriptTask(npc, "scripts:job\\PlayerAnimTask.lua", AI.LOGIC_DEFAULT, Level.ToCustomParams(p));        
  end

--------------------------------------------------------
-- Name: Level.StartSpySpeaking()
-- Desc:
--------------------------------------------------------
  function Level.StartSpySpeaking()
     local npc = AI.FindNPC('FREN');
     
     -- Install player anim task...
     local p = {};
     p["CustomString_1"] = "Relaxed_Talk_Express1";
     p["CustomString_2"] = "18.0";
     p["CustomString_3"] = "Level.OnInformationRecieved()";

     AI.RunScriptTask(npc, "scripts:job\\PlayerAnimTask.lua", AI.LOGIC_DEFAULT, Level.ToCustomParams(p));        

     Level.BeginCutScene( "Spy", "Levels\\Whitehead\\spy.scm", MissionText.Message_Cutscene_Spy, 16.0, { 3, 20.0, 45.0, 100.0, 255 } );
     
     Level.InstallDpc("AI.HandleVoice( AI.FindNPC('FREN'), '%Script02_Sound' )", 0.1);
  end

--------------------------------------------------------
-- Name: Level.OnInformationRecieved()
-- Desc:
--------------------------------------------------------
  function Level.OnInformationRecieved()
     Level.FinishTask('INFO', false);
  end

--------------------------------------------------------
-- Name: Level.OnCClothUpdateMarks()
-- Desc:
--------------------------------------------------------
function Level.OnCClothUpdateMarks()
     
 if (AI.GetPlayerForm() == "Officer") then
    Level.EnableLevelMark('FORO', false);
 end
     
 if (AI.GetPlayerForm() == "Waiter") then
    Level.EnableLevelMark('FORW', false);
 end
     
end;

--------------------------------------------------------
-- Name: Level.OnChangeCloth()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth()
  
  Level.EnableLevelMark('FORM', false);
 
  if ( Level.GetDifficulty() == 0 ) then 
      Level.InstallDpc("Level.OnCClothUpdateMarks()", 1.0 );
  end;    
      
  Level.InstallDpc("Level.OnHelpForm()", 3.0);
    
end

--------------------------------------------------------
-- Name: Level.CanOrderWorkers()
-- Desc:
--------------------------------------------------------
  function Level.CanOrderWorkers()
     if (AI.GetPlayerForm() != "Officer") then
        return false;
     end
     
     if (Level.VehicleExploded == true) then
        return false;
     end
     
     if (Level.OrderWorkersTrigger == false) then
        return false;
     end
     
     if (Level.NeedAddToVehicle() == false) then
        return false;
     end
     
     if (Level.InformationRecieved == false) then
        return false;
     end
     
     if (Level.WasWorksJob == true) then
        return false;
     end
     
     for i in Level.BoxWorkers do
        local npc = AI.FindNPC(Level.BoxWorkers[i]);
        if (npc == nil) then
           return false;
        end
        
        if (AI.IsScriptTask(npc) == true) then
           return false;
        end
        
        if (AI.IsImportantTask(npc) == true) then
           return false;
        end
     end
     
     return true;
  end

--------------------------------------------------------
-- Name: Level.OrderWorkers()
-- Desc:
--------------------------------------------------------
  function Level.OrderWorkers()
     if (Level.CanOrderWorkers() == false) then
        return;
     end
     
     local door = Level.FindDoor('BLDR');
     if (door == nil) then
        print("Can't find door: BLDR");
        return;
     end
     
     local playerItem = Actor.GetPickupItem( Level.GetPlayer() );
     
     if (Level.IsDoorLocked(door) == true) then
        local anchors = { 'A222', 'A223', 'A225' };
        for i in Level.BoxWorkers do
           Level.RunAnchorJob(AI.FindNPC(Level.BoxWorkers[i]), anchors[i], true);
        end
     else
        local PickAnchors = { 'A226', 'A227', 'A228' };
        local DropAnchors = { 'A229', 'A230', 'A231' };
        local HmmAnchors  = { 'A232', 'A233', 'A234' };
        
        for i in Level.BoxWorkers do
        
           if (Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] == true) then
              -- check position:
              
              local box = Level.FindItem(Level.PlayerBoxes[i]);

              if (box != nil and playerItem != box) then
                 local boxPos = Level.GetEntityPosition( box );
              
                 local anchor = AI.FindAnchor(PickAnchors[i]);
                 local anchorPos = {};
                 if (anchor != nil) then
                    anchorPos.x, anchorPos.y, anchorPos.z = AI.GetAnchorPosition( anchor );
                    
                    local dist = Level.BalanceDistance(anchorPos, boxPos);
                    if (dist < 40.0) then
                       Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] = false;
                    end
                 end
              end
           end
        end

        for i in Level.BoxWorkers do
           if (Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] == false) then
              
              Level.CheckBotBox[Level.BoxWorkers[i]] = Level.WorkerBoxes[i];
              
              Level.RunAnchorJob2(AI.FindNPC(Level.BoxWorkers[i]), PickAnchors[i], DropAnchors[i], true);
           else
              Level.RunAnchorJob(AI.FindNPC(Level.BoxWorkers[i]), HmmAnchors[i]);
           end
        end

        
        for i in Level.PlayerBoxes do
           if (playerItem != Level.FindItem(Level.PlayerBoxes[i])) then
              if (Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] == false) then
                 Level.HideBox(Level.PlayerBoxes[i], true);
              end
           end
        end

        for i in Level.WorkerBoxes do
           if (Level.PlayerBoxesMoved[Level.PlayerBoxes[i]] == false) then
              Level.HideBox(Level.WorkerBoxes[i], false);
           end
        end

        Level.InstallDpc("Level.OnMilitaryYes()", 0.5);
        Level.WasWorksJob = true;
     end
  end

--------------------------------------------------------
-- Name: Level.OnMilitaryYes()
-- Desc:
--------------------------------------------------------
  function Level.OnMilitaryYes()
     for i in Level.BoxWorkers do
        AI.HandleVoice(AI.FindNPC(Level.BoxWorkers[i]), "@v_military_yes");
     end
  end

--------------------------------------------------------
-- Name: Level.HideBox()
-- Desc:
--------------------------------------------------------
  function Level.HideBox(boxId, bOnOff)
     local box = Level.FindItem( boxId );
     if (box != nil) then
        if (bOnOff == true) then
           Entity.SetHidden( box, true );
           
           local n = Entity.GetNode( box );
           local pos = {};
           pos.x,pos.y,pos.z = node.GetPosition(n);

           node.SetPosition( n, pos.x, pos.y - 100.0, pos.z );
           node.InvalidateTransforms( n , true );  

           if (Level.GetIndex(Level.PlayerBoxes, boxId) != -1) then
              Level.EnableItemPickup( box, false );
           end
        else
           Entity.SetHidden( box, false );
           
           local n = Entity.GetNode( box );
           local pos = {};
           pos.x,pos.y,pos.z = node.GetPosition(n);

           node.SetPosition( n, pos.x, pos.y + 100.0, pos.z );
           node.InvalidateTransforms( n, true );  
           
           if (Level.GetIndex(Level.PlayerBoxes, boxId) != -1) then
              Level.EnableItemPickup( box, true );
           end
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnCheckOrderWorkers()
-- Desc:
--------------------------------------------------------
  function Level.OnCheckOrderWorkers()
     if (Level.HasPlayerAction('OWTG') == true) then
        if (Level.CanOrderWorkers() == false) then
           --Level.RemovePlayerAction('OWTG');
           Level.SafeRemoveLevelPlayerAction('OWTG');
        end
     else
        if (Level.CanOrderWorkers() == true) then
           --Level.AddPlayerAction('OWTG', MissionText.Message_OrderWorkers, "Level", false );
           Level.SafeAddLevelPlayerAction('OWTG', MissionText.Message_OrderWorkers);
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnLeaveBlitz()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveBlitz()
     Level.PlayerAtBlitz = false;
     
     if (Level.IsMissionTaskCompleted('BOJL') != true or Level.HasMissionTask('BOJL') == false) then
         if (Level.BojlerReturnPlaceTrigger == true) then
            Level.BoxesCompleted = Level.BoxesCompleted + Level.BoxesAtVehicle;
            Level.BoxesVehicleAtZone = Level.BoxesAtVehicle;
         end
     end
     
     -- if (Level.BojlerReturnPlaceTrigger == true) then
     --   Level.BoxesCompleted = Level.BoxesCompleted + Level.BoxesAtVehicle;
     --   Level.CheckBojlerTask();
     -- end
  end

--------------------------------------------------------
-- Name: Level.OnEnterBlitz()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterBlitz()
     Level.WasAtBlitz = true;
     Level.PlayerAtBlitz = true;
     -- Level.BoxesCompleted = Level.BoxesCompleted - Level.BoxesAtVehicle;
     
     if (Level.IsMissionTaskCompleted('BOJL') != true or Level.HasMissionTask('BOJL') == false) then
         
         if (Level.BoxesVehicleAtZone > 0) then
            Level.BoxesCompleted = Level.BoxesCompleted - Level.BoxesVehicleAtZone;
            Level.BoxesVehicleAtZone = 0;
         end
     end     
  end
 
--------------------------------------------------------
-- Name: Level.HackAddPoisson()
-- Desc:
--------------------------------------------------------
  function Level.HackAddPoisson()
     
     local player = Level.GetPlayer();
     
     local poison = Level.CreateItem( "Custom:Poison", "Equipment" );
     if ( poison != nil ) then

         Actor.PutPouch( player, Actor.GetEmptyPouch( player ), poison );
         Entity.SetName( poison, MissionText.Poison_Name );
         Level.SetCustomItemName( poison, MissionText.Poison_TipName );
         Entity.SetUniqueID( poison, 'POIS' );

     end;
  end

--------------------------------------------------------
-- Name: Level.HackAddPoisson()
-- Desc:
--------------------------------------------------------
  function Level.PlayerHasKnife()
     local numKnifes = Actor.GetNumWeaponOfClass( Level.GetPlayer(), Level.WEAPON_CLASS_KNIFE, true );
     return numKnifes >= 1;
  end

--------------------------------------------------------
-- Name: Level.OnKillerdWorker()
-- Desc:
--------------------------------------------------------
  function Level.OnKillerdWorker(botId)
     if (Level.CheckBotBox[botId] != nil) then	
        local index = Level.GetIndex(Level.BoxWorkers, botId);
        if (index != -1) then
           Level.HideBox(Level.PlayerBoxes[index], false);
           Level.HideBox(Level.WorkerBoxes[index], true);
        end
        Level.CheckBotBox[botId] = nil;
     end
  end

--------------------------------------------------------
-- Name: Level.OnKilledGW06()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledGW06()
     Level.OnKillerdWorker('GW06');
  end

--------------------------------------------------------
-- Name: Level.OnKilledGW07()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledGW07()
     Level.OnKillerdWorker('GW07');
  end

--------------------------------------------------------
-- Name: Level.OnKilledGW08()
-- Desc:
--------------------------------------------------------
  function Level.OnKilledGW08()
     Level.OnKillerdWorker('GW08');
  end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor238()
-- Desc:
--------------------------------------------------------
  function Level.OnAnchor_AIAnchor238()
     local fren = AI.FindNPC('FREN');
     Level.VoiceMessage(fren, "%Script03_Sound", "Message_Thanks");
  end

--------------------------------------------------------
-- Name: Level.OnKillFrench()
-- Desc:
--------------------------------------------------------
  function Level.OnKillFrench()
     if (Level.HasMissionTask('INFO') == true and     
         Level.IsMissionTaskCompleted('INFO') == false and
         Level.InformationRecieved == false) then
        Level.FinishTask('INFO', false);
     end
     
     if (Level.HasMissionTask('BOJL') == true and
         Level.InformationRecieved == true) then

         if (Level.IsMissionTaskCompleted('BOJL') == false) then
            Level.FinishTask('BOJL', false);
         else
            Level.RemoveMissionTask('BOJL');
         end
     end
  end
  
--------------------------------------------------------
-- Name: Level.OnHitSurfaceBullet()
-- Desc:
--------------------------------------------------------
  function Level.OnHitSurfaceBullet( object, uniqueId, surface, px, py, pz )
     if (uniqueId == 'ROPE') then
         Level.RopeBulletHitted = true;
         Level.StartChandelierScript();
     end
  end

--------------------------------------------------------
-- Name: Level.OnIkTimer()
-- Desc:
--------------------------------------------------------
  function Level.OnIkTimer()
     local officers = { 'GO06' };
     for i in officers do
        if (random() < 0.5) then
           AI.HandleVoice(AI.FindNPC(officers[i]), "male_ger_casual_ik");
        end
     end
  end

--------------------------------------------------------
-- Name: Level.OnSayWantDinner()
-- Desc:
--------------------------------------------------------
  function Level.OnSayWantDinner()
     Level.VoiceMessage(AI.FindNPC('WSPY'), "%Script04_Sound", "Message_IWantDinner");
     Level.InstallDpc("Level.RunAnchorJob(AI.FindNPC('HW01'), 'A240', false)", 1.5);
  end

--------------------------------------------------------
-- Name: Level.OnAnchor_Anchor153()
-- Desc:
--------------------------------------------------------
  function Level.OnAnchor_Anchor153()
     Level.VoiceMessage(AI.FindNPC('WSPY'), "%Script05_Sound", "Message_OnlyForDinner");
     Level.InstallDpc("Level.RunAnchorJob(AI.FindNPC('GS41'), 'A241', false)", 4.0);
  end

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor_A178()
-- Desc:
--------------------------------------------------------
  function Level.OnAnchor_AIAnchor_A178()
  end

--------------------------------------------------------
-- Name: Level.OnAnchor_Anchor_TC12()
-- Desc:
--------------------------------------------------------
  function Level.OnAnchor_TC12()
     AI.SetJob(AI.FindNPC('TC12'), "job");
  end

--------------------------------------------------------
-- Name: Level.ChangeOfficerJob()
-- Desc:
--------------------------------------------------------
  function Level.ChangeOfficerJob()
     if (AI.IsDefault(AI.FindNPC('GO14')) == true) then
        Level.RunAnchorJob(AI.FindNPC('GO14'), 'A242', false);
     end
  end

--------------------------------------------------------
-- Name: Level.HackResetHard()
-- Desc:
--------------------------------------------------------
  function Level.HackResetHard()
     AI.SetJob(AI.FindNPC('GS31'), "hard");
     AI.SetJob(AI.FindNPC('GS32'), "hard");
     AI.SetJob(AI.FindNPC('GS42'), "hard");
     Level.AddTimer('GBOT', "OnGoUrinate", 30.0, true);
  end

--------------------------------------------------------
-- Name: Level.CheckPlayerAtDc()
-- Desc:
--------------------------------------------------------
  function Level.CheckPlayerAtDc()
     return Level.IsScriptNpcSeePlayerAtRoom('GS42', 'VA52');
  end

--------------------------------------------------------
-- Name: Level.OnGoUrinate()
-- Desc:
--------------------------------------------------------
  function Level.OnGoUrinate()
     local npc = AI.FindNPC('GS42');
     if (AI.IsDefault(npc) == true) then
        Level.RunAnchorJob(npc, "AN69", true);
        Level.InstallSingleSmartDpc("AI.FailTask(AI.FindNPC('GS42'), AI.TASK_SCRIPT_DEFAULT)", 1.0, "Level.CheckPlayerAtDc()");
     end
  end

--------------------------------------------------------
-- Name: Level.OnHitStandartenfurer()
-- Desc:
--------------------------------------------------------
  function Level.OnHitStandartenfurer()
     if (Level.GetDifficulty() == 0) then
        Level.HelpMessage(MissionText.Message_KillHelp_1);
     end
  end

--------------------------------------------------------
-- Name: Level.OnHitSpy()
-- Desc:
--------------------------------------------------------
  function Level.OnHitSpy()
     if (Level.GetDifficulty() == 0) then
        Level.HelpMessage(MissionText.Message_KillHelp_2);
     end
  end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
   if (Level.IsMissionTaskCompleted('KIL1') == true) then
      Level.DecrementLevelStats(levelStats, "NumEnemiesKilled");
   end

   if (Level.IsMissionTaskCompleted('KIL2') == true) then
      Level.DecrementLevelStats(levelStats, "NumEnemiesKilled");
   end
   
   if (Level.RopeBulletHitted == true) then
      Level.IncrementLevelStats(levelStats, "NumBulletsHited");
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
   
   if (Level.HasMissionTask('BOJL') == true and 
       Level.IsMissionTaskCompleted('BOJL') == true) then
       
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

--------------------------------------------------------
-- Name: Level.OnAnchor_AIAnchor_A115()
-- Desc:
--------------------------------------------------------
function Level.OnAnchor_AIAnchor_A115()
   local playerRoom = Entity.GetRoomId( Level.GetPlayer() );
   local room_1 = Level.GetRoom('VA59');
   if (playerRoom == room_1) then
      return;
   end
   
   local door = Level.FindDoor('WDR2');
   if (door != nil) then
      if (Level.IsDoorOpened(door) == true) then
         Level.CloseDoor( door, true, Level.GetPlayer() );
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnCheckCloseDoorTimer()
-- Desc:
--------------------------------------------------------
function Level.OnCheckCloseDoorTimer()
   if (AI.FindNPC('GS60') != nil) then
      return;
   end
   
   if (AI.IsDefault(AI.FindNPC('GS59')) == false) then
      return;
   end
   
   if (Level.CinemaStarted == true) then
      return;
   end
   
   if (Level.AlertCalled == true) then
      return;
   end
   
   local door = Level.FindDoor('WDR2');
   if (door != nil) then
      if (Level.IsDoorOpened(door) == false) then
         return;
      end
   end
   
   Level.RunAnchorJob(AI.FindNPC('GS59'), 'AD12');
end

--------------------------------------------------------
-- Name: Level.OnExplodeVehicle()
-- Desc:
--------------------------------------------------------
function Level.OnExplodeVehicle()
   Level.VehicleExploded = true;
end

