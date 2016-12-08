
  MissionText = 
  {
      --Mission text
      Task_1                = " Meet the messenger";
      Task_2                = " Set the messenger free";
      Task_3                = " Collect the layouts";
      Task_4                = " Leave the area";
      Message_1             = "Tasks have been changed";
      Message_2             = "Tasks have been updated";
      Fail_KKilled          = "The messenger has been killed";
      Docs_Tip              = "Layouts of enemy's defensive positions";
      Message_Alarm         = "The alarm has been raised. The number of patrols has increased..";
      Message_AlarmFinished = "Guards are standing down..";
      Message_StopMove      = "Only officers are allowed to pass here..";
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' ); -- forlik

  end;

  function Level.OnFinishLoad()

     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar("r_farclip" , 5000 ); -- forlik
     System:SetVar("r_vegalpha", 96 );
     System:SetVar("r_shadowsampledif", 0.35 );
     System:SetVar( "r_dofsky", 128 ); --forlik
     -- forlik System:SetVar("r_glow", true );
     -- forlik System:SetVar("r_glow_r", 0.8 );

     Level.AddMusic( Level.MUSIC_MOOD_ATTENTION   , "sounds\\music\\action_2.ogg");
     Level.AddMusic( Level.MUSIC_MOOD_ACTION, "sounds\\music\\action_1.ogg" );

     -- create snow
      
     local snow = Level.CreateEffect( 'SNOW' , Actor.GetNode( Level.GetPlayer() ) );
     if ( snow != nil ) then
         
         Level.SetEffectParameter( snow, "snow.CancelArea" , 548.6905,-105.2335,-1387.0884,571.6905,-76.2335,-1157.0884 );
         Level.SetEffectParameter( snow, "snow.CancelArea" , 548.1057,-105.2335,-1623.5072,571.1057,-76.2335,-1514.5072 );
         Level.SetEffectParameter( snow, "snow.CancelArea" , 548.1057,-105.2335,-911.5712,571.1057,-76.2335,-311.5712 );

       --Level.SetEffectParameter( snow, "wind.EmitNumber", 250 );         
       --Level.SetEffectParameter( snow, "wind.Alpha", 200 );

     end

     -- patch
     local backpack = Level.FindContainer();
     if (backpack != nil) then
         Level.EnableItemPickup(backpack, true);
     end

  end;

  function Level.OnSave()

     Stream.WriteBool( Level.DocsComplete );
     Stream.WriteBool( Level.KurierFree );

     Stream.WriteBool( Level.Alarm[1] );
     Stream.WriteBool( Level.Alarm[2] );
     Level.OnSave_Common(); -- forlik
  end;

  function Level.OnLoad()

     Level.DocsComplete = Stream.ReadBool();
     Level.KurierFree   = Stream.ReadBool();

     Level.Alarm = {};

     Level.Alarm[1]     = Stream.ReadBool();
     Level.Alarm[2]     = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();

  end;

  function Level.OnLoaded()

     Level.OnLoaded_Common(); -- forlik
     Level.AddMissionTask( MissionText.Task_1, 'GETK', "levels\\posilka\\kur_task.txt" );

     Level.DocsComplete = false;
     Level.KurierFree   = false;

     Level.Alarm = {};

     Level.Alarm[1]     = false;
     Level.Alarm[2]     = false;

     local kurier = Level.FindActor( 'PKUR' );
     if ( kurier != nil ) then
        Actor.SetMapHidden( kurier, true );
     end;

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "PKUR" , "OnKilledKurier");

     -- patch
     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GO07" , "OnKilledMarkedOfficer");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "GO07" , "OnKilledMarkedOfficer");

     Level.AddActionHandler( Level.AH_ACTOR_KILLED , "GO02" , "OnKilledMarkedOfficer");
     Level.AddActionHandler( Level.AH_ACTOR_HITTED , "GO02" , "OnKilledMarkedOfficer");

     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );

     local docs = Level.CreateItem( "Custom" , "Equipment" );
     if ( docs != nil ) then

       Entity.SetUniqueID( docs, 'ADOC' );

       Level.SetCustomItemName( docs, MissionText.Docs_Tip );
       Level.SetCustomItemIcon( docs, "ammo_doc" );
     
       local officer = Level.FindActor('PAUL');
       if ( officer != nil ) then 
         Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), docs );
       end;

     end;

     Level.EnableLevelMark( 'OFFR' , false );
     --- init player

     local player     = Level.FindActor('PLYR');
     if ( player != nil ) then

       Actor.ChangeActorSkin( player, "Winter" );

       if ( Level.HasPlayerEquipPack() == false ) then

         local machineGun = Level.CreateItem("ppsh","Weapon");
         local pistol     = Level.CreateItem("NaganSilencer","Weapon");
         local knife      = Level.CreateItem("knife","Weapon");

         Actor.PutWeapon( player, Actor.WEAPON_SLOT_PISTOL , pistol );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_MACHINEGUN, machineGun );
         Actor.PutWeapon( player, Actor.WEAPON_SLOT_KNIFE, knife );
       
         Actor.PutWeaponAmmo( player, "ppsh");
         Actor.PutWeaponAmmo( player, "ppsh");
         Actor.PutWeaponAmmo( player, "nagan");
         Actor.PutWeaponAmmo( player, "nagan");

         Actor.PutEmptyPouch( player, "fiberwire", "Weapon" );
         Actor.PutEmptyPouch( player, "medikit", "Equipment" );
 
         Actor.PutEmptyPouch( player, "binocular", "Equipment" );
 
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "f1", "Weapon" );
         Actor.PutEmptyPouch( player, "smoke", "Weapon" );

         --local pack = Level.CreateItem( "rukzakwinter", "container" );
         --if ( pack == nil ) 
         --  then
         --   error('Failed create player pack');
         -- end;

         --Actor.PutBackPack( player, pack );

         --ItemPack.AddItem( pack, Level.CreateItem( "pmd6", "Weapon" ) );
         --ItemPack.AddItem( pack, Level.CreateItem( "pmd6", "Weapon" ) );
         --ItemPack.AddItem( pack, Level.CreateItem( "Knife", "Weapon" ) );
       end;

       Level.ChangePlayerStand( 2 );

     end;

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.OnKilledKurier()

      Level.FailedMission( MissionText.Fail_KKilled );

  end;

  -- patch
  function Level.CheckKilledOfficers()

      if (AI.FindNPC('GO07') == nil) then 
         Level.EnableLevelMark( 'OFFR' , false );
      end

      if (AI.FindNPC('GO02') == nil) then 
         Level.EnableLevelMark( 'OFR2' , false );
      end

  end

  -- patch
  function Level.OnKilledMarkedOfficer()

      Level.CheckKilledOfficers();

  end

  function Level.ShowTargetGuards()

      local g2 = Level.FindActor('OH01');
      if ( g2 != nil ) then
         Actor.MarkAsTarget( g2, true );
      end;

      local g3 = Level.FindActor('OH02');
      if ( g3 != nil ) then
         Actor.MarkAsTarget( g3, true );
      end;     

  end;

  function Level.CheckGuardsKilled()
 
     local guards = { 'OH01', 'OH02' };

     for i = 1, 2 do

            -- PATCH
         local g = AI.FindNPC( guards[i] );

         if ( g != nil ) then

            if (AI.GetRoom(npc) != AI.ROOM_OUTDOOR) then
               return false;
            end;

         end;

     end;

     return true;

  end;

  function Level.ChangeKurierTask()

      Level.AddMissionTask( MissionText.Task_2, 'FREE', "levels\\posilka\\free_task.txt" ); 
      Level.RemoveMissionTask( 'GETK' );

      Level.PlayMenuSound("task_finish");
      Level.AddLargeMessage( MissionText.Message_1, 15.0, 255, 255, 255 );
      Level.EnableLevelMark( 'GETK' , false );
      Level.EnableLevelMark( 'FREE' , true );

      local kurier = Level.FindActor('PKUR');
      if ( kurier != nil ) then
         Actor.SetMapHidden( kurier, false ); 
         Actor.MarkAsTarget( kurier, true );
      end;

      Level.EnableLevelMark( 'OFFR' , true );

      -- patch
      Level.CheckKilledOfficers();

      Level.ShowTargetGuards();

  end;

  function Level.AddDocsTask()

      Level.AddMissionTask( MissionText.Task_3, 'DOCS', "levels\\posilka\\sh_task.txt" );

      local officer = Level.FindActor('PAUL');
      if ( officer != nil and Actor.IsDead( officer ) == false ) then
         Actor.MarkAsTarget( officer, true );
      end;

      Level.EnableLevelMark( 'DOCS', true );

  end;

  function Level.AddLeaveTask()

      Level.AddMissionTask( MissionText.Task_4, 'LEAV', "levels\\posilka\\leav_task.txt" );
      Level.EnableLevelMark( 'LEAV', true );

  end;

  function Level.CompleteTaskFree()

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( Level.DocsComplete == false ) then

      Level.AddDocsTask();

    else

      Level.AddLeaveTask();

    end;

    Level.CompleteMissionTask( 'FREE', 15.0 );
    Level.AddLargeMessage( MissionText.Message_2, 15.0, 255, 255, 255 );
    Level.EnableLevelMark( 'FREE' , false );

    local kurier = Level.FindActor( 'PKUR' );
    if ( kurier != nil ) then
      Actor.MarkAsTarget( kurier, false );
    end;

    local c = AI.FindNPC('PKUR');
    if (c != nil) then
       local properties = Level.CreateCustomParams();
       Level.SetValue(properties, "CustomString_1", 'AN55');

       AI.RunScriptTask(c, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_NEUTRAL, properties);
    end


    Level.KurierFree = true;     

  end;

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    if ( Level.IsMissionFailed() != false ) then
      return;
    end;

    if ( trgname == 'BabkaTrigger' ) then

        if ( Level.KurierFree == false ) then

            local babka = AI.FindNPC('PG04' );
--            if (AI.IsDefault(babka) != false) then
--          babka must be default
            if (babka != nil) then
               local properties = Level.CreateCustomParams();
               Level.SetValue(properties, "CustomString_1", 'AN53');                               
               AI.RunScriptTask(babka, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
            end
            
            Level.ChangeKurierTask();     

        end;

        Level.UnregisterTrigger( Level.FindTrigger( trgname ) );      

    elseif ( trgname == 'KurierShow' ) then

          if ( Level.KurierFree == false and Level.HasMissionTask('FREE') == false ) then
             Level.ChangeKurierTask();
          end;

          Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
   
    elseif ( trgname == 'FreeTrigger') then

        if ( Level.HasMissionTask( 'FREE' ) == true ) then

          if ( Level.KurierFree == false ) then
            if ( Level.CheckGuardsKilled() == true ) then
                 Level.CompleteTaskFree();
                 Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
                 Level.RemoveTimer( 'CHEK' );
            else
                 Level.AddTimer( 'CHEK', "OnCheckFreeKurier", 0.5, true );
            end;
          else
            Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
            Level.RemoveTimer( 'CHEK' );
          end;
       end;

    elseif ( trgname == 'LeaveTrigger' ) then

       if ( Level.DocsComplete == true and Level.KurierFree == true ) then
           -- $TODO: Check we are not fighting?
           Level.CompleteMissionTask( 'LEAV', 15.0 );
       end;

    elseif ( trgname == 'TipTrigger' ) then

       Level.EnableLevelMark( 'TTIP', false );
       Level.UnregisterTrigger( Level.FindTrigger( trgname ) );

    end;

  end;

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

       if ( trgname == 'FreeTrigger' ) then
           Level.RemoveTimer( 'CHEK' ); 
       end;

  end;  

  function Level.OnCheckFreeKurier()

      if ( Level.CheckGuardsKilled() == true ) then
                                     
          Level.CompleteTaskFree();
          Level.RemoveTimer('CHEK');
          Level.UnregisterTrigger( Level.FindTrigger( 'FreeTrigger' ) );
      end;

  end;

  function Level.OnInventoryChanged()

    local player = Level.GetPlayer();
    if ( player == nil or Level.DocsComplete == true ) then
       Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );
       return;
    end;

    if ( Actor.HasCustomEquipment( player, 'ADOC' ) == true ) then

       if ( Level.HasMissionTask( 'DOCS' ) == false ) then
          Level.AddDocsTask();
       end;

       if ( Level.KurierFree == true ) then
          Level.AddLeaveTask();
       end;

       Level.CompleteMissionTask('DOCS');
       Level.EnableLevelMark( 'DOCS', false );
       Level.DocsComplete = true;

       Level.RemoveActionHandler( Level.AH_PLAYER_INVENTORY );

    end;

  end;

  function Level.OnStopMove( actorId )
     if (actorId == 'GS20' or
         actorId == 'GS21' or 
         actorId == 'GS45' or
         actorId == 'GS43' or
         actorId == 'GS80' or
         actorId == 'GS85') then

         AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );
         Level.AddSmallMessage( MissionText.Message_StopMove, 15.0 , 255, 255, 255 );

         return;
     end
  end

  function Level.CheckNeedStop( actorId )

     local player = Level.GetPlayer();
     if (player == nil) then 
        return false;
     end

     local form = Actor.GetActorType(player);
     
     if (actorId == 'GS20' or
         actorId == 'GS21' or 
         actorId == 'GS45' or
         actorId == 'GS43' or
         actorId == 'GS80' or
         actorId == 'GS85') then

        if (form == Actor.ACTOR_TYPE_OFFICER) then
           return false;       
        else
           return true;
        end
     end

     return true;

  end;
 
  function Level.OnFinishAlert( alertGroupId )
   
     AI.Debug(nil, "Level.OnFinishAlert", "group", alertGroupId);
     AI.SetLocalAlert( alertGroupId, false );

     Level.AddSmallMessage( MissionText.Message_AlarmFinished, 10.0, 255, 0, 0);
  end

  function Level.OnAlert( alertGroupId )

    AI.Debug(nil, "Level.OnAlert", "group", alertGroupId);

    Level.AddSmallMessage( MissionText.Message_Alarm, 10.0, 255, 0, 0);

    AI.SetLocalAlert(alertGroupId, true, AI.TransformAlertTime(300));

    if (alertGroupId == 1) then

       if (Level.Alarm[1] == false) then
         AI.Patrol(AI.FindNPC('GS87'), 'Path27', nil);
         AI.PatrolFollow(AI.FindNPC('GS88'), 'Path27', AI.FindNPC('GS87'),  0.0, -15.0, nil);

         Level.Alarm[1] = true;
       end

       AI.AddAlertValue(1);

    elseif (alertGroupId == 2) then

       if (Level.Alarm[2] == false) then

         local p = Level.CreateCustomParams();
         Level.SetValue(p, "Use walk", true);

         AI.Patrol(AI.FindNPC('S315'), 'Path28', patrolProp);

         local properties = Level.CreateCustomParams();
         Level.SetValue(properties, "Return spawn place", true);
         Level.SetValue(properties, "Animation name", "Relaxed_Idle_GuardLook");
         Level.SetValue(properties, "Can Patrol Point", false);
         Level.SetValue(properties, "Can Smoke", false);
         Level.SetValue(properties, "Can Speak", false);
         Level.SetValue(properties, "Restore spawn direction", true);
         Level.SetValue(properties, "Return place noise", 0.0);
         Level.SetValue(properties, "Can use anchors", false);
         Level.SetValue(properties, "Spawn place return limit", 0.0);

         Level.SetValue(properties, "Position", 333.0, -55.0, -944.0);
         Level.SetValue(properties, "Direction", 1.0, 0.0, 0.0);

         AI.Idle( AI.FindNPC('S316'), properties );

         Level.Alarm[2] = true;
         AI.AddAlertValue(1);
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
