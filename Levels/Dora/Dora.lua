----------------------------------------------------------------------------
--
-- Description :  Mission "Dora"
--
--
----------------------------------------------------------------------------


--------------------------------- Messages table -----------------------------
  
  MissionText = 
  {
      Task_Suitcase                   = " Перехватить дипломат";
      Task_Kill                       = " Уничтожить профессора";
      Task_Leave                      = " Покинуть парк";
      Task_Discredit                  = " Подложить компромат";
      Task_Alarm                      = " Не поднимать тревогу";
  
      Message_SuitcaseIsNotFounded    = "! Обнаружена пропажа портфеля. ";
      Message_GuardAreLookingSuitcase = "! Охрана ищет человека с дипломатом";
      Message_SuitcaseFounded         = "! Охраной обнаружен дипломат";
      Message_BodyAlertZone           = "! Охрана обнаружила тело и ищет постороннего..";
      
      Message_UseHloroform            = "ДОБАВИТЬ СНОТВОРНОЕ";
      Message_UsePoisson              = "ДОБАВИТЬ ЯД";
      Message_RaiseU                  = "ПОВЫСИТЬ НАПРЯЖЕНИЕ";
      Message_PoissonWater            = "ОТРАВИТЬ ВОДУ";
      Message_PoissonSmoke            = "ПОДМЕНИТЬ СИГАРЕТЫ";
      Message_PutDiscredit            = "ПОДКИНУТЬ КОМПРОМАТ";
      Message_CloseCrane              = "ЗАКРЫТЬ КРАН";
      
      Key_Sklad                       = "Ключ от склада";
      Key_OfficerRoom                 = "Ключ от комнаты полковника";
      Key_Archive                     = "Ключ от архивов";
      Key_Doctor                      = "Ключ от комнаты доктора";
      Key_ProfessorRoom               = "Ключ от комнаты профессора";
      
      Message_StopMove_GuardsGoOut    = "@ Покиньте комнату охраны немедленно!";
      Message_StopMove_LivingRoom     = "@ Я работаю тут. Вы бы не могли удалиться";
      Message_StopMove_Pass           = "@ Стоять! Предъявите ваш пропуск!";
      Message_CutScene_Pass           = "- Стоять! Предъявите ваш пропуск!";
      Message_StopMove_Crypt          = "@ Прошу прощения, но вам не положено здесь находиться";
      Message_StopMove_OfficerRoom    = "@ Что ты тут забыл?!";
      Message_StopMove_Storage        = "@ Я никого не пропускаю на территорию склада!";
      Message_StopMove_DoctorRoom     = "@ Немедленно покиньте мою комнату!";
      Message_StopMove_Archive        = "@ Боюсь, я должен попросить вас удалиться.";
      Message_StopMove_ProfRoom       = "@ Э-э-э... Я вас разве приглашал?";
      Message_StopMove_Basement       = "@ Я думаю вам нечего делать в подвале!";
      Message_StopMove_Stair          = "@ Слезай с лестницы!";
      Message_StopMove_Delegation     = "@ У меня приказ никого не впускать"; 
      Message_StopMove_OnlySoldiers   = "@ Гражданским вход на второй этаж запрещен!";

      Message_PassName                = "Пропуск";
      Message_PassNameL               = "ПРОПУСК";

      Message_CigarettesDef           = "Cигареты";
      Message_CigarettesDefL          = "СИГАРЕТЫ";
      
      Message_Soporific               = "Снотворное";
      Message_SoporificL              = "СНОТВОРНОЕ";
      
      Message_Cigarettes              = "Отравленные сигареты";
      Message_CigarettesL             = "ОТРАВЛЕННЫЕ СИГАРЕТЫ";
      
      Message_Discredit               = "Компрометирующие документы";
      Message_DiscreditL              = "КОМПРОМАТ";
      
      Message_ShowDocs                = "ПОКАЗАТЬ ПРОПУСК";
      Message_PlayerGiveSmoke         = "ДАТЬ СИГАРЕТЫ";
      
      Message_StopMove_DocsClear      = "@ Все нормально - проходите.";      
      
      Fail_Alarm                      = " МИССИЯ ПРОВАЛЕНА";
      Fail_Killed                     = " МИССИЯ ПРОВАЛЕНА";

      Kill_Civilians                  = "Вы уничтожили слишком много человек. ";
      Kill_Soldiers                   = "Вы уничтожили слишком много военных. ";

      Kill_Msg_1                      = "Осталось ";
      Kill_Msg_3                      = "Остался ";
      Kill_Msg_2                      = " до провала миссии.";
      
      DocSuitcase_Name                = "ДИПЛОМАТ С ДОК-МИ";
      EmptySuitcase_Name              = "ПУСТОЙ ДИПЛОМАТ";      
      
     
      Message_FailKillDelegation      = "Убит американский представитель";
      Message_FailKillOfficer         = "Убит полковник Хадсон";
      Message_FailHitOfficer          = "Оглушен полковник Хадсон";      
      
      Alarm_Timer                    = "Необходимо завершить операцию за %02d:%02d";
      
      Message_DelegationState_1     = "- День добрый. Полковник Джеймс Боуман, ОСС. Мы должны забрать кое-какие материалы, вам сообщили?";
      Message_DelegationState_3     = "- Все необходимые материалы в этом дипломате. Возьмите его и следуйте за мной. Я покажу вам над чем ведется работа в данный момент..";
      Message_DelegationState_5     = "- Где можно найти доктора? Где тут медпункт?";
      
      Message_ProfessorIsUglyPerson = "- Профессор Шепард уже достал. Постоянно просит сигареты.";
      
      Message_SendDelegation        = "@ Вас ждет полковник Хадсон около входа в главное здание..";
      Message_IGoSuitcase           = "@ Подождите здесь. Через пять минут я принесу ваши документы.";
      
      Message_IHaveHeadAche         = "@ Доктор, есть что-нибудь от головной боли?";
      Message_SayArchive            = "@ Здравствуйте. Мне необходимы некоторые архивные сведения. У меня есть допуск";
      Message_SayProfessor          = "@ Профессор, у нас неполадки с оборудованием. Посмотрите пожалуйста..";
      Message_AscSmoking            = "@ У вас не найдется закурить?";
      Message_GiveSmoke             = "@ Да, конечно";
      Message_Thanks                = "@ Спасибо";
      
      Message_LossOfficerWarning    = "! Отсуствие полковника может вызвать беспокойство американцев";
      Message_LossAmericanWarning   = "! Отсуствие одного из американских представителей может вызвать беспокойство";
      Message_OfficerWarning        = "! Полковника многие знают в лицо";
      
      Message_NeedsPoisson          = "! Нужен яд, чтобы отравить воду";
      Message_LeavePark             = "! Необходимо покинуть парк с документами";
      
      Message_Help                  = { "Американские представители могут заподозрить неладное, заметив человека с дипломатом",
                                        "У большинства гражданских сотрудников есть пропуск..",
                                        "Офицеров многие знают в лицо..",
                                        "Постарайтесь не привлекать внимание окружающих.",
                                        "Убийство большого количества человек может привести к тревоге..",
                                        "На территории парка есть медпункт..",
                                        "В отделах шифрования нельзя находиться посторонним.",
                                        "Отсуствие полковника может вызвать беспокойство американцев.",
                                        "Убийство британского полковника приведет к поражению в миссии.",
                                        "Поднятие тревоги вызовет поражение в миссии.",
                                        "В медпункте могут находиться отравляющие средства..",
                                        "Платок с хлороформом противнику не кажется подозрительным.."
                                       };

      Message_ClothInfo            = { "Чтобы попасть в главное здание в форме гражданского - нужен пропуск",
                                       "Форма шифровальщика дает доступ в отделы шифрования",
                                       "Профессор имеет доступ практически в любое место",
                                       "В форме охранника нельзя посещать отделы шифрования",
                                       "Врача многие знают в лицо",
                                       "Офицера многие знают в лицо"
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
       
       Level.SetDoorKey('DR04', 'SKLD');
       Level.SetDoorKey('DR05', 'SKLD');
       
       Level.SetDoorKey('DR14', 'OFRM');
       Level.SetDoorKey('DR10', 'ARCH');
       
       Level.SetDoorKey('D303', 'DCTR');
       Level.SetDoorKey('DR08', 'PRKY');
       Level.SetDoorKey('DR07', 'PRKY');
       Level.SetDoorKey('D314', 'PRKY');
       
       Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\sustain.ogg" );       
       Level.AddMusic( Level.MUSIC_MOOD_ATTENTION, "sounds\\music\\sustain.ogg" );       
       Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.35#sounds\\music\\b_dark6.ogg" );
       
       Level.SetHudEffect("noise_small", true );
       Level.SetDOFPostFilter( 1, 0.0, 1200.0, 1500.0 );
       Level.SetDefaultMusicPause( 180.0, 300.0, 20.0, 40.0 );

       System:SetVar( "r_farclip", 3000.0 );
       System:SetVar( "r_dofsky", 128 );
       System:SetVar( "r_wfloor2", 4 );
       System:SetVar( "r_rimsunlightfactor", 0.15 );
       System:SetVar( "r_fogfactor" , 1.5 );
       System:SetVar( "r_shadowbrightness", 0.85 );
       
       local door = Level.FindDoor('LD18');
       if (door != nil) then
          AI.RegisterClosedDoor(door, true);
       end
       
       Level.UpdateSuitcaseZoneState();
       
       AI.DisableDecamouflageMethod(AI.METHOD_RUNNING, -1.0);
  end;
 
--------------------------------------------------------
-- Name: Level.OnSave()
-- Desc:
--------------------------------------------------------
  function Level.OnSave()
       Stream.WriteInt(6);
       
       Level.WriteArray( Level.SuitCases );
       Level.WriteArray( Level.CheckSuitcaseNPC );
       Level.WriteArray( Level.TriggerPickupSuitcaseNPC );
       
       Stream.WriteBool ( Level.SuitcaseDisapeared );
       Stream.WriteBool ( Level.SuitcaseDisapearedGlobal );
       Stream.WriteString ( Level.PlayerHasSuitcase );
       Stream.WriteInt  ( Level.NpcWithSuitcase );

       Level.WriteArray( Level.Delegation );
       Level.WriteArray( Level.SynchroAnchor );
       
       Stream.WriteInt ( Level.DelegationState );
       
       Stream.WriteBool ( Level.DrugHloroformUses );
       Stream.WriteBool ( Level.DrugPoissonUses );
       
       Stream.WriteBool ( Level.CourierIsSleeping );
       
       Level.WriteArray( Level.GuardsCanSeeSuitcase );
       Level.WriteArray( Level.Guards );
       
       Stream.WriteBool( Level.ProfessorWatched );
       
       Stream.WriteBool( Level.PrPoissonWater );
       Stream.WriteBool( Level.PrPoissonSmoke );
       Stream.WriteBool( Level.CigaretteOnTable );
       
       Level.WriteArray (Level.Pass);
       Level.WriteArray (Level.GetPass );
       
       Stream.WriteBool( Level.GotSuitcase );
       Stream.WriteBool( Level.DelegationHasBadSuitcase );
       
       Stream.WriteBool( Level.PlayerGotActualSuitcase );
       
       Level.WriteArray( Level.SuitCasePriority );
       Level.WriteArray( Level.NumKilled );
       
       Stream.WriteBool ( Level.AtExitTrigger );
       Stream.WriteBool ( Level.PlayerWasAtHouse );
       
       Stream.WriteBool ( Level.PlayerAtSmokingPlace );
       
       Level.WriteArray ( Level.Cigarettes );
       
       Stream.WriteBool ( Level.DirtySuitcaseAlertInstalled );
       
       Stream.WriteBool ( Level.ActualSuitcaseIsPickuped );
       
       Stream.WriteInt ( Level.UCutSceneId );
       Stream.WriteBool( Level.SoldierSuitcaseScriptInstalled );
       
       Stream.WriteBool ( Level.LeaveParkMessage );
       
       Stream.WriteBool ( Level.AlertBodyCalled );       
       Level.WriteArray ( Level.AlertBodyAnchors );
       Stream.WriteBool ( Level.DrugHlorPickuped );
       
       Stream.WriteBool ( Level.DirtyUseGeneratorCompleted );
       
       Stream.WriteBool( Level.CraneClosed );
       
       Stream.WriteBool ( Level.NearDoctorRoom );
       
       
       -- version 1
       Level.WriteArray( Level.EnableStopMoveCutscene );
       
       -- version 2
       Stream.WriteBool( Level.WasAlertCutscene );
       
       -- version 3
       Stream.WriteBool( Level.DelegationHasSuitcase );
       Stream.WriteBool( Level.PlayerJustGotSuitcase );
       
       -- version 4
       Stream.WriteBool( Level.ShowPassMark );
       
       -- version 5
       Stream.WriteBool( Level.ShowedSmokeCutscene );
       
       -- version 6
       Stream.WriteBool( Level.DecamouflageOnGetSuitcase );
       
       Level.OnSave_Common();
  end

--------------------------------------------------------
-- Name: Level.OnLoad()
-- Desc:
--------------------------------------------------------
  function Level.OnLoad()
       local version = Stream.ReadInt();
       
       Level.SuitCases                = Level.ReadArray();
       Level.CheckSuitcaseNPC         = Level.ReadArray();
       Level.TriggerPickupSuitcaseNPC = Level.ReadArray();
       
       Level.SuitcaseDisapeared       = Stream.ReadBool();
       Level.SuitcaseDisapearedGlobal = Stream.ReadBool();
       Level.PlayerHasSuitcase        = Stream.ReadString();
       Level.NpcWithSuitcase          = Stream.ReadInt();

       Level.Delegation               = Level.ReadArray();
       Level.SynchroAnchor            = Level.ReadArray();

       Level.DelegationState          = Stream.ReadInt();
       
       Level.DrugHloroformUses        = Stream.ReadBool();
       Level.DrugPoissonUses          = Stream.ReadBool();
       
       Level.CourierIsSleeping        = Stream.ReadBool();
       
       Level.GuardsCanSeeSuitcase     = Level.ReadArray();
       Level.Guards                   = Level.ReadArray();
       
       Level.ProfessorWatched         = Stream.ReadBool();        

       Level.PrPoissonWater           = Stream.ReadBool();
       Level.PrPoissonSmoke           = Stream.ReadBool();
       Level.CigaretteOnTable         = Stream.ReadBool();
       
       Level.Pass                     = Level.ReadArray();
       Level.GetPass                  = Level.ReadArray();
       
       Level.GotSuitcase              = Stream.ReadBool();
       Level.DelegationHasBadSuitcase = Stream.ReadBool();
       
       Level.PlayerGotActualSuitcase  = Stream.ReadBool();
       
       Level.SuitCasePriority         = Level.ReadArray();
       Level.NumKilled                = Level.ReadArray();
       
       Level.AtExitTrigger            = Stream.ReadBool();
       Level.PlayerWasAtHouse         = Stream.ReadBool();
       
       Level.PlayerAtSmokingPlace     = Stream.ReadBool();
       
       Level.Cigarettes               = Level.ReadArray();
       
       Level.DirtySuitcaseAlertInstalled = Stream.ReadBool();

       Level.ActualSuitcaseIsPickuped = Stream.ReadBool();
       
       Level.UCutSceneId              = Stream.ReadInt();
       
       Level.SoldierSuitcaseScriptInstalled = Stream.ReadBool();
       
       Level.LeaveParkMessage         = Stream.ReadBool();
       
       Level.AlertBodyCalled          = Stream.ReadBool();       
       Level.AlertBodyAnchors         = Level.ReadArray();
       Level.DrugHlorPickuped         = Stream.ReadBool();
       
       Level.DirtyUseGeneratorCompleted = Stream.ReadBool();
       
       Level.CraneClosed              = Stream.ReadBool();
       
       Level.NearDoctorRoom           = Stream.ReadBool();
       
       Level.ShowPassMark              = false;
       Level.ShowedSmokeCutscene       = true;
       Level.DecamouflageOnGetSuitcase = false;
       
       if (version >= 1) then 
          Level.EnableStopMoveCutscene = Level.ReadArray();
       end
       
       if (version >= 2) then
          Level.WasAlertCutscene = Stream.ReadBool();
       end
       
       if (version >= 3) then
          Level.DelegationHasSuitcase = Stream.ReadBool();
          Level.PlayerJustGotSuitcase = Stream.ReadBool();
       end
       
       if (version >= 4) then
          Level.ShowPassMark = Stream.ReadBool();
       end
       
       if (version >= 5) then
          Level.ShowedSmokeCutscene = Stream.ReadBool();
       end
       
       if (version >= 6) then
          Level.DecamouflageOnGetSuitcase = Stream.ReadBool();
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
       
       Level.SuitCases                = { 'SUC1', 'SUC2' };
       Level.CheckSuitcaseNPC         = { 'OFFS', 'COUR' };
       Level.SuitCasePriority         = {};
       Level.TriggerPickupSuitcaseNPC = { };
       
       Level.SuitCasePriority['SUC1'] = 1;
       Level.SuitCasePriority['SUC2'] = 0;

       Level.SuitcaseDisapeared       = false;
       Level.SuitcaseDisapearedGlobal = false;
       Level.PlayerHasSuitcase        = '';
       Level.NpcWithSuitcase          = 0;
       
       Level.Delegation               = { 'DIL1', 'DIL2', 'DIL3', 'COUR', 'OFFS' };
       Level.DelegationState          = 0;
       Level.SynchroAnchor            = {};
       
       Level.GuardsCanSeeSuitcase = { };
       
       Level.DrugHloroformUses        = false;
       Level.DrugPoissonUses          = false;
       Level.DrugHlorPickuped         = false;
       
       Level.CourierIsSleeping        = false;
       
       Level.Guards = { 'BS10', 'BS09', 'BS11', 'BS07', 'BS08', 
                        'BS06', 'BS05', 'BS14', 'BS13', 'BS12', 
                        'BS16', 'BS15', 'BS22', 'BS23', 'BS26',
                        'BS18', 'BS19', 'BS20', 'BS21' };
                        
       Level.ProfessorWatched         = false;
       Level.PrPoissonWater           = false;
       Level.PrPoissonSmoke           = false; 
       Level.CigaretteOnTable         = false;
       
       Level.Pass                     = { 'PAS1', 'PAS2', 'PAS3' };
       Level.GetPass                  = { false,  false,  false };
       
       Level.GotSuitcase              = false;
       Level.DelegationHasBadSuitcase = false;
       
       Level.PlayerGotActualSuitcase = false;
       
       Level.AtExitTrigger           = false;
       Level.PlayerWasAtHouse        = false;
       
       Level.PlayerAtSmokingPlace    = false;
       
       Level.DirtySuitcaseAlertInstalled = false;
       
       Level.ActualSuitcaseIsPickuped = false;
       Level.UCutSceneId              = 0;
       
       Level.SoldierSuitcaseScriptInstalled = false;
       Level.LeaveParkMessage         = false;
       
       Level.Cigarettes              = { 'CIG1' };
       local CigarettesActors        = { 'EM13' };
       
       Level.AlertBodyCalled         = false;
       Level.AlertBodyAnchors        = { 'A286', 'A287', 'A288', 'A289', 'A290' };
       
       Level.DirtyUseGeneratorCompleted = false;
       Level.CraneClosed                = false;
       
       Level.NearDoctorRoom             = false;
       Level.WasAlertCutscene           = false;
       
       Level.DelegationHasSuitcase      = false;
       Level.PlayerJustGotSuitcase      = false;
       
       Level.ShowPassMark               = false;
       
       Level.ShowedSmokeCutscene        = false;
       Level.DecamouflageOnGetSuitcase  = false;
       
       Level.EnableStopMoveCutscene    = {};
       Level.EnableStopMoveCutscene["MainHouseEnter"]  = true;
       Level.EnableStopMoveCutscene["MainHouseEnter2"] = true;
       
       Level.SoundName  = { "kotel01" };
       Level.SoundState = { true };
       
       Level.NumKilled = {};
       
       Level.SetHelpMessageInterval( 130.0 );

       -- Action handlers..
       Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );
       Level.AddActionHandler( Level.AH_ACTOR_ALL_KILLED );
       
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'WBS1', "OnChangeCloth_Soldier" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'WRDC', "OnChangeCloth_Doctor" );
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'WBC1', "OnChangeCloth_Cryptman" );
       
       Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, 'OFFS', "OnOfficerCloth" );
       
       Level.AddActionHandler( Level.AH_CHANGE_CLOTH );
       
       for i in Level.Delegation do
          if (Level.Delegation[i] != 'OFFS') then
             Level.AddActionHandler( Level.AH_ACTOR_KILLED , Level.Delegation[i] , "OnHitDelegation");
             Level.AddActionHandler( Level.AH_ACTOR_HITTED , Level.Delegation[i] , "OnHitDelegation");
          end
       end

       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'OFFS' , "OnKillOfficer");
       Level.AddActionHandler( Level.AH_ACTOR_HITTED , 'OFFS' , "OnHitOfficer");
       
       Level.AddActionHandler( Level.AH_ACTOR_KILLED , 'PROF' , "OnKillProfessor");
       
       -- Init player..
       local player     = Level.FindActor('PLYR');
       if ( player != nil ) then

          if ( Level.HasPlayerEquipPack() == false ) then

             local pistol     = Level.CreateItem("HiStandart","Weapon");
             local knife      = Level.CreateItem("KnifeNR43","Weapon");
 
             Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
             Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );

             Actor.PutWeaponAmmo( player, "HiStandart");

             Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
             Actor.PutEmptyPouch( player, "lockpick", "Equipment" );             
             Actor.PutEmptyPouch( player, "chloroform", "Weapon" );             
             
             -- Add cigarettes
             local cigarettes = Level.CreateItem( "Custom:Cigarettes" , "Equipment" );
             if ( cigarettes != nil ) then
                Entity.SetUniqueID( cigarettes, 'CIGR' );
                Level.SetEntityName(cigarettes, MissionText.Message_CigarettesL, MissionText.Message_Cigarettes);

                Actor.PutPouch( player, Actor.GetEmptyPouch( player ), cigarettes );
             end;          
          end;
                    
          local discredit = Level.CreateItem( "Custom:PassDoc" , "Equipment" );
          if ( discredit != nil ) then
          
             Entity.SetUniqueID( discredit, 'DISC' );
             Level.SetEntityName(discredit, MissionText.Message_DiscreditL, MissionText.Message_Discredit);

             local emptyPouch = Actor.GetEmptyPouch( player );
             if ( emptyPouch < 0 ) then
                emptyPouch = 17;
             end;
             
             Actor.PutPouch( player, emptyPouch, discredit );
          end;          

          Actor.ChangeActorSkin( player, "Jacket" );
          Actor.SetActorTypeId(player, Actor.ACTOR_TYPE_CIVILIAN, Actor.ACTOR_NATION_BRITISH );          
       end;       

       
       -- Entities..
       for i in Level.SuitCases do
          local item = Level.FindItem( Level.SuitCases[i] );
          
          if (item != nil) then
             Level.EnableEquipmentNotify( item, "drop", true );
             Level.EnableEquipmentNotify( item, "pickup", true );
          else
             print("Warning! Cant find item: ".. tostring(Level.SuitCases[i]) );
          end
       end
       
       local documentSuitcase = Level.FindItem( 'SUC1' );
       Entity.SetName( documentSuitcase, MissionText.DocSuitcase_Name );

       local emptySuitcase = Level.FindItem( 'SUC2' );
       Entity.SetName( emptySuitcase, MissionText.EmptySuitcase_Name );

       local snotvornoe = Level.FindItem( 'SNOT' );
       if ( snotvornoe != nil ) then
         Level.SetEntityName( snotvornoe, MissionText.Message_SoporificL, MissionText.Message_Soporific);
         Level.EnableNotifyPickup( snotvornoe, true );
       end;
       
       local disc = { 'DIS1', 'DIS2', 'DIS3', 'DIS4' };
       for i in disc do
          local discredit = Level.FindItem(disc[i]);
          Level.EnableItemPickup( discredit, false );
          Entity.SetHidden( discredit, true );
       end

       for i in Level.Pass do
          Level.SetEntityName(Level.Pass[i], MissionText.Message_PassNameL, MissionText.Message_PassName);
       end
       
       local passNpc = { 'EM10', 'EM11', 'EM13', 'EM14', 
                         'EM15', 'EM16', 'EM17', 'EM18', 'EM19', 
                         'EM20', 
                         'M106', 'M110', 'M112', 'NM13', 
                         'NM14', 'NM16', 'NM18', 
                         'NM19', 'NM22', 'NM23', 'NM24', 'NM25', 
                         'NM26', 'M127'
                         
                       };
                       
                       
       for i in passNpc do
          local actor = Level.FindActor(passNpc[i]);
          local pass = Level.CreateItem( "Custom" , "Equipment" );
          
          if (actor == nil) then
             print("Warning! Can't find actor " .. passNpc[i]);
          end

          if (pass != nil and actor != nil) then

             Entity.SetUniqueID( pass, 'PASS' );
          
             Level.SetCustomItemName( pass, MissionText.Message_PassName );
             Level.SetCustomItemIcon( pass, "ammo_doc" );

             Actor.PutPouch( actor, Actor.GetEmptyPouch(actor), pass );
          end
       end
       
       for i in Level.Cigarettes do
          local actor = Level.FindActor(CigarettesActors[i]);
          if (actor != nil) then
             local c = Level.CreateItem( "Custom:Cigarettes" , "Equipment" );
          
             if ( c != nil ) then
                Entity.SetUniqueID( c, Level.Cigarettes[i] );
                Level.SetEntityName(c, MissionText.Message_CigarettesDefL, MissionText.Message_CigarettesDef);
                Actor.PutPouch( actor, Actor.GetEmptyPouch( actor ), c );
             end
          end;
       end
       
       local table = Level.FindItem('TABL');
       if (table != nil) then
          Level.EnableItemPickup( table, false );
          Level.AttachItemWorldObject( table, 'LD18' );
       end
      
       local npcId = { 'OFFS', 'COUR', 'BS27' };
       for i in npcId do
          local npc = AI.FindNPC(npcId[i]);
          if (npc != nil) then
             AI.Disable(npc, "stone_change_attention");
             AI.Disable(npc, "stone_reaction");
          else
             print("Error: Can't find npc <" .. npcId[i] .. ">");
          end
       end
      
       -- Keys..
       Level.AddKey('EM12', 'SKLD', MissionText.Key_Sklad , nil, true );
       Level.AddKey('OFFS', 'OFRM', MissionText.Key_OfficerRoom, nil, true );
       Level.AddKey('BS15', 'OFRM', MissionText.Key_OfficerRoom, nil, true );
       Level.AddKey('EM10', 'ARCH', MissionText.Key_Archive, nil, true );
       Level.AddKey('DCT1', 'DCTR', MissionText.Key_Doctor, nil, true );
       Level.AddKey('PROF', 'PRKY', MissionText.Key_ProfessorRoom, nil, true );
       Level.AddKey('SC07', 'PRKY', MissionText.Key_ProfessorRoom, nil, true );
       
       Level.SetDoorLocked( Level.FindDoor('DR05'), false, true );
       
       Level.SetFormHelp( "Civilian",    MissionText.Message_ClothInfo[1] );
       Level.SetFormHelp( "Cryptman",    MissionText.Message_ClothInfo[2] );
       Level.SetFormHelp( "Professor",   MissionText.Message_ClothInfo[3] );
       Level.SetFormHelp( "Soldier",     MissionText.Message_ClothInfo[4] );
       Level.SetFormHelp( "Doctor",      MissionText.Message_ClothInfo[5] );
       Level.SetFormHelp( "Officer",     MissionText.Message_ClothInfo[6] );
       
       -- Init mission tasks..
       Level.InstallInitialTasks();

       -- AI..
       Level.UpdateSuitcaseZoneState();
       AI.OnPlayerEnterZone("Global",        'GLSC');
       AI.OnPlayerEnterZone("CourierGlobal", 'GLCO');
       
       AI.EnableZone("GuardRoomEnter", false);
       AI.EnableZone("DelegationRoomZone", false);
       AI.EnableZone("DelegationRoomZoneEnter", false);
       AI.EnableZone("CourierGlobal", false);
       AI.EnableZone("MainHouseEnter2", true);
       AI.EnableZone("LocalSuitcaseZoneAlert", false);
       
       --AI.EnableZone("NearMainHouse", false);
       
       Level.RunAnchorJob2(AI.FindNPC('BS05'), 'AN01', 'AN02', true);
       
       AI.ChangeLogic(AI.FindNPC('BS27'), "SoldierScriptNeutral");
       
       AI.RebuildPlayerForm();

       AI.SetPlayerForm("Civilian");
       AI.SetPlayerDefaultForm("Civilian");

       AI.Disable("grenades");
       AI.Disable("investigated_body_alert");

       AI.Enable("notify_visited_body");
       
       Level.UpdateProfessorMark(0);
       
       NPC.SetFlag( AI.FindNPC('OFFS'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('EM12'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       NPC.SetFlag( AI.FindNPC('EM10'), NPC.F_CANT_OPEN_LOCK_DOOR, true );
       
       for i in Level.Delegation do
          local npc = AI.FindNPC(Level.Delegation[i]);
          if (npc != nil) then
             AI.SetConfLogic( npc, "scripts:ConfLogic\male_usa_guards_conf.shadvs" );
             AI.SetVoiceTemplate( npc, "male_usa" );
             AI.SetJob(npc, "start");
          end 
       end

       -- Timers..
       Level.InstallDpc("Level.InstallTimers()", 1.0);
       
       Level.OnLoadedDifficulty();
       
       -- Finish load..
       Level.OnFinishLoad();
  end;

--------------------------------------------------------
-- Name: Level.InstallTimers()
-- Desc:
--------------------------------------------------------
  function Level.OnLoadedDifficulty()
      local difficulty = Level.GetDifficulty();
      -- if (difficulty == 0) then
      --    AI.EnableZone( "MainBuildingGuardPart", false);
      -- end
      
      -- if (difficulty >= 2) then
      --    AI.Enable("investigated_body_alert");
      --    AI.Disable("notify_visited_body");
      -- end
      
     if (Level.GetDifficulty() == 3) then
        local form_eq = { 'WBC1', 'WBS1', 'WRDC' };
        for i in form_eq do
           Level.HideItem( form_eq[i] );
        end
     end
  end  

--------------------------------------------------------
-- Name: Level.InstallTimers()
-- Desc:
--------------------------------------------------------
  function Level.InstallTimers()
       Level.InstallDpc("Level.CheckStartFirstState()", 100.0);
 
       Level.AddTimer( 'GSTM', "OnGoSmokingTimer", 115.0, true );
       Level.AddTimer( 'SGST', "OnSoldiersGoSmoking", 130.0, true );
  end
  

  AI.DoFile( "scripts:Levels\\Common.lua", false );
  
------------------------------- Level logic ----------------------------------


--------------------------------------------------------
-- Name: Level.InstallInitialTasks()
-- Desc:
--------------------------------------------------------
  function Level.InstallInitialTasks()
      Level.StartTask(MissionText.Task_Suitcase,  'SUIT', "Levels\\Dora\\suitcase_task.txt"  , true  , 0  );
      Level.StartTask(MissionText.Task_Kill,      'KILL', "Levels\\Dora\\kill_task.txt"      , true  , 2  );
      Level.StartTask(MissionText.Task_Leave,     'LEAV', "Levels\\Dora\\leave_task.txt"     , true  , 0  );
      
      Level.StartTask(MissionText.Task_Discredit, 'DISC', "Levels\\Dora\\discredit_task.txt", false, 0  );
      Level.StartTask(MissionText.Task_Alarm,     'ALAR', "Levels\\Dora\\alarm_task.txt", false, 0  );
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
     
     if (taskId == 'KILL') then
       
       local prof = Level.FindActor('PROF');
       if (prof != nil) then
          Actor.MarkAsTarget( prof, true );
       end
       
       Level.EnableLevelMark('PROF', true);
       
     elseif (taskId == 'SUIT') then
     
       Level.UpdateDelegationMark();
       
     elseif (taskId == 'LEAV') then
     
     end

     Level.AddMissionTask( text, taskId, taskDscr, floor, isImportant );
  end

--------------------------------------------------------
-- Name: Level.CheckLeaveParkMessage()
-- Desc:
--------------------------------------------------------
  function Level.CheckLeaveParkMessage()
          
     if (Level.PlayerHasActualSuitcase() == false and
         AI.FindNPC('PROF') == nil and
         Level.LeaveParkMessage == false) then
                           
         Level.LeaveParkMessage = true;
         Level.AddSmallMessage( MissionText.Message_LeavePark, 10.0, 175, 175, 175 );
         
     end
  end

--------------------------------------------------------
-- Name: Level.FinishTask()
-- Desc:
--------------------------------------------------------
  function Level.FinishTask(taskId, completed)
     if (Level.HasMissionTask(taskId) == false or
         Level.IsMissionTaskCompleted(taskId) == true) then
        return; 
     end
     
     if (taskId == 'KILL') then
     
        Level.EnableLevelMark('PROF', false);
        Level.EnableLevelMark('PRO1', false);
        Level.EnableLevelMark('PRO2', false);

        Level.EnableLevelMark('POIS', false);
        Level.EnableLevelMark('WPIS', false);
        Level.EnableLevelMark('SMOK', false);
        Level.EnableLevelMark('VOLT', false);
        
        Level.UpdateDelegationMark( );
        --FIX: Level.CheckLeaveParkMessage();
       
     elseif (taskId == 'SUIT') then
     
        Level.UpdateDelegationMark( );
        
     elseif (taskId == 'LEAV') then
        
     elseif (taskId == 'DISC') then
     
        Level.EnableLevelMark('DISC', false);
        Level.EnableLevelMark('DIS2', false);
        
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
-- Name: Level.OnKillProfessor()
-- Desc:
--------------------------------------------------------
  function Level.OnKillProfessor()
     Level.FinishTask('KILL', true );
  end

--------------------------------------------------------
-- Name: Level.OnKillDelegation()
-- Desc:
--------------------------------------------------------
  function Level.OnKillDelegation()
     Level.FailedMission( MissionText.Message_FailKillDelegation, 15.0 );
  end

--------------------------------------------------------
-- Name: Level.OnHitDelegation()
-- Desc:
--------------------------------------------------------
  function Level.OnHitDelegation()
      Level.AddSmallMessage( MissionText.Message_LossAmericanWarning, 5.0, 175, 175, 175 );     

     if (Level.DelegationState <= 4) then
        local time       = { 4.0, 3.0, 2.0, 1.5 };
        local difficulty = Level.GetDifficulty();
        
        Level.SetupDirtySuitcaseAlert( time[Level.DelegationState + 1] );
     else
        Level.SetupDirtySuitcaseAlert( 1.5 );
     end
  end

--------------------------------------------------------
-- Name: Level.SetupDirtySuitcaseAlert()
-- Desc:
--------------------------------------------------------
  function Level.SetupDirtySuitcaseAlert(alertMinutesTime)
     if (Level.DirtySuitcaseAlertInstalled == false) then
        Level.DirtySuitcaseAlertInstalled = true;
        
        Level.InstallDpc("Level.SetupGuardsSuitcaseAlert( false )", alertMinutesTime * 60.0);
     end
  end
  
--------------------------------------------------------
-- Name: Level.OnKillOfficer()
-- Desc:
--------------------------------------------------------
  function Level.OnKillOfficer()
     Level.FailedMission( MissionText.Message_FailKillOfficer, 15.0 );
  end 

--------------------------------------------------------
-- Name: Level.OnHitOfficer()
-- Desc:
--------------------------------------------------------
  function Level.OnHitOfficer()
     -- Level.FailedMission( MissionText.Message_FailHitOfficer, 15.0 );
     -- Level.StartMessageTimer( MissionText.Alarm_Timer, 5.0 * 60.0, 255, 255, 255 );
     Level.SetupDirtySuitcaseAlert(4.0);

     Level.AddSmallMessage( MissionText.Message_LossOfficerWarning, 5.0, 175, 175, 175 );     
  end

--------------------------------------------------------
-- Name: Level.IsExitTaskCompleted()
-- Desc:
--------------------------------------------------------
  function Level.IsExitTaskCompleted()
     return Level.IsMissionTaskCompleted('KILL') == true and
            Level.PlayerHasActualSuitcase() == true and
            Level.IsMissionTaskCompleted('SUIT') == true and
--            AI.IsSilence() and
            Level.AtExitTrigger == true;
  end

--------------------------------------------------------
-- Name: Level.OnEnterTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )
          
     AI.Debug(nil, "Level.OnEnterTriggerArea", trgname);
     
     if (trgname == 'ExitTrigger') then
     
        Level.AtExitTrigger = true;
        
        if (Level.IsExitTaskCompleted() == true) then
           Level.FinishTask('ALAR');          
           Level.FinishTask('LEAV');
        end
        
     elseif (trgname == 'OnNearDoctorRoom') then
     
        Level.NearDoctorRoom = true;
        
     elseif (trgname == 'SmokingPlaceTrigger') then
        
        Level.PlayerAtSmokingPlace = true;
        
     elseif (trgname == 'ShowSmokeCutscene') then
      
        local prof = AI.FindNPC('PROF');
        
        if (prof != nil and
            Level.IsAtBBox( { 1469.4346, -73.0372, 266.9813, 1619.4346, -43.0372, 426.9813 },
                            Level.GetNpcPosition(prof) ) == false ) then

           local npc = AI.FindNPC('EM13');
           local bbox = { 1558.4387, -79.8041, 347.1922, 1583.0225, -51.0092, 376.7310 };
           if (AI.IsDefault(npc) == true and 
                (Level.IsAtBBox(bbox, Level.GetNpcPosition(npc)) == true) ) then
           
              Level.InstallDpc("AI.SetJob( AI.FindNPC('EM21'), 'sit' )", 20.0);
              
              Level.RunAnchorJob(npc, 'A293', false);
              
              Level.BeginCutScene("SmokingInfoCutscene", "Levels\\Dora\\smoking_info.scm", MissionText.Message_ProfessorIsUglyPerson, 5.0, { 1, 0.0, 70.0, 80.0, 255 } );
              
              Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
              
              Level.EnableLevelMark('SMOK', false);
              
              Level.ShowedSmokeCutscene = true;
           end
           
        end
        
     end
     
  end
  
--------------------------------------------------------
-- Name: Level.OnLeaveTriggerArea()
-- Desc:
--------------------------------------------------------
  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )
     AI.Debug(nil, "Level.OnLeaveTriggerArea", trgname);
    
     if (trgname == 'ExitTrigger') then
        Level.AtExitTrigger = false;
        
     elseif (trgname == 'OnNearDoctorRoom') then
     
        Level.NearDoctorRoom = false;
        
     elseif (trgname == 'SmokingPlaceTrigger') then
        
        Level.PlayerAtSmokingPlace = false;
        Level.SafeRemoveLevelPlayerAction('SMOK');
        
        Level.RemoveTimer('CPST');
     end
  end

  --------------------------------------------------------
  -- Name: Level.PlayerHasPass()
  -- Desc:
  --------------------------------------------------------
  function Level.PlayerHasPass()
     local player = Level.GetPlayer();
     for i in Level.Pass do 
        if (Actor.HasCustomEquipment(player, Level.Pass[i]) == true) then
           return true;
        end
     end
     
     return (Actor.HasCustomEquipment(player, 'PASS') == true);
  end

  --------------------------------------------------------
  -- Name: Level.StartUCutscene()
  -- Desc:
  --------------------------------------------------------
  function Level.StartUCutscene()
     Level.UCutSceneId = Level.UCutSceneId + 1;
     Level.BeginCutScene("ucutscene" .. tostring(Level.UCutSceneId), "Levels\\Dora\\ucamera.scm", "", 5.5, { 1, 0.0, 80.0, 200.0, 255 } );
  end

  --------------------------------------------------------
  -- Name: Level.OnUseForce()
  -- Desc:
  --------------------------------------------------------
  function Level.OnUseForce()
  
    local actor = Level.FindActor('PROF');
    if ( actor != nil ) then
         Actor.ApplyForce( actor, -15000.0, -15000.0, 20000.0 );
    end;        
        
  end;

  --------------------------------------------------------
  -- Name: Level.ChangeJobProfKill()
  -- Desc:
  --------------------------------------------------------
  function Level.ChangeJobProfKill()
     local npcId   = { 'GY21', 'GY19', 'GY20', 'GY24' };
     local anchors = { 'A238', 'A235', 'A237', 'AN39' };
        
     for i in npcId do           
        local npc = AI.FindNPC(npcId[i]);

        if (npc != nil) then
		   AI.TaskCommand(npc, "strong_visit_body", "", "");

		   NPC.SetFlag(npc, NPC.F_IGNORE_DYNAMIC_BLOCKS, true);
				           
		   AI.SetJob(npc, "profkill");

           local properties = Level.CreateCustomParams();
           Level.SetValue(properties, "CustomString_1", anchors[i] );
		
		   AI.RunScriptTask(npc, "scripts:job\\AnchorJob_run.lua", AI.LOGIC_NEUTRAL, properties);
		
		   AI.DirtyChangeAttention(npc, AI.ATTENTION_RELAX, true);
		   
		   AI.HandleVoice(npc, "@v_fuck");
		end
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnRaiseU()
  -- Desc:
  --------------------------------------------------------
  function Level.OnRaiseU()
     Level.PlayEffect( "levels\\dora\\radio_break.sef" , 870.0, -10.0, 382.0 );
     AI.AddSound( AI.SOUND_TYPE_ITEM, 80.0, 870.0, -10.0, 382.5);
     Level.PlayCustomSound( "HighVoltage" );
     
     local prof = AI.FindNPC('PROF');
     local anchor = AI.FindAnchor('AN49');
     
     if (prof == nil) then
        return;
     end
     
     local bbox = {864.9266, -20.2322, 379.2772, 874.9266, -10.2322, 389.2772};
     local pos = Level.GetNpcPosition(prof);
     
     if ((AI.IsUsingAnchor(prof, anchor) == true) or 
         (Level.IsAtBBox(bbox, pos) == true)) then
     
        AI.SetGameFlag(prof, AI.F_ACCIDENT_BODY, true);
        AI.KillNPC(prof, 0.0);
        
        Level.AddTimer( 'URFR', "OnUseForce", 0.05, false );
        Level.InstallDpc("Level.ChangeJobProfKill()", 1.0);
        
     elseif (Level.DirtyUseGeneratorCompleted == false) then
        
        if (AI.GetRoom(prof) == Level.GetRoom('V144')) then
        
           local cryptman = AI.FindNPC('GY21');
           
           if ( AI.IsImportantTask(prof) == false and
                cryptman != nil and
                AI.IsImportantTask(cryptman) == false and
                AI.GetAttention(cryptman) == AI.ATTENTION_RELAX and
                AI.GetAttention(prof) == AI.ATTENTION_RELAX)  then
                
                Level.RemoveTimer('RMPW');
                Level.ProfessorWatched = false;
                
                Level.DirtyUseGeneratorCompleted = true;
                Level.RunAnchorJob(cryptman, 'A291', true);
                Level.RunAnchorJob(prof,     'A292', true);
           end
           
        else

           local room_1 = Level.GetRoom('V142');
           local profRoom = AI.GetRoom(prof);
         
           local profAtRoom = AI.IsDefault(prof) and profRoom == room_1;
           
           if (profAtRoom == true) then
              Level.DirtyUseGeneratorCompleted = true;
              Level.SayProfessor();                 
           end
        end
     end
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
       
     if ( id == "DrugHloroform" or 
          id == "DrugPoisson" ) then

        local animId = {};
        animId["DrugHloroform"] = 'DRHL';
        animId["DrugPoisson"] = 'DRPS';

        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, animId[id]) == false ) then
           return false;
        end;

        local playerForm = AI.GetPlayerForm();
        if (playerForm == "Doctor") then
           local npc    = AI.FindNPC('COUR');
           local anchor = AI.FindAnchor('A205');
           if (npc != nil and (AI.IsUsingAnchor(npc, anchor) == true)) then
              Level.OnDoctorPushDrug( true );
           end
        else
           AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        end
        
     elseif ( id == "CloseCrane" ) then

        if ( Level.StartPlayerCustomAnim("Custom_CloseFuelCrane_Crouch", 2, true, true, 'CLCR') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
     elseif ( id == "PutDiscredit_1" or
              id == "PutDiscredit_2" ) then
     
        local animId = {};
        animId["PutDiscredit_1"] = 'PRD1';
        animId["PutDiscredit_2"] = 'PRD2';
     
        if ( Level.StartPlayerCustomAnim("Stand_Pickup_HG_Table", 0, true, true, animId[id]) == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
             
     elseif ( id == "PressButtonTrigger") then

        if ( Level.StartPlayerCustomAnim("Custom_Radio", 0, true, true, 'PBTG') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
     
        Level.InstallDpc("Level.StartUCutscene()", 1.5);
        Level.InstallDpc("Level.OnRaiseU()", 3.5);        
        
        onFinishUnregister = true;
        
     elseif ( id == "PrWaterPoissonTrigger" ) then

        if ( Level.StartPlayerCustomAnim("Custom_UsePoison", 0, true, true, 'PPSW') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );

        Actor.RemoveEquipment(Level.GetPlayer(), 'POIS');
        
     elseif (id == "PrSmokePoissonTrigger" ) then

        if ( Level.StartPlayerCustomAnim("Stand_Pickup_HG_Table", 0, true, true, 'PPSP') == false ) then
           return false;
        end;
        
        AI.StartDecamouflage( 50.0, 100.0, 4.0 );
        
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
-- Name: Level.CanAddPlayerAction()
-- Desc:
--------------------------------------------------------
  function Level.CanAddPlayerAction(id)

     -- playing custom animation..
     
     if ( Level.FinishAnimTrigger != "" ) then
        return nil;     
     end;
     
     if (id == "DrugHloroform") then
        
        if ((Level.DrugHloroformUses == false) and 
            (Actor.HasCustomEquipment(Level.GetPlayer(), 'SNOT') == true)) then
           return MissionText.Message_UseHloroform;
        end
        
     elseif (id == "DrugPoisson") then

        if ((Level.DrugPoissonUses == false) and 
            (Actor.HasCustomEquipment(Level.GetPlayer(), 'POIS') == true)) then
           return MissionText.Message_UsePoisson;
        end
        
     elseif (id == "CloseCrane") then
     
        if (Level.CraneClosed == false and Level.GetDifficulty() < 2) then
           return MissionText.Message_CloseCrane;
        end
        
     elseif (id == "PutDiscredit_1" or
             id == "PutDiscredit_2") then

        if (Actor.HasCustomEquipment(Level.GetPlayer(), 'DISC') == true and
            Level.IsMissionTaskCompleted('DISC') == false) then
            
            return MissionText.Message_PutDiscredit;
        end
        
     elseif (id == "PressButtonTrigger") then
     
        return MissionText.Message_RaiseU;
        
     elseif (id == "PrWaterPoissonTrigger") then

        if (Level.HasPoisson()) then
           return MissionText.Message_PoissonWater;
        end
        
     elseif (id == "PrSmokePoissonTrigger") then
     
        if (Level.CigaretteOnTable == true) then
           return MissionText.Message_PoissonSmoke;
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
     
     -- alert groups
     -- 0) West Guards 
     -- 1) Main house floor 1 (west)
     -- 2) Main house floor 1 (east)
     -- 3) Main house floor 2
     -- 4) South 
     -- 5) East
     -- 6) Delegation & officer
     
    for i = 0, 6 do
       AI.SetLocalAlert(i, true);
    end
            
    if (alertGroupId == 20) then
       Level.FailedMission( MissionText.Fail_Killed );
       return;
    end

    Level.FailedMission( MissionText.Fail_Alarm );     
  end


  --------------------------------------------------------
  -- Name: Level.OnFinishAlert()
  -- Desc:
  --------------------------------------------------------
  function Level.OnFinishAlert( alertGroupId )
     AI.Debug(nil, "Level.OnFinishAlert", tostring(alertGroupId));
  end

  --------------------------------------------------------
  -- Name: Level.AddPassMarks()
  -- Desc:
  --------------------------------------------------------
  function Level.AddPassMarks()
     if (Level.PlayerHasPass() == true) then
        return;
     end
     
     if (Level.GetDifficulty() != 0) then
        return;
     end
     
     Level.ShowPassMark = true;
     Level.EnableLevelMark('PAS1', true);
     Level.EnableLevelMark('PAS2', true);
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
     local class      = AI.GetClass( npc );
     
     if (zone == nil) then 
        return;
     end
     
     if (zone == "GuardRoom") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_GuardsGoOut, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_02" );
        
     elseif (zone == "MainBuildingGuardPart") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_OnlySoldiers, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_04" );
        
     elseif (zone == "LivingHouse") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_LivingRoom, 5.0, 175, 175, 175 );
        
        if (class == "civilian_woman" or
            class == "enemy_woman") then
            
            AI.HandleVoice( npc, "female_eng_stopmove_stopmove" );
        else
            AI.HandleVoice( npc, "male_eng_stopmove_stopmove" );
        end
        
     elseif (zone == "MainHouse" or
             zone == "MainHouseEnter" or 
             zone == "MainHouseEnter2") then
        
        local zoneCamera = {};
        zoneCamera["MainHouseEnter"]  = "Levels\\Dora\\pass_cutscene_1.scm";
        zoneCamera["MainHouseEnter2"] = "Levels\\Dora\\pass_cutscene_2.scm";
        
        local zoneCutscene = {};
        zoneCutscene["MainHouseEnter"]  = "SmokingInfoCutscene_1";
        zoneCutscene["MainHouseEnter2"] = "SmokingInfoCutscene_2";
        
        if (zone == "MainHouseEnter" or zone == "MainHouseEnter2") then
           
           if (Level.EnableStopMoveCutscene[zone] == true) then
              Level.BeginCutScene(zoneCutscene[zone], zoneCamera[zone], MissionText.Message_CutScene_Pass, 2.0, { 1, 0.0, 100.0, 110.0, 255 } );
           
              Level.EnableStopMoveCutscene[zone] = false;
              local command = "Level.EnableStopMoveCutscene['" .. zone .. "'] = true";
              Level.InstallSingleDpc(command, 30.0);
           end
           
           if (Level.HasDpc("Level.AddPassMarks()") == false and Level.ShowPassMark == false) then
              Level.InstallSingleDpc("Level.AddPassMarks()", 250.0);
           end
        end
        
        if (npcForm == "Soldier") then

           Level.AddSmallMessage( MissionText.Message_StopMove_Pass, 5.0, 175, 175, 175 );
           AI.HandleVoice( npc, "male_eng_stopmove_stopmove_06" );
        
           if ((Level.PlayerHasPass() == true) and 
               (Level.HasPlayerAction('PASS') == false)) then
        
               -- Level.AddPlayerAction('PASS', MissionText.Message_ShowDocs, "Level", false );
               Level.SafeAddLevelPlayerAction('PASS', MissionText.Message_ShowDocs);
               
               Level.AddTimer('PSTM', "OnCheckShowPass", 1.0, true );
            
           end
        end
        
     elseif (zone == "DelegationRoomZoneEnter") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Delegation, 5.0, 175, 175, 175 );
        
        if (playerForm == "Civilian") then
           AI.HandleVoice( npc, "male_eng_stopmove_stopmove_04" );
        else
           AI.HandleVoice( npc, "male_eng_stopmove_stopmove_05" );
        end
        
     elseif (zone == "Laboratory" or
             zone == "MainHouseLabs" or
             zone == "DoctorLab" ) then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_Crypt, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "@v_stop_move" );
        
     elseif (zone == "Storage") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Storage, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_08" );
        
     elseif (zone == "DoctorRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_DoctorRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_07" );
        
     elseif (zone == "ArchiveRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Archive, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "@v_stop_move" );
        
     elseif (zone == "ProffesorRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_ProfRoom, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_07" );
        
     elseif (zone == "Basement") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_Basement, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "@v_stop_move" );
        
     elseif (zone == "OfficerRoom") then
     
        Level.AddSmallMessage( MissionText.Message_StopMove_OfficerRoom, 5.0, 175, 175, 175 );
        if (npcForm == "Soldier") then
           AI.HandleVoice( npc, "@v_stop_move" );
        else
           AI.HandleVoice( npc, "male_eng_stopmove_stopmove_07" );
        end
        
     elseif (zone == "Floor2RoofStair") then
        
        Level.AddSmallMessage( MissionText.Message_StopMove_Stair, 5.0, 175, 175, 175 );
        AI.HandleVoice( npc, "male_eng_stopmove_stopmove_09" );
        
     end
     
  end

  --------------------------------------------------------
  -- Name: Level.OnCheckShowPass()
  -- Desc:
  --------------------------------------------------------
  function Level.OnCheckShowPass()
     local npc = AI.FindNearestNpc(AI.TASK_SHOW_STOP_MOVE, "");

     if (npc == nil) then
        --Level.RemovePlayerAction('PASS');
        Level.SafeRemoveLevelPlayerAction('PASS');
        Level.RemoveTimer('PSTM');
     end
  end

  --------------------------------------------------------
  -- Name: Level.RestoreZones()
  -- Desc:
  --------------------------------------------------------
  function Level.RestoreZones()
     AI.EnableZone("MainHouse",      true);
     AI.EnableZone("MainHouseEnter", true);
     AI.EnableZone("MainHouseEnter2", true);
  end

  --------------------------------------------------------
  -- Name: Level.OnReadDocs()
  -- Desc:
  --------------------------------------------------------
  function Level.OnReadDocs()
     Level.AddSmallMessage( MissionText.Message_StopMove_DocsClear, 5.0, 175, 175, 175 );

     local job = AI.GetScriptJob("TASK_SCRIPT_READ_DOCS");
     if (job != nil) then
        local npc = Job.GetNPC( job );
        if (npc != nil) then
           AI.HandleVoice(npc, "male_eng_script_script_24");
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level:OnPlayerAction()
  -- Desc:
  --------------------------------------------------------
  function Level:OnPlayerAction(id)
     
     if (id == 'PASS') then
     
        -- get show stop move bot...
        local npc = AI.FindNearestNpc(AI.TASK_SHOW_STOP_MOVE, "");
        if (npc == nil) then
           --Level.RemovePlayerAction(id);
           Level.SafeRemoveLevelPlayerAction(id);
           Level.RemoveTimer('PSTM');
           return;
        end     

        --Level.RemovePlayerAction(id);
        Level.SafeRemoveLevelPlayerAction(id);
        
        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", "Level.OnReadDocs()" );

        AI.RunScriptTask(npc, "scripts:job\\ReadDocsTask.lua", AI.LOGIC_DEFAULT, properties);


        if (id == 'PASS') then

           Level.DisableMainHouseZone();

           -- Update 08.01.2008
           -- AI.EnableZone("NearMainHouse", false);                      
           -- Level.InstallDpc("AI.EnableZone('NearMainHouse', true)", 15.0);

           if ( Level.AlertBodyCalled == true ) then
             AI.EnableZone("BodyAlertZone", false );
             Level.InstallDpc("AI.EnableZone('BodyAlertZone', true)", 6.0 );           
           end;
           
        end

        local player = Level.GetPlayer();
                        
        if (Actor.GetPickupItem(player) == nil) then 
           Level.PlayerShowDocsAnim();
        else           
           Actor.DropPickupItem(player, false);
           Level.InstallDpc("Level.PlayerShowDocsAnim()", 0.8);
        end        
        
        Level.RemoveTimer('PSTM');
        
     elseif (id == 'SMOK') then

        --Level.RemovePlayerAction(id);
        Level.SafeRemoveLevelPlayerAction(id);
        
        local prof = AI.FindNPC('PROF');
        if (prof == nil) then
           return;
        end
        
        if (Level.GetPlayerCigarettes() == nil) then
           return;
        end
        
        local player = Level.GetPlayer();
        
        if (Actor.GetPickupItem(player) == nil) then 
           Level.PlayerGiveAnim();
        else
           Actor.DropPickupItem(player, false);
           Level.InstallDpc("Level.PlayerGiveAnim()", 0.8);           
        end
        
        Level.InstallDpc("Level.StartProfessorSmokeJob()", 2.0);
        
        local cig = Level.GetPlayerCigarettes();
        if (cig == 'CIGR') then
           Level.PrPoissonSmoke = true;
        end
        
        if (cig != nil) then

           local cigarettes = Level.CreateItem( "Custom:Cigarettes" , "Equipment" );
           if ( cigarettes != nil ) then
              Entity.SetUniqueID( cigarettes, 'NWCI' );
              Level.SetEntityName(cigarettes, MissionText.Message_CigarettesL, MissionText.Message_Cigarettes);
              
              local profActor = AI.GetActor(prof);
              Actor.PutPouch(profActor , Actor.GetEmptyPouch( profActor ), cigarettes );
           end;
           
           Actor.RemoveEquipment(player, cig);           
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.PlayerHasCigarettes()
  -- Desc:
  --------------------------------------------------------
  function Level.GetPlayerCigarettes()
      local player = Level.GetPlayer();
      if (Actor.HasCustomEquipment(player, 'CIGR') == true) then
         return 'CIGR';
      end
      
      for i in Level.Cigarettes do
         if (Actor.HasCustomEquipment(player, Level.Cigarettes[i]) == true) then
            return Level.Cigarettes[i];
         end
      end
      
      return nil;
  end

  --------------------------------------------------------
  -- Name: Level.StartProfessorSmokeJob()
  -- Desc:
  --------------------------------------------------------
  function Level.StartProfessorSmokeJob()
     
     local prof = AI.FindNPC('PROF');
     if (prof == nil) then
        return;
     end
     
     Level.VoiceMessage(prof, "male_eng_script_script_11", "Message_Thanks");
     
     Level.RunAnchorJob(prof, 'A232', true);
     
     Level.RemoveTimer('CPMT');
  end

  --------------------------------------------------------
  -- Name: Level.HasPoisson()
  -- Desc:
  --------------------------------------------------------
  function Level.HasPoisson()
     local player = Level.GetPlayer();
     if (Actor.HasCustomEquipment(player, 'POIS') == true) then
        return true;
     end
     
     return false;
  end

  --------------------------------------------------------
  -- Name: Level.OnSoldierDropItem()
  -- Desc:
  --------------------------------------------------------
  function Level.OnSoldierDropItem()
     local npc = AI.FindNPC('EM12');
     local item = Level.FindItem('SUC2');
     
     AI.ChangeLogic(AI.FindNPC('BS27'), "PassiveEnemy");
     
     if (npc != nil and item != nil) then
     
        local roomId = Entity.GetRoomId(item);
        
        if (roomId != 'V129') then
           return;
        end
        
        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", 'A262' );
        Level.SetValue(properties, "CustomString_2", 'A264' );
        Level.SetValue(properties, "CustomString_3", 'A263' );
        Level.SetValue(properties, "CustomString_4", 'AD18' );
        Level.SetValue(properties, "CustomString_5", 'AD17' );
        Level.SetValue(properties, "CanBeDisabled", false );

        AI.RunScriptTask(npc, "scripts:job\\AnchorJob5_safe.lua", AI.LOGIC_DEFAULT, properties);
        
        -- disable zones...
        AI.EnableZone("Storage", false);
        Level.InstallDpc("AI.EnableZone('Storage', true)", 15.0);
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnPutSuitcaseToStorage()
  -- Desc:
  --------------------------------------------------------
  function Level.OnPutSuitcaseToStorage()
     -- enable mark...
     Level.EnableLevelMark('SUTF', true);
     
     -- change girl job...
     AI.SetJob(AI.FindNPC('NM15'), "go");
     
     Level.RemoveDpc("AI.EnableZone('Storage', true)");
     AI.EnableZone("Storage", true);
  end
  
  --------------------------------------------------------
  -- Name: Level.StartPutSuitcaseToStorageCutscene()
  -- Desc:
  --------------------------------------------------------
  function Level.StartPutSuitcaseToStorageCutscene()
     local npc = AI.FindNPC('EM12');
     if (npc != nil) then
        local suitcase = NPC.GetPickupItem(npc);
        
        if (suitcase != nil) then
  
           Level.BeginCutScene("PutSuitcaseCutscene", "Levels\\Dora\\putsuitcase.scm", "", 6.0, { 3, -40.0, 45.0, 80.0, 255 } );
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.CheckSoldierSuitcaseJob()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckSoldierSuitcaseJob()
     -- print("Level.CheckSoldierSuitcaseJob()");
     if (Level.SoldierSuitcaseScriptInstalled == true) then
        Level.RemoveTimer('CSSJ');
        return;
     end
     
     if (Level.DelegationState < 2) then
        return;
     end
     
     local soldier = AI.FindNPC('BS27');
     Level.RunAnchorJob2(soldier, 'A261', 'A260', true);
     
     Level.SoldierSuitcaseScriptInstalled = true;
     
     Level.RemoveTimer('CSSJ');
  end

  --------------------------------------------------------
  -- Name: Level.OnNearSuitcaseSoldier()
  -- Desc:
  --------------------------------------------------------
  function Level.OnNearSuitcaseSoldier()
     Level.AddTimer('CSSJ', "CheckSoldierSuitcaseJob", 5.0, true);
  end

  --------------------------------------------------------
  -- Name: Level.ChangeSoldierCamera()
  -- Desc:
  --------------------------------------------------------
  function Level.ChangeSoldierCamera()
     Level.ChangeCamCutScene( "SoldierCutscene", "Levels\\Dora\\soldier_2.scm", { 3, -60.0, 60.0, 80.0, 255 } );
  end

  --------------------------------------------------------
  -- Name: Level.OnSoldierGoSuitcase()
  -- Desc:
  --------------------------------------------------------
  function Level.OnSoldierGoSuitcase()
     -- start cutscene
     
     local npc = AI.FindNPC('BS27');
     if (npc != nil) then
        local suitcase = NPC.GetPickupItem(npc);
        
        if (suitcase != nil) then
           Level.BeginCutScene("SoldierCutscene", "Levels\\Dora\\soldier_1.scm", "", 23.0, { 3, -110, 70, 150.0, 255 } );
           Level.InstallDpc("Level.ChangeSoldierCamera()", 4.0);     
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.PlayerShowDocsAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.PlayerShowDocsAnim()
     Level.StartPlayerCustomAnim("Custom_PassticketShow", 0, true, true);
  end

  --------------------------------------------------------
  -- Name: Level.PlayerGiveAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.PlayerGiveAnim()
     Level.StartPlayerCustomAnim("Stand_Pickup_HG_Table", 0, true, true);
  end

  --------------------------------------------------------
  -- Name: Level.OnStartPlayerCustomAnim()
  -- Desc:
  --------------------------------------------------------
  function Level.OnStartPlayerCustomAnim( animId )
  
     if (animId == 'CLCR') then
        Level.PlayCustomAnimSound( 'OilStop' );
     end
     
  end;

  --------------------------------------------------------
  -- Name: Level.OnOpenCrane()
  -- Desc:
  --------------------------------------------------------
  function Level.OnOpenCrane()
     Level.InstallDpc("Level.CraneClosed = false", 20.0);
     Level.EnableSound( "kotel01", true );
  end

  --------------------------------------------------------
  -- Name: Level.CheckExplosion()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckExplosion()
     if (easter != nil) then
        if (Level.DrugPoissonUses == true and
            Level.DrugHloroformUses == true) then
        
            local pos = Level.GetPlayerPosition();
            Level.CreateExplosion(pos.x, pos.y + 15.0, pos.z);
        end
     end
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

     if (animUniqueId == 'DRHL') then
     
        Level.DrugHloroformUses = true;
        Level.CheckExplosion();
        
        Actor.RemoveEquipment(Level.GetPlayer(), 'SNOT');
        
     elseif (animUniqueId == 'CLCR') then
     
        Level.CraneClosed = true;
        
        Level.RunAnchorJob_Run(AI.FindNPC('GY07'), 'A294', true);
        
        Level.EnableSound( "kotel01", false );
        
     elseif (animUniqueId == 'PRD1' or
             animUniqueId == 'PRD2') then
         
         Level.FinishTask('DISC');
         Actor.RemoveEquipment(Level.GetPlayer(), 'DISC');
         
         local disc = {};
         
         if (animUniqueId == 'PRD1') then
             disc = { 'DIS1', 'DIS2' };
         elseif (animUniqueId == 'PRD2') then
             disc = { 'DIS3', 'DIS4' };
         end
         
         for i in disc do
            local discredit = Level.FindItem(disc[i]);
            Entity.SetHidden( discredit, false);
         end
        
     elseif (animUniqueId == 'DRPS') then
        
        Level.DrugPoissonUses = true;
        Level.CheckExplosion();
        
     elseif (animUniqueId == 'PBTG') then
        
        Level.EnableLevelMark('VOLT', false);

        if (Level.ActionTrigger != nil) then
           Level.ActionTrigger:OnEnterArea();
        end
        
     elseif (animUniqueId == 'PPSW') then
     
        Level.PrPoissonWater = true;
        Level.EnableLevelMark('WPIS', false);
        
     elseif (animUniqueId == 'PPSP') then
     
        Level.PrPoissonSmoke = true;
        Level.EnableLevelMark('CIGR', false);
        
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
     
     for i in Level.Pass do 
        if (Level.GetPass[i] == false and 
            Actor.HasCustomEquipment(player, Level.Pass[i]) == true) then
           
           AI.StartDecamouflage( 50.0, 100.0, 3.0 );
           Level.GetPass[i] = true;
        end
     end
     
     if (Level.PlayerHasPass() == true) then
        Level.EnableLevelMark('PAS1', false);
        Level.EnableLevelMark('PAS2', false);
     end
          
     if (Actor.HasCustomEquipment(player, 'DISC') == false) then
  
        Level.AddTimer('CPDT', "CheckProfessorDocs", 0.1, false);
        
     else
     
        Level.RemoveTimer('CPDT');
        
     end
  end

  --------------------------------------------------------
  -- Name: Level.CheckProfessotDocs()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckProfessorDocs()
     local prof = Level.FindActor('PROF');
     if (Actor.HasCustomEquipment(prof, 'DISC') == true) then
        Level.FinishTask('DISC');
        Level.EnableItemPickup( Level.FindItem('DISC'), false );           
     end
  end
  
--------------------- Music and other funny stuff ----------------------------

----------------------- Bot idles and ai scripts -----------------------------

--------------------------------------------------------
-- Name: Level.SayProfessor()
-- Desc:
--------------------------------------------------------
function Level.SayProfessor()
   if (Level.ProfessorWatched == true) then
      return;
   end

   local prof = AI.FindNPC('PROF');
   
   local anchor_1 = AI.FindAnchor('A226');
   local anchor_2 = AI.FindAnchor('A292');

   local room_1 = Level.GetRoom('V142');
   local room_2 = Level.GetRoom('V144');
   
   local profRoom = AI.GetRoom(prof);
   
   local profAtRoom = (AI.IsDefault(prof) and (profRoom == room_1 or profRoom == room_2));
   
   if (AI.IsUsingAnchor(prof, anchor_1) or 
       AI.IsUsingAnchor(prof, anchor_2) or       
       profAtRoom == true ) then
   
      Level.ProfessorWatched = true;
      Level.RemoveTimer('RMPW');
      Level.AddTimer('RWPW', "RemoveProfWatched", 50.0, false);
   
      Level.RunAnchorJob(prof, 'AN49', true);
   end
end

--------------------------------------------------------
-- Name: Level.OnSetupSayProfessor()
-- Desc:
--------------------------------------------------------
function Level.OnSetupSayProfessor()
   local npc = AI.FindNPC('GY21');
   if (npc != nil) then
      Level.VoiceMessage(npc, "male_eng_script_script_08", "Message_SayProfessor");
   end
end

--------------------------------------------------------
-- Name: Level.RemoveProfWatched()
-- Desc:
--------------------------------------------------------
function Level.RemoveProfWatched()
   Level.ProfessorWatched = false;
end

--------------------------------------------------------
-- Name: Level.OnProffesorWatch()
-- Desc:
--------------------------------------------------------
function Level.OnProfessorWatch()
   if (Level.ProfessorWatched == true) then
      return;
   end
   
   local npc = AI.FindNPC('GY21');
   if (AI.IsDefault(npc) == true) then
      Level.RunAnchorJob2(npc, 'A233', 'A234', false);
   end
end

--------------------------------------------------------
-- Name: Level.OnDrinkWater()
-- Desc:
--------------------------------------------------------
function Level.OnDrinkWater()
   if (Level.PrPoissonWater == true) then
      local prof = AI.FindNPC('PROF');
      AI.SetGameFlag(prof, AI.F_ACCIDENT_BODY, true);
      AI.KillNPC(prof, 10.0);
   end
end

--------------------------------------------------------
-- Name: Level.OnProfessorSmoking()
-- Desc:
--------------------------------------------------------
function Level.OnProfessorSmoking()
   if (Level.PrPoissonSmoke == true) then
      local prof = AI.FindNPC('PROF');
      AI.SetGameFlag(prof, AI.F_ACCIDENT_BODY, true);
      AI.HandleVoice(prof, "@v_fuck");
      AI.KillNPC(prof, 6.0);
      
      local properties = Level.CreateCustomParams();
   
      Level.SetValue(properties, "CustomString_1", 'A241');
      Level.SetValue(properties, "CanBeDisabled", false );

      AI.RunScriptTask(prof, "scripts:job\\AnchorJob_safe_run.lua", AI.LOGIC_NEUTRAL, properties);
      
      return;
   end
   
   Level.UpdateProfessorMark(2);
end

--------------------------------------------------------
-- Name: Level.OnBeginSmoke()
-- Desc:
--------------------------------------------------------
function Level.OnSetupSmokingAnchor()
   if (Level.PrPoissonSmoke == true) then
      Level.BeginCutScene("ProfCutscene", "Levels\\Dora\\prof_1.scm", "", 20.0, { 3, 10.0, 90.0, 350.0, 255 } );
      Level.InstallDpc("Level.ChangeProfCamera()", 10.0);
   end
end

--------------------------------------------------------
-- Name: Level.ChangeProfCamera()
-- Desc:
--------------------------------------------------------
function Level.ChangeProfCamera()
    Level.ChangeCamCutScene( "ProfCutscene", "Levels\\Dora\\prof_2.scm", { 3, 80.0, 90.0, 350.0, 255 });
end

--------------------------------------------------------
-- Name: Level.OnPutCigarette()
-- Desc:
--------------------------------------------------------
function Level.OnPutCigarette()
   local obj = Level.FindWorldObject('CIGR');
   if (obj != nil) then
      local x, y, z;
      x, y, z = Level.GetWorldObjectPos(obj);
      Level.SetWorldObjectPos(obj, x, -60.0, z);
   end
   
   Level.CigaretteOnTable = true;
end

--------------------------------------------------------
-- Name: Level.OnPutCigarette()
-- Desc:
--------------------------------------------------------
function Level.OnGetCigarette()
   local obj = Level.FindWorldObject('CIGR');
   if (obj != nil) then
      local x, y, z;
      x, y, z = Level.GetWorldObjectPos(obj);
      Level.SetWorldObjectPos(obj, x, -120.0, z);
   end
   
   Level.CigaretteOnTable = false;
end

---------------------------------- Callbacks ---------------------------------

--------------------------------------------------------
-- Name: Level.PlayerHasActualSuitcase()
-- Desc:
--------------------------------------------------------
function Level.PlayerHasActualSuitcase()
   return Level.PlayerHasSuitcase == 'SUC1';
end

--------------------------------------------------------
-- Name: Level.UpdateDelegationActorMark()
-- Desc:
--------------------------------------------------------
function Level.UpdateDelegationActorMark()
  for i in Level.Delegation do
     local a = Level.FindActor(Level.Delegation[i]);
     if (a != nil) then
        Actor.MarkAsTarget( a, false );
     end
  end
  
--  if (Level.IsMissionTaskCompleted('LEAV') == true or
--      Level.HasMissionTask('LEAV') == false) then
       
--      return;
--  end
  
  if (Level.PlayerHasActualSuitcase()) then
     return;
  end
  
  if (Level.DelegationHasBadSuitcase == true) then
     return;
  end
  
  for i in Level.Delegation do
     local npc = AI.FindNPC(Level.Delegation[i]);
     if (npc != nil) then
        if (Level.HasSuitcase(npc) == true) then
           Actor.MarkAsTarget( AI.GetActor(npc), true );
           Actor.SetMarkAsFriend( AI.GetActor(npc), true );
           
           return;
        end
     end
  end
  
  if (Level.DelegationState == 1) then
     
     for i in Level.Delegation do
        local a = Level.FindActor(Level.Delegation[i]);
        if (a != nil) then
           Actor.MarkAsTarget( a, true );
           Actor.SetMarkAsFriend( a, true );
        end
     end
        
  elseif (Level.DelegationState == 2) then
     
     local officer = Level.FindActor('OFFS');
     if (officer != nil) then
        Actor.MarkAsTarget(officer, true );
        Actor.SetMarkAsFriend( officer, true );
     end
        
  else
     
     local courier = Level.FindActor('COUR');
     if (courier != nil) then
        Actor.MarkAsTarget(courier, true );
        Actor.SetMarkAsFriend( courier, true );
     end
        
  end
end

--------------------------------------------------------
-- Name: Level.UpdateDelegationMapMark()
-- Desc:
--------------------------------------------------------
function Level.UpdateDelegationMapMark()
   for i = 0, 6 do
      local mark = 'DEL' .. tostring(i);
      Level.EnableLevelMark(mark, false);
   end

   Level.EnableLevelMark('DYSC', false);
   
   if (Level.PlayerHasActualSuitcase()) then
       
--      if (Level.IsMissionTaskCompleted('KILL') == true) then
--          Level.EnableLevelMark('SUIT', false);          
--      end
      
      return;
   end
   
--   if (Level.IsMissionTaskCompleted('SUIT') == true or
--       Level.HasMissionTask('SUIT') == false) then
       
--       return;
--   end

        
   -- Enable dynamic mark...
   local suitcase = Level.FindItem('SUC1');
   
   if ( Level.ActualSuitcaseIsPickuped == false and 
        (Level.PlayerGotActualSuitcase == true or Level.GotSuitcase == true) ) then
      
      if (suitcase != nil) then
         local pos = Level.GetEntityPosition( suitcase );
         Level.SetMarkPosition('DYSC' , pos.x, pos.y, pos.z);
         Level.EnableLevelMark('DYSC', true);
         return;
      end
   end

   -- Use static mark...
   if (Level.DelegationHasBadSuitcase == true) then
      return;
   end   

   local mark = 'DEL' .. tostring(Level.DelegationState);
   Level.EnableLevelMark(mark, true);    
end

--------------------------------------------------------
-- Name: Level.UpdateDelegationMark()
-- Desc:
--------------------------------------------------------
function Level.UpdateDelegationMark( )
   Level.UpdateDelegationActorMark();
   Level.UpdateDelegationMapMark();
end

--------------------------------------------------------
-- Name: Level.OnNotifyPickupItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyPickupItem( suitcaseId, suitcase, actor )
   AI.Debug(npc, "Level.OnPickupSuitcase", tostring(suitcaseId));
      
   -- Snotvornoe..
   if ( suitcaseId == 'SNOT' ) then
               
      Level.EnableNotifyPickup( suitcase, false );
      Level.DrugHlorPickuped = true;
      Level.EnableLevelMark('HLOR', false );
      
      return;
   
   end;
   
   if (actor == Level.FindActor('BS27') or
       actor == Level.FindActor('EM12')) then
       
       return;
   end
   
   if (suitcaseId == 'SUC1') then
      Level.ActualSuitcaseIsPickuped = true;
   end
   
   if (actor == Level.FindActor('COUR')) then
      AI.EnableZone("LocalSuitcaseZoneAlert", false);
   end
   
   if (actor == Level.GetPlayer()) then
   
      if (Level.DecamouflageOnGetSuitcase == true) then
         AI.StartDecamouflage( 50.0, 100.0, 4.0 );
      end
   
      Level.PlayerJustGotSuitcase = true;
      
      Level.InstallSingleDpc("Level.PlayerJustGotSuitcase = false", 6.0);
      
      Level.PlayerHasSuitcase = suitcaseId;
      
      AI.OnPlayerEnterZone("LocalSuitcaseZone", 'LSZS');
      AI.OnPlayerEnterZone("GlobalSuitcaseZone", 'GSZS');
      AI.OnPlayerEnterZone("SuitcasePotentialZone",  'SCPZ');      
      AI.OnPlayerEnterZone("LocalSuitcaseZoneAlert", 'LSZA');
      
      Level.RemoveTimer( 'LSZT' );
      
      for i in Level.TriggerPickupSuitcaseNPC do
         local npc = AI.FindNPC(Level.TriggerPickupSuitcaseNPC[i]);
         if (npc != nil) then
            local object = Level.GetAIMemoryStoredObject(npc, suitcaseId);
            
            -- check object position:
            if (object != nil and object.time < 5.0) then
               -- set object executed...
               AI.MarkCustomExecuted(npc, object.id, true);
               
               -- notify job...
               local job = AI.GetScriptJob(npc);
               if (job != nil) then
                  Job.SendMessage( job, fourCC2int('OBEX'), 0, 0 );
               end
            end
         end
      end
      
      if (suitcaseId == 'SUC2') then
         Level.EnableLevelMark('SUTF', false);
      elseif (suitcaseId == 'SUC1') then
         if (Level.PlayerGotActualSuitcase == false) then
            Level.PlayerGotActualSuitcase = true;
         end         
      end
      
      --AI.EnableDecamouflageMethod(AI.METHOD_RUNNING);
      if (Level.IsMissionTaskCompleted('SUIT') == false and
          Level.PlayerHasActualSuitcase() == true) then
         Level.FinishTask('SUIT');
      end
            
      if (Level.IsExitTaskCompleted() == true) then
         Level.FinishTask('ALAR');
         Level.FinishTask('LEAV');
      end      

      
   else
      
      if (Level.GotSuitcase == false) then
         Level.GotSuitcase = true;
      end
      
      Level.NpcWithSuitcase = Level.NpcWithSuitcase + 1;
      
      if (suitcaseId == 'SUC2') then
         Level.DelegationHasBadSuitcase = true;
      else
         Level.DelegationHasBadSuitcase = false;
      end

      if (Level.DelegationHasSuitcase != true) then
         Level.DelegationHasSuitcase = true;
         Level.UpdateSuitcaseZoneState();
      end
      
      Level.CheckLeaveParkMessage();
   end
   
   local npc = AI.FromActor( actor );
   
   -- Clear object from memory...
   if (npc != nil) then
      AI.ForgetCustom(npc, suitcaseId);
   end
      
   AI.RemoveCustomObject( suitcaseId );
   
   Level.UpdateSuitcaseZoneState();
   Level.UpdateDelegationMark();
end

--------------------------------------------------------
-- Name: Level.OnLeaveSuitcaseZone()
-- Desc:
--------------------------------------------------------
function Level.OnLeaveSuitcaseZone()
   AI.OnPlayerLeaveZone("LocalSuitcaseZone", 'LSZS');
   AI.OnPlayerLeaveZone("GlobalSuitcaseZone", 'GSZS');
   AI.OnPlayerLeaveZone("SuitcasePotentialZone", 'SCPZ');
   AI.OnPlayerLeaveZone("LocalSuitcaseZoneAlert", 'LSZA');   
end

--------------------------------------------------------
-- Name: Level.OnNotifyDropItem()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyDropItem( suitcaseId, suitcase, actor )
   AI.Debug(npc, "Level.OnNotifyDropItem()", tostring(suitcaseId));
   Level.TypeAssert("Level.OnNotifyDropItem", {actor, "userdata"}, {suitcaseId, "string"}, {suitcase, "userdata"});
   assert(actor != nil and suitcase != nil);   

   if (actor == Level.FindActor('BS27') or
       actor == Level.FindActor('EM12')) then
       
       Level.DecamouflageOnGetSuitcase = true;
       Level.InstallDpc("Level.DecamouflageOnGetSuitcase = false", 5.0);
       
       return;
   end
   
   if (suitcaseId == 'SUC1') then
      Level.ActualSuitcaseIsPickuped = false;
   end

   if (actor == Level.FindActor('COUR')) then
      AI.EnableZone("LocalSuitcaseZoneAlert", true);
   end

   if (actor == Level.GetPlayer()) then
      Level.PlayerHasSuitcase = '';
      
      Level.AddTimer( 'LSZT', "OnLeaveSuitcaseZone", 3.0, false );
      
      AI.DisableDecamouflageMethod(AI.METHOD_RUNNING, -1.0);
      
   else
      Level.NpcWithSuitcase = Level.NpcWithSuitcase - 1;
   end
   
   -- Add see object
   AI.AddCustomObject(suitcaseId, suitcase, false);

   -- All actors at pickup suitcase list must pickup it!
   
   local npc = AI.FromActor( actor );
   
   if (npc != nil) then
      -- Memory update...
      Level.MemoryStoreItemObject(npc, suitcaseId, false);
   
      if (Level.IsTriggingPickupSuitcaseNPC(npc, false) == true) then
         Level.RunPickupSuitcaseJob(npc, suitcaseId);
      end
   end
   
   Level.UpdateSuitcaseZoneState();
   Level.UpdateDelegationMark();
end

--------------------------------------------------------
-- Name: Level.IsWatchingSuitcase()
-- Desc:
--------------------------------------------------------
function Level.IsWatchingSuitcase(npc)
   for i in Level.CheckSuitcaseNPC do
      if (npc == AI.FindNPC(Level.CheckSuitcaseNPC[i])) then
         return true;
      end
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.HasSuitcase()
-- Desc:
--------------------------------------------------------
function Level.HasSuitcase(npc)
   if (npc == nil) then
      return false;
   end

   local item = NPC.GetPickupItem( npc );
   return item != nil;
end

--------------------------------------------------------
-- Name: Level.IsTriggingPickupSuitcaseNPC()
-- Desc:
--------------------------------------------------------
function Level.IsTriggingPickupSuitcaseNPC( npc, checkSuitcase ) 
   if (checkSuitcase == true and Level.HasSuitcase(npc) == true) then
      return false;
   end
   
   for i in Level.TriggerPickupSuitcaseNPC do
      if (npc == AI.FindNPC(Level.TriggerPickupSuitcaseNPC[i])) then
         return true;
      end
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.RunPickupSuitcaseJob()
-- Desc:
--------------------------------------------------------
function Level.RunPickupSuitcaseJob(npc, suitcaseId)
    AI.Debug(npc, "Level.RunPickupSuitcaseJob()", tostring(suitcaseId));
    Level.TypeAssert( "Level.RunPickupSuitcaseJob()", {npc, "userdata"} );
    
    if (npc == nil) then
       return;
    end

    if (suitcaseId != nil) then
       Level.MemoryStoreItemObject(npc, suitcaseId, false);
    end
    
    local properties = Level.CreateCustomParams();
    Level.SetValue(properties, "CustomString_1", "Level.OnSuitcaseIsNotFounded()" );
    AI.RunScriptTask(npc, "scripts:job\\PickUpSuitcaseTask.lua", AI.LOGIC_DEFAULT, properties);
end

--------------------------------------------------------
-- Name: Level.DoSuitcaseIsNotFound()
-- Desc:
--------------------------------------------------------
function Level.DoSuitcaseIsNotFound(npc)

   if (npc != nil) then
      Level.RunAnchorJob3_Run(npc, 'A284', 'A222', 'A221', true);
   end
   
   Level.RemoveTimer('SGST');
   
   Level.SuitcaseDisapeared    = true;
   Level.DelegationHasSuitcase = false;
   
   -- Show help message...
   Level.AddSmallMessage( MissionText.Message_SuitcaseIsNotFounded, 5.0, 275, 175, 175 );
   
   -- May be install cutscene...
   -- ??
   
   Level.UpdateSuitcaseZoneState();
end

--------------------------------------------------------
-- Name: Level.SetupGuardsSuitcaseAlert()
-- Desc:
--------------------------------------------------------
function Level.SetupGuardsSuitcaseAlert( seeSuitcase )
   -- Install new guards tasks
   
   if (Level.SuitcaseDisapearedGlobal == false) then
      AI.SetJob("alive", "alert_s");
   
      Level.SuitcaseDisapearedGlobal = true;
   
      Level.AddSmallMessage( MissionText.Message_GuardAreLookingSuitcase, 5.0, 275, 175, 175 );
      
      for i in Level.Guards do
         local npc = AI.FindNPC(Level.Guards[i]);
         
         if (npc != nil) then
            AI.DirtyChangeAttention(npc, AI.ATTENTION_GUARDED, true);
         end
      end
   end
   
   if (seeSuitcase == true) then
      Level.TurnGuardsSeeSuitcase(true);
   end
   
   Level.UpdateSuitcaseZoneState();
end

--------------------------------------------------------
-- Name: Level.OnSaySuitcaseDisapeared()
-- Desc:
--------------------------------------------------------
function Level.OnSaySuitcaseDisapeared()
   -- Install new guards tasks
   
   Level.SetupGuardsSuitcaseAlert( true );

end

--------------------------------------------------------
-- Name: Level.OnNearSuitcaseAlert()
-- Desc:
--------------------------------------------------------
function Level.OnNearSuitcaseAlert()
   if (Level.WasAlertCutscene != true) then
       Level.BeginCutScene("alertcutscene", "Levels\\Dora\\alert_install.scm", "", 10.0, { 1, 0.0, 60.0, 80.0, 255 } );   
       Level.WasAlertCutscene = true;
   end
end

--------------------------------------------------------
-- Name: Level.TurnGuardsSeeSuitcase()
-- Desc:
--------------------------------------------------------
function Level.TurnGuardsSeeSuitcase(bOnOff)
   if (bOnOff == true) then
      Level.GuardsCanSeeSuitcase = {};
      
      for i in Level.Guards do
         Level.GuardsCanSeeSuitcase[i] = Level.Guards[i];
      end
   else
      Level.GuardsCanSeeSuitcase = {};
   end
end

--------------------------------------------------------
-- Name: Level.RunPickupSuitcaseJob()
-- Desc:
--------------------------------------------------------
function Level.OnSuitcaseIsNotFounded()
   AI.Debug(npc, "Level.OnSuitcaseIsNotFounded()", "");
   
   local job = AI.GetScriptJob("TASK_SCRIPT_PICKUP_SUITCASE");
   local npc = nil;
   if (job != nil) then
      npc = Job.GetNPC( job );
   end

   Level.DoSuitcaseIsNotFound( npc );
end

--------------------------------------------------------
-- Name: Level.MemoryStoreItemObject()
-- Desc:
--------------------------------------------------------
function Level.MemoryStoreItemObject(npc, objectId, checkDistance)

   assert(npc != nil);
   Level.TypeAssert( "Level.MemoryStoreItemObject()", {npc, "userdata"}, {objectId, "string"} );
   AI.Debug(npc, Level.MemoryStoreItemObject, objectId);

   local object = Level.GetAIMemoryStoredObject( npc, objectId );   
   local item   = Level.FindItem( objectId );
   local pos    = Level.GetEntityPosition( item );

   if (object == nil) then
      -- Identify last stored object
      
      AI.StoreCustom( npc, objectId, item, Level.SuitCasePriority[objectId], pos.x, pos.y, pos.z );

      return true;
   else

      if (object.entity != item) then
         print("Error. Stored see object " .. tostring(objectId) .. " is not equals with such level item");
         return nil;
      end
      
      if (Level.SuitcaseDisapeared == false and
          object.executed == false and 
          checkDistance and 
          Level.BalanceDistance(object.pos, pos) < 3.0) then
 
         AI.StoreCustom( npc, 
                         objectId, 
                         object.entity, 
                         object.data, 
                         pos.x, pos.y, pos.z );
          
         return false;
      end
      
      AI.StoreCustom( npc, 
                      objectId, 
                      object.entity, 
                      object.data, 
                      pos.x, pos.y, pos.z );

      return true;
   end
end

--------------------------------------------------------
-- Name: Level.OnSaySuitcaseInfo()
-- Desc:
--------------------------------------------------------
function Level.OnSaySuitcaseInfo(npc)
   AI.Debug(npc, "Level.OnSaySuitcaseInfo", tostring(objectId));
   local object = nil;
   
   for i in Level.SuitCases do
      if (object == nil) then
         object = Level.GetAIMemoryStoredObject( npc, Level.SuitCases[i] );
      end
   end
    
   for i in Level.TriggerPickupSuitcaseNPC do
      local npc = AI.FindNPC(Level.TriggerPickupSuitcaseNPC[i]);
      if (npc != nil) then
         Level.MemoryStoreItemObject(npc, object.id, true);
         Level.TurnGuardsSeeSuitcase(false);
         Level.RunPickupSuitcaseJob(npc, nil);
      end      
   end   
end

--------------------------------------------------------
-- Name: Level.OnSeeCustomObject()
-- Desc:
--------------------------------------------------------
function Level.OnSeeCustomObject(npc, objectId)
   AI.Debug(npc, "Level.OnSeeCustomObject", tostring(objectId));
   
   -- check guards eyes
   local npcId = AI.GetUID(npc);
   if (npcId != nil) then
      if (Level.GetIndex(Level.GuardsCanSeeSuitcase, npcId) != -1) then
      
         -- store info...
         Level.MemoryStoreItemObject(npc, objectId, true);
         
         local job = AI.GetScriptJob("TASK_SCRIPT_SEE_SUITCASE");
         
         local anchorId = 'A223';
         local anchor = AI.FindAnchor(anchorId);
         
         if ((job == nil) and (AI.IsAnchorBinded(anchor) == false)) then
            local properties = Level.CreateCustomParams();
   
            Level.SetValue(properties, "CustomString_1", anchorId );
            Level.SetValue(properties, "CanBeDisabled", false );
            
            AI.AnchorBindProtect(anchor, true);

            AI.RunScriptTask(npc, "game:Levels\\Dora\\Jobs\\SeeSuitcase_safe.lua", AI.LOGIC_DEFAULT, properties);
            
            Level.AddSmallMessage( MissionText.Message_SuitcaseFounded, 5.0, 175, 175, 175 );
         end
      end
   end

   -- Identify this object at npc memory
   if (Level.IsWatchingSuitcase(npc) == false) then
      return;
   end

   local updated = Level.MemoryStoreItemObject(npc, objectId, true);
   
   if (updated == true) then
      Level.SuitcaseDisapeared = false;
      Level.UpdateSuitcaseZoneState();
   end
   
   local job = AI.GetScriptJob(npc);
   if (job != nil) then
      
      local needsSendMessage = Job.SendMessage( job, fourCC2int('IFND'), 0, 0 ) == 1;
      
      if ((updated == true) or (needsSendMessage == true)) then
         Job.SendMessage( job, fourCC2int('SECS'), objectId, 0 );
      end
      
   else
      if (Level.IsTriggingPickupSuitcaseNPC(npc, true) == true) then
         Level.RunPickupSuitcaseJob(npc, objectId);
      end
   end

end

--------------------------------------------------------
-- Name: Level.RemoveFromPickupSuitcaseList()
-- Desc:
--------------------------------------------------------
function Level.RemoveFromPickupSuitcaseList( npcId )
   AI.Debug(nil, "Level.RemoveFromPickupSuitcaseList", "");
   Level.TypeAssert( "Level.RemoveFromPickupSuitcaseList()", {npcId, "string"} );

   local npc = AI.FindNPC( npcId );
   
   if (npc == nil) then
      return;
   end
   
   -- Stop all script job
   if (Level.ExistsArray(Level.TriggerPickupSuitcaseNPC, npcId) == true) then
      AI.FailTask( npc, AI.TASK_SCRIPT_DEFAULT );
   end
   
   Level.EraseFromArray(Level.TriggerPickupSuitcaseNPC, npcId);
end

--------------------------------------------------------
-- Name: Level.AddToPickupList()
-- Desc:
--------------------------------------------------------
function Level.AddToPickupList( npcId )
   Level.TypeAssert( "Level.AddToPickupList()", {npcId, "string"} );
   
   local npc = AI.FindNPC(npcId);
   if (npc == nil) then
      return false;
   end
   
   Level.AddToArray(Level.TriggerPickupSuitcaseNPC, npcId);   
   
   for i in Level.SuitCases do
      local object = Level.GetAIMemoryStoredObject( npc, Level.SuitCases[i] );
      if (object != nil) then
         Level.RunPickupSuitcaseJob(npc, nil);
         return true;
      end
   end
   
   -- If there is no suitcases info, -> call alarm :) ...
   -- Trigger alarm...
   Level.DoSuitcaseIsNotFound( npc );
   return false;
end

--------------------------------------------------------
-- Name: Level.AddSuitcase()
-- Desc:
--------------------------------------------------------
function Level.AddToCheckSuitcaseList( npcId )
   Level.TypeAssert( "Level.AddToCheckSuitcaseList()", {npcId, "string"} );
   
   local npc = AI.FindNPC(npcId);
   if (npc == nil) then
      return;
   end
   
   Level.AddToArray(Level.CheckSuitcaseNPC, npcId);   
end

--------------------------------------------------------
-- Name: Level.AddSuitcase()
-- Desc:
--------------------------------------------------------
function Level.AddSuitcase(suitcaseId)
   Level.TypeAssert( "Level.AddSuitcase()", {suitcaseId, "string"} );
   
   local suitcase = Level.FindItem( suitcaseId );
   if (suitcase == nil) then
      return;
   end
   
   if (Level.PlayerHasSuitcase != suitcaseId or
       Level.PlayerHasSuitcase == '') then
       
      AI.AddCustomObject(suitcaseId, suitcase, false);
      
   end
   
   Level.AddToArray(Level.SuitCases, suitcaseId);
end

--------------------------------------------------------
-- Name: Level.UpdateSuitcaseZoneState()
-- Desc:
--------------------------------------------------------
function Level.UpdateSuitcaseZoneState()
   -- Check player has suitcase...
   
   AI.EnableZone("GlobalSuitcaseZone", false);
   AI.EnableZone("LocalSuitcaseZone", false);
   
   if (Level.PlayerHasSuitcase == '') then
      return;
   end
   
   if (Level.SuitcaseDisapearedGlobal == true) then
      
      if (Level.GetDifficulty() >= 2) then
         AI.EnableZone("GlobalSuitcaseZone", true);
      else
         if (Level.DelegationHasSuitcase != true) then
            AI.EnableZone("GlobalSuitcaseZone", true);
         end
      end
      
      if (noNpcSuitcase == true) then
         AI.EnableZone("LocalSuitcaseZone", true);
      end
   end
   
   if ((Level.SuitcaseDisapeared == true) or 
       (Level.GotSuitcase == true)) then
      AI.EnableZone("LocalSuitcaseZone", true);

      return;
   end
end


--------------------------------- Level scenary ------------------------------

--------------------------------------------------------
-- Name: Level.OnGoSmokingTimer()
-- Desc:
--------------------------------------------------------
function Level.OnGoSmokingTimer()
   local scientist = AI.FindNPC('SC03');
   local man = AI.FindNPC('GY16');
   
   if (AI.IsDefault(scientist)) then
      Level.RunAnchorJob(scientist, 'AN45', false);
   end
   
   if (AI.IsDefault(man)) then
      Level.RunAnchorJob(man, 'AN46', false);
   end
end

--------------------------------------------------------
-- Name: Level.OnState3CutScene()
-- Desc:
--------------------------------------------------------
function Level.OnState3CutScene()
   if ((Level.PlayerHasActualSuitcase() == false) and
       (Level.PlayerGotActualSuitcase == false or Level.DelegationHasBadSuitcase == false)) then
       
      Level.BeginCutScene("state_3", "Levels\\Dora\\state_3.scm", MissionText.Message_DelegationState_3, 15.0, { 3, 29.0, 40.0, 90.0, 255 } );
   end
end

--------------------------------------------------------
-- Name: Level.SetLevelState()
-- Desc:
--------------------------------------------------------
function Level.ChangeDelegationState( state )
   
   AI.Debug(nil, "Level.ChangeDelegationState", tostring(state));
   
   Level.DelegationState = state;
   
   -- reset synchro anchors...
   for i in Level.SynchroAnchor do
      Level.SynchroAnchor[i] = nil;
   end
   
   
   -- COUR - courier
   -- DIL1 - delegation #1
   -- DIL2 - delegation #2
   -- DIL3 - delegation #3
   
   local job = "state_" .. tostring(state);

   for i in Level.Delegation do
      AI.SetJob(AI.FindNPC(Level.Delegation[i]), job);
   end
   
   if (state == 1) then
   
      AI.SetJob(AI.FindNPC('BS05'), "default");
      
      AI.EnableZone("DelegationRoomZone", false);
      AI.EnableZone("DelegationRoomZoneEnter", false);
      AI.EnableZone("MainHouseEnter2", true);

   elseif (state == 2) then
      Level.InstallDpc("Level.SoldiersSalut()", 7.8);
      
      Level.AddSuitcase( 'SUC1' );
      Level.AddSuitcase( 'SUC2' );
      
      Level.AddToCheckSuitcaseList( 'OFFS' );
      Level.AddToCheckSuitcaseList( 'COUR' );
      
      AI.EnableZone("DelegationRoomZone", true );
      AI.EnableZone("DelegationRoomZoneEnter", true );
      AI.EnableZone("MainHouseEnter2", false);
      AI.EnableZone("CourierGlobal", true);
      
      Level.ClearLargeMessages();
      
   elseif (state == 3) then
   
      Level.InstallDpc("Level.OnState3CutScene()", 5.5);
      
      AI.EnableZone( "DelegationRoomZone", false );
      AI.EnableZone( "DelegationRoomZoneEnter", false );
      AI.EnableZone( "MainHouseEnter2", true);
      
      AI.EnableZone( "MainBuildingGuardPart", false);
      
   elseif (state == 5) then
   
      AI.EnableZone( "MainBuildingGuardPart", true);
      
      -- Remove courier from synchro array...
      Level.EraseFromArray(Level.Delegation, 'COUR');
      
   end
   
   Level.UpdateDelegationMark();
end

--------------------------------------------------------
-- Name: Level.CheckStartFirstState()
-- Desc:
--------------------------------------------------------
  function Level.CheckStartFirstState()
     if (Level.DelegationState == 0) then
        Level.ChangeDelegationState(1);
     end
  end


--------------------------------------------------------
-- Name: Level.SoldiersSalut()
-- Desc:
--------------------------------------------------------
function Level.SoldiersSalut()
   local soldiers = { 'BS22', 'BS23' };
   local anchors = { 'A146', 'A147' };
      
   for i in soldiers do
      Level.RunAnchorJobIfDefault(AI.FindNPC(soldiers[i]), anchors[i]);
   end
end

--------------------------------------------------------
-- Name: Level.CanChangeDelegationState()
-- Desc:
--------------------------------------------------------
function Level.CanChangeDelegationState()
   if (AI.FindNPC('OFFS') == nil) then 
      return false;
   end
   
   if (AI.FindNPC('COUR') == nil and
       Level.DelegationState < 4) then
       
       return false;
   end
   
   for i in Level.Delegation do
      local npcId = Level.Delegation[i];
      local npc = AI.FindNPC(npcId);
      
      if (npc != nil) then
      
         if (AI.GetAttention(npc) != AI.ATTENTION_RELAX) then
            return false;
         end
      
         local anchorId = Level.SynchroAnchor[npcId];
         if (anchorId == nil) then
            return false;
         end 
         
         local anchor = AI.FindAnchor(anchorId);
         
         if (anchor == nil) then
            return false;
         end
         
         if (AI.IsUsingAnchor(npc, anchor) == false) then
            return false;
         end
         
         if (Level.DelegationState == 3) then         
            if (Level.PlayerWasAtHouse == false) then
               return false;
            end
         end
      end
   end
   
   return true;
end

--------------------------------------------------------
-- Name: Level.OnEnterMainHouse()
-- Desc:
--------------------------------------------------------
function Level.OnEnterMainHouse()
   Level.PlayerWasAtHouse = true;
   
   --Level.UnregisterTrigger(Level.FindTrigger("SimpleTrigger18"));
   --Level.UnregisterTrigger(Level.FindTrigger("SimpleTrigger19"));
end

--------------------------------------------------------
-- Name: Level.StartArhiveScript()
-- Desc:
--------------------------------------------------------
function Level.StartArhiveScript()
   local npc = AI.FindNPC('EM10');
   
   if (AI.IsDefault(npc) == true) then
      local courier = AI.FindNPC('COUR');
      -- Start archive job
      AI.SetJob(courier, "wait_archive");
      
      -- Start archive man script job
      Level.RunAnchorJob3(npc, 'AD10', 'A181', 'A187', true);
      
      -- Voice message
      Level.VoiceMessage(courier, nil, "Message_SayArchive");
   end
end

--------------------------------------------------------
-- Name: Level.StartCourierArchiveJob()
-- Desc:
--------------------------------------------------------
function Level.StartCourierArchiveJob()
   local courier = AI.FindNPC('COUR');
   if (Level.DelegationState == 4 and AI.IsDefault(courier)) then
      AI.SetJob(courier, "archive_job");
   end
end

--------------------------------------------------------
-- Name: Level.OnNotifySynchroAnchor()
-- Desc:
--------------------------------------------------------
function Level.OnNotifySynchroAnchor( npc, anchor )
   -- check can change state:
   
   if (Level.CanChangeDelegationState() == true) then
      Level.ChangeDelegationState( Level.DelegationState + 1);
   end
   
end

--------------------------------------------------------
-- Name: Level.StartStorageScript()
-- Desc:
--------------------------------------------------------
function Level.StartStorageScript()

     local npc = AI.FindNPC('EM12');
     
     if (AI.IsDefault(npc) == true) then

        local properties = Level.CreateCustomParams();

        Level.SetValue(properties, "CustomString_1", 'AND1' );
        Level.SetValue(properties, "CustomString_2", 'AN79' );
        Level.SetValue(properties, "CustomString_3", 'AND2' );
        Level.SetValue(properties, "CustomString_4", 'AND3' );
        Level.SetValue(properties, "CustomString_5", 'AN80' );	

        AI.RunScriptTask(npc, "scripts:job\\AnchorJob5_safe.lua", AI.LOGIC_DEFAULT, properties);
        
     end
end

--------------------------------------------------------
-- Name: Level.OnDoctorPushDrug()
-- Desc:
--------------------------------------------------------
function Level.OnDoctorPushDrug( isPlayer )
   if (Level.CourierIsSleeping == false and AI.FindNPC('COUR') != nil) then
      if (isPlayer == false) then
         Level.InstallDpc("Level.DoDrinkDrug()", 2.0);
      else
         Level.InstallDpc("Level.DoDrinkDrug()", 4.0);
      end
   end
   
   AI.SetJob( AI.FindNPC('DCT1'), "default" );
end

--------------------------------------------------------
-- Name: Level.DoDrinkDrug()
-- Desc:
--------------------------------------------------------
function Level.DoDrinkDrug()
   if (Level.CourierIsSleeping == false) then
      AI.SetJob( AI.FindNPC('COUR'), "drinkdrug" );
   end
end

--------------------------------------------------------
-- Name: Level.OnDrinkDrug()
-- Desc:
--------------------------------------------------------
function Level.OnDrinkDrug()

   local npc = AI.FindNPC('COUR');
   
   if (Level.DrugPoissonUses == true) then
      AI.SetGameFlag(npc, AI.F_ACCIDENT_BODY, true);
      AI.KillNPC(npc, 4.0);
      
      AI.SetJob( npc, "return" );
      return;
   end
   
   if (Level.DrugHloroformUses == true) then
      Level.CourierIsSleeping = true;
      AI.SetJob( npc, "sleep" );
      return;
   else
      AI.SetJob( npc, "return" );
      return;
   end
end

--------------------------------------------------------
-- Name: Level.OnReturnHome()
-- Desc:
--------------------------------------------------------
function Level.OnReturnHome()
   AI.SetJob( AI.FindNPC('COUR'), "last" );
end

--------------------------------------------------------
-- Name: Level.OnSoldiersGoSmoking()
-- Desc:
--------------------------------------------------------
function Level.OnSoldiersGoSmoking()
   local soldiers = { 'BS09', 'BS10', 'BS11' };
   local anchors = { 'A218', 'A216', 'A217' };
   
   for i in soldiers do 
      if (AI.IsDefault(AI.FindNPC(soldiers[i])) == false) then
         return;
      end
   end
   
   for i in soldiers do
      local npc = AI.FindNPC(soldiers[i]);
      Level.RunAnchorJob(npc, anchors[i], false);
   end
   
   AI.EnableZone("GuardRoomEnter", true);
   Level.AddTimer( 'GRZT', "OnResetGuardRoomZone", 2.0, true );
end

--------------------------------------------------------
-- Name: Level.OnResetGuardRoomZone()
-- Desc:
--------------------------------------------------------
function Level.OnResetGuardRoomZone()
   local soldiers = { 'BS09', 'BS10', 'BS11' };
   for i in soldiers do
      local npc = AI.FindNPC(soldiers[i]);
      if (npc != nil) then
         if (AI.IsScriptTask(npc) == true) then
            return;
         end
      end
   end
   
   AI.EnableZone("GuardRoomEnter", false);
   Level.RemoveTimer('GRZT');
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Soldier()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Soldier()
   Level.OnChangeCloth_Default(0);
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Doctor()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Doctor()
   Level.OnChangeCloth_Default(0);
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth_Cryptman()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth_Cryptman()
   Level.OnChangeCloth_Default(0);
end

--------------------------------------------------------
-- Name: Level.NeedEnableMark()
-- Desc:
--------------------------------------------------------
function Level.NeedEnableMark(markId)
   if (markId == 'CIGR' or markId == 'WPIS' or markId == 'VOLT') then
      if (markId == 'CIGR' and Level.PrPoissonSmoke == true) then
         return false;
      end

      if (markId == 'WPIS' and Level.PrPoissonWater == true) then
         return false;
      end
      
      if (markId == 'WPIS' and Level.GetDifficulty() >= 2) then
         return false;
      end
      
      return Level.IsMissionTaskCompleted('KILL') == false;
   end
         
   if (markId == 'HLOR') then      
      if (Level.DrugHloroformUses == false and Level.DrugHlorPickuped == false) then
        return true;
      else
        return false;        
      end
      
   elseif (markId == 'WEGR') then
   
      return AI.GetPlayerForm() != "Soldier" and
             Level.GetDifficulty() == 0;
             
   elseif (markId == 'PAS1' or
           markId == 'PAS2') then
   
      return Level.GetDifficulty() == 0 and 
             Level.PlayerHasPass() == false and
             Level.ShowPassMark == false;
      
   elseif (markId == 'DIS2') then
   
      return Level.IsMissionTaskCompleted('DISC') == false and 
             Actor.HasCustomEquipment(Level.GetPlayer(), 'DISC') == true;
   
   end
      
   -- and (Level.DrugPoissonUses == false);   
   
   return false;
end

--------------------------------------------------------
-- Name: Level.OnHelloOfficer()
-- Desc:
--------------------------------------------------------
function Level.OnHelloOfficer()
   local officer = AI.FindNPC('OFFS');
   if (AI.IsDefault(officer) == true) then
       Level.RunAnchorJob(officer, 'A131', false);
       
       Level.BeginCutScene("state_1", "Levels\\Dora\\state_1.scm", MissionText.Message_DelegationState_1, 15.0, { 3, -110.0, 70.0, 110.0, 255 } );
       Level.InstallDpc("AI.HandleVoice(AI.FindNPC('COUR'), '%Script02_Sound')", 0.1);
   end
end

--------------------------------------------------------
-- Name: Level.OnTalkSoldier()
-- Desc:
--------------------------------------------------------
function Level.OnTalkSoldier()
   local soldier = AI.FindNPC('BS13');
   
   if (AI.IsDefault(soldier) == true) then
       Level.InstallDpc("Level.RunAnchorJob(AI.FindNPC('BS13'), 'A204', false)", 3.0);
       
       if ((Level.PlayerHasActualSuitcase() == false) and
           (Level.PlayerGotActualSuitcase == false or Level.DelegationHasBadSuitcase == false)) then
           
          Level.BeginCutScene("state_5", "Levels\\Dora\\state_5.scm", MissionText.Message_DelegationState_5, 8.0, { 3, 20.0, 50.0, 70.0, 255 } );
          
       end
   end
   
   Level.InstallDpc("AI.HandleVoice(AI.FindNPC('COUR'), '%Script05_Sound')", 0.1);
end

--------------------------------------------------------
-- Name: Level.OnRecallSuitcase
-- Desc:
--------------------------------------------------------
function Level.OnRecallSuitcase(index)
   if (index == 1) then
      -- for test...
      -- Level.BeginCutScene("state_2", "Levels\\Dora\\state_2_suit.scm", "", 10.0 );
      
      AI.EnableZone("LocalSuitcaseZone", true);
   end
end

--------------------------------------------------------
-- Name: Level.GetNumKilled()
-- Desc:
--------------------------------------------------------
function Level.GetNumKilled(form)
   if (Level.NumKilled[form] == nil) then
      return 0;
   end
   
   return Level.NumKilled[form];
end

--------------------------------------------------------
-- Name: Level.PersonKillHandler()
-- Desc:
--------------------------------------------------------
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

--------------------------------------------------------
-- Name: Level.OnActorKilled()
-- Desc:
--------------------------------------------------------
function Level.OnActorKilled( actor )
      
   local npc = AI.FromActor ( actor );
   if (npc != nil) then
      local form = AI.GetForm( npc );
      if (Level.NumKilled[form] == nil) then
         Level.NumKilled[form] = 0;
      end
      
      local uniqueId = AI.GetUID(npc);
      if (uniqueId == 'PROF') then
         return;
      end
      
      Level.NumKilled[form] = Level.NumKilled[form] + 1;
      
      local civilianKilled = Level.GetNumKilled("Civilian") + Level.GetNumKilled("Doctor") + Level.GetNumKilled("StorageMan") + Level.GetNumKilled("Professor");
      local soldiersKilled = Level.GetNumKilled("Soldier") + Level.GetNumKilled("Cryptman") + Level.GetNumKilled("Officer");

      if (form == "Civilian" or form == "Doctor" or form == "StorageMan" or form == "Professor") then
         if (civilianKilled > 3) then
            Level.PersonKillHandler( 5, civilianKilled, MissionText.Kill_Civilians );
         end
      elseif (form == "Soldier" or form == "Cryptman" or form == "Officer") then
         if (soldiersKilled > 3) then
            Level.PersonKillHandler( 5, soldiersKilled, MissionText.Kill_Soldiers );
         end
      end      
   end
end

--------------------------------------------------------
-- Name: Level.OnEnterDisablePass()
-- Desc:
--------------------------------------------------------
function Level.DisableMainHouseZone()
   AI.EnableZone("MainHouse",          false);
   AI.EnableZone("MainHouseEnter",     false);
   AI.EnableZone("MainHouseEnter2",    false);

   Level.AddTimer( 'RZNS', "RestoreZones", 5.0 * 60.0, false );
   -- Level.InstallDpc("Level.RestoreZones()", 5.0 * 60.0);
end

--------------------------------------------------------
-- Name: Level.OnTryGetSmoke()
-- Desc:
--------------------------------------------------------
function Level.OnTryGetSmoke()
   local npc = AI.FindNPC('EM13');
   if (AI.IsDefault(npc) == true) then
      -- Mark anchor completed
      local prof = AI.FindNPC('PROF');
      AI.TaskCommand(prof, "current_anchor_completed", "", "");
      
      -- Run smoking script job
      Level.RunAnchorJob3( prof, 'A271', 'A275', 'A232', true );
      
      -- Install dpc for em13
      Level.InstallDpc("Level.RunSmokeManScriptJob()", 10.0);
      
      Level.InstallDpc("Level.RunSmokeManScriptJob()", 110.0);
      
   else
      Level.AddTimer( 'CPST', "OnCheckProfessorSmoke", 0.5, true );
      Level.InstallDpc("Level.RemoveTimer('CPST')", 10.0);
      
      Level.AddTimer( 'CPMT', "OnChangeProfessorMark", 10.0, false );
   end
end

--------------------------------------------------------
-- Name: Level.OnChangeProfessorMark()
-- Desc:
--------------------------------------------------------
function Level.OnChangeProfessorMark()
   Level.UpdateProfessorMark(2);
end


--------------------------------------------------------
-- Name: Level.OnCheckProfessorSmoke()
-- Desc:
--------------------------------------------------------
function Level.OnCheckProfessorSmoke()
   local player = Level.GetPlayer();
   if (Level.PlayerAtSmokingPlace == false) then
      return;
   end
          
   local prof = AI.FindNPC('PROF');
   
   if (AI.IsDefault(prof) == false) then
      return;
   end
   
   if (Level.HasPlayerAction('SMOK') == true) then
      return;
   end
   
   if (Level.PrPoissonSmoke == true) then
      return;
   end

   local properties = Level.CreateCustomParams();

   Level.SetValue(properties, "CustomString_1", "Relaxed_Talk_Express1" );
   Level.SetValue(properties, "CustomString_2", "7.0" );
   Level.SetValue(properties, "CustomString_3", "Level.OnAscPlayerSmoke()" );

   AI.RunScriptTask(prof, "scripts:job\\PlayerAnimTask.lua", AI.LOGIC_DEFAULT, properties);

   -- voice message...
   Level.VoiceMessage(prof, "male_eng_script_script_09", "Message_AscSmoking");

   -- add player action...
   if (Level.GetPlayerCigarettes() != nil) then
      Level.SafeAddLevelPlayerAction('SMOK', MissionText.Message_PlayerGiveSmoke );
   end
   
   Level.RemoveTimer('CPST');
end

--------------------------------------------------------
-- Name: Level.RunSmokeManScriptJob()
-- Desc:
--------------------------------------------------------
function Level.RunSmokeManScriptJob()
   if (Level.ShowedSmokeCutscene == true) then
      Level.RunAnchorJob3(AI.FindNPC('EM13'), 'A280', 'A276', 'A277');
   end
end

--------------------------------------------------------
-- Name: Level.OnAscPlayerSmoke()
-- Desc:
--------------------------------------------------------
function Level.OnAscPlayerSmoke()
   Level.SafeRemoveLevelPlayerAction('SMOK');
end

--------------------------------------------------------
-- Name: Level.OnAscSmoking()
-- Desc:
--------------------------------------------------------
function Level.OnAscSmoking()
   -- Voice message
   -- Install npc new job
   local prof = AI.FindNPC('PROF');
   Level.VoiceMessage(prof, "male_eng_script_script_09", "Message_AscSmoking");
   
   local npc = AI.FindNPC('EM13');
   if (AI.IsDefault(npc) == true) then
      Level.RunAnchorJob2(npc, 'A272', 'A273', false);
   end
end

--------------------------------------------------------
-- Name: Level.OnNotifyInvestigatedBody()
-- Desc:
--------------------------------------------------------
function Level.OnNotifyVisitedBody(npc, body, accident)
   
   AI.Debug(npc, "Level.OnNotifyVisitedBody", "accident:", tostring(accident));
   
   -- enable body alert zone
   -- check accident state
   if (accident == true) then
      return;
   end
   
   if (Level.AlertBodyCalled == true) then
      return;
   end
   
   if (AI.IsScriptTask(npc) == true) then
      return;
   end
   
   if (AI.IsGoingAlert(-1) == true) then
      return;
   end
   
   local job = AI.GetScriptJob("TASK_SCRIPT_CALL_ALERT");
   if (job != nil) then
       return;
   end
   
   if (AI.GetForm(npc) == "Soldier" or
       AI.GetForm(npc) == "Cryptman") then
       
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
		
  		  AI.RunScriptTask(npc, "scripts:job\\CallAlert.lua", AI.LOGIC_DEFAULT, properties);
       end       
   end
end

--------------------------------------------------------
-- Name: Level.OnCallBodyAlert()
-- Desc:
--------------------------------------------------------
function Level.OnCallBodyAlert()
   if (Level.AlertBodyCalled == false) then
      Level.AddSmallMessage( MissionText.Message_BodyAlertZone, 5.0, 255, 0, 0 );
   
      AI.OnPlayerEnterZone("BodyAlertZone", 'BAZN');
      
      -- FIX: 06.10.09      
      Level.PlayerWasAtHouse = true;
      
      Level.AlertBodyCalled  = true;
   end
end

--------------------------------------------------------
-- Name: Level.OnOfficerCloth()
-- Desc:
--------------------------------------------------------
function Level.OnOfficerCloth()
   Level.AddSmallMessage( MissionText.Message_OfficerWarning, 5.0, 175, 175, 175 );
end

--------------------------------------------------------
-- Name: Level.OnOfficerCloth()
-- Desc:
--------------------------------------------------------
function Level.OnCheckHasPoisson()
   if (Level.HasPoisson() == false and 
       Level.IsMissionTaskCompleted('KILL') == false) then
      Level.AddSmallMessage( MissionText.Message_NeedsPoisson, 5.0, 175, 175, 175 );
   end
end

--------------------------------------------------------
-- Name: Level.UpdateProfessorMark()
-- Desc:
--------------------------------------------------------
function Level.UpdateProfessorMark(state)
   Level.EnableLevelMark('PROF', false);
   Level.EnableLevelMark('PRO1', false);
   Level.EnableLevelMark('PRO2', false);
   
   if (Level.IsMissionTaskCompleted('KILL') == true) then
      return;
   end
   
   if (state == 0) then
      Level.EnableLevelMark('PROF', true);
      Level.SetMissionTaskFloor('KILL', 2);
   else
      Level.EnableLevelMark('PRO' .. tostring(state), true);
      Level.SetMissionTaskFloor('KILL', 0);
   end
end

----------------------- Debug methods ----------------------------------------

--------------------------------------------------------
-- Name: Level.OnSendDelegation()
-- Desc:
--------------------------------------------------------
function Level.OnSendDelegation()
   Level.VoiceMessage(AI.FindNPC('BS05'), "%Script01_Sound", "Message_SendDelegation", 120.0);
end

--------------------------------------------------------
-- Name: Level.HackChangeAttention()
-- Desc:
--------------------------------------------------------
function Level.HackChangeAttention()
   AI.DirtyChangeAttention( AI.FindNPC('NPC1'), AI.ATTENTION_RELAX, false);
end

--------------------------------------------------------
-- Name: Level.HackStartLastState()
-- Desc:
--------------------------------------------------------
function Level.HackStartLastState()
   Level.AddSuitcase( 'SUC1' );
   Level.AddSuitcase( 'SUC2' );
   Level.AddToCheckSuitcaseList( 'COUR' );
   Level.AddToPickupList( 'COUR' );
   
   Level.ChangeDelegationState( 5 );
end

--------------------------------------------------------
-- Name: Level.OnChangeCloth()
-- Desc:
--------------------------------------------------------
function Level.OnChangeCloth()
   if (AI.GetPlayerForm() == "Soldier") then
      Level.EnableLevelMark('WEGR', false);
   end
   
   if (AI.GetPlayerForm() != "Civilian") then
      Level.ShowPassMark = true;
      Level.EnableLevelMark('PAS1', false);
      Level.EnableLevelMark('PAS2', false);
   end
     
   Level.InstallDpc("Level.OnHelpForm()", 3.0);
end

--------------------------------------------------------
-- Name: Level.HackPlaySound()
-- Desc:
--------------------------------------------------------
function Level.HackPlaySound()
   AI.HandleVoice(AI.FindNPC('OFFS'), "%Script04_Sound");
end

--------------------------------------------------------
-- Name: Level.HackCreatePass()
-- Desc:
--------------------------------------------------------
function Level.HackCreatePass()
          local actor = Level.GetPlayer();
          local pass = Level.CreateItem( "Custom" , "Equipment" );
          
          if (actor == nil) then
             print("Warning! Can't find actor " .. passNpc[i]);
          end

          if (pass != nil and actor != nil) then

             Entity.SetUniqueID( pass, 'PASS' );
          
             Level.SetCustomItemName( pass, MissionText.Message_PassName );
             Level.SetCustomItemIcon( pass, "ammo_doc" );

             Actor.PutPouch( actor, Actor.GetEmptyPouch(actor), pass );
          end
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformStats(levelStats, aiStats)
   if (Level.IsMissionTaskCompleted('KILL') == true) then
      Level.DecrementLevelStats(levelStats, "NumCivilianManKilled");
      
      if (Level.IsAccidentBody('PROF') == true) then

         local actor = Level.FindActor('EM13');
         if (Actor.IsDead(actor) == false and Actor.IsHitted(actor) == true) then
            Level.DecrementLevelStats(levelStats, "NumCivilianStuned");
         end
         
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnTransformStats()
-- Desc:
--------------------------------------------------------
function Level.OnTransformInputs(levelStats, aiStats, a, c, p, n, acc)
   c = c * 1.8;
   n = n * 1.2;
   
   if (Level.SuitcaseDisapeared == true) then
      n = n + 0.1;
   end
   
   if (Level.SuitcaseDisapearedGlobal == true) then
      n = n + 0.2;
   end
   
   if (Level.AlertBodyCalled == true) then
      n = n + 0.5;
   end
      
   p = Level.DefaultCalcProf(c, n, acc);

   if (Level.IsAccidentBody('PROF') == true) then
      p = p + 0.1;
   end
   
   if (Level.IsMissionTaskCompleted('DISC') == true) then
      p = p + 0.05;
   end
   
   if (Level.DelegationHasBadSuitcase == true) then
      p = p + 0.15;
   else
      if (Level.CourierIsSleeping == true) then
         if (AI.FindNPC('COUR') != nil) then
            p = p + 0.05;
         end
      elseif (Level.IsAccidentBody('COUR') == true) then
         p = p + 0.025;
      end
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
-- Name: Level.HackStartScript2()
-- Desc:
--------------------------------------------------------
function Level.HackStartScript2()
   local npc = AI.FindNPC('COUR');
   if (npc != nil) then
      Level.RunAnchorJob(npc, 'A202', true);
   end
end

--------------------------------------------------------
-- Name: Level.HackPickUpSuitcase()
-- Desc:
--------------------------------------------------------
function Level.HackPickUpSuitcase()
   Level.RunPickupSuitcaseJob(AI.FindNPC('NPC1'), 'SUC1', false, false);
end

--------------------------------------------------------
-- Name: Level.HackStartScript()
-- Desc:
--------------------------------------------------------
function Level.HackStartScript()
   Level.CheckSuitcaseNPC         = { };
   Level.TriggerPickupSuitcaseNPC = { };

   Level.AddSuitcase( 'WB03' );
   Level.AddToCheckSuitcaseList( 'NPC1' );
    
   AI.SetJob(AI.FindNPC('NPC1'), "test");
   Level.RunAnchorJob(AI.FindNPC('NPC1'), 'AN01', true);
end
