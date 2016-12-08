
  MissionText = 
  {
      --Mission text
      TaskTraining             = " Training";
      Fail_KillBot             = " Your compatriot has been killed";
      Fail_HitBot              = " Your compatriot has been neutralized";
      Fail_OnFight             = " You have been noticed";
      Fail_OnSeeBody           = " The guards have noticed the body";
      Message_Leave            = " You are leaving the training area";
      Message_Fail             = " You have left the training area";
      Message_TriggerInfo      = {
                                   {
                                     "If the enemy is not looking at you, the danger scale ";
                                     " indicates how well the enemy can hear your movement.";
                                   };   --[1]
                                   "#<SNEK>Press <%s> to move noiselessly.";   --[2]
                                   {
                                     "Your noise level depends on your movement speed.";
                                     "#<RUNS>To change your movement speed use <%s>..";
                                   };   --[3]
                                   {
                                     "#<MAPS>Use <%s> to switch the map on..";
                                     "Use arrows or +/- to zoom the map in or out..";
                                   };   --[4]
                                   "Take chloroform..";   --[5]
                                   "Neutralize the sentry..";   --[6]
                                   "Take items from the table..";   --[7]
                                   {
                                     " - If you move with caution you are less noticeable ";
                                     "#<CRCH> - To crouch use <%s> or scroll the mouse wheel down";
                                   };   --[8]
                                   "When an enemy is looking in your direction the danger scale indicates your visibility.";   --[9]
                                   "If an enemy sees anything suspicious he may become more alert";   --[10]
                                   {
                                     "You can use plates, mugs and other items ";
                                     "to distract the enemy..";
                                   };   --[11]
                                   {
                                     "Reach the bunker while avoiding being noticed by patrols:";
                                     " ";
                                   };   --[12]
                                   {
                                     " - Use the map to plan your optimal route ";
                                     " - In crawling mode you will not be as noticeable";
                                     " - You may try to neutralize the patroller";
                                   };   --[13]
                                   "Reach the radio operator's room..";   --[14]
                                   "Lock pick the door to the radio operator's room:";   --[15]
                                   "Neutralize the sleeping radio operator:";   --[16]
                                   {
                                     " ";
                                     " - Sleeping people do not hear the enemy getting closer";
                                   };   --[17]
                                   "#<LLEF> - Use <%s> to look around the corner without being noticed";   --[18]
                                   {
                                     " - You cannot take uniforms from enemies killed with firearms or a knife ";
                                     "   ";
                                   };   --[19]
                                   "";   --[20]
                                   " - Use 'Forward'/'Back' buttons or the mouse wheel to select the picklock or rotate the keyhole";   --[21]
                                   "#<MRIT> - Press <%s> or the left mouse button to bring the picklock close to the keyhole";   --[22]
                                   "Neutralize the guard..";   --[23]
                                   "#<MFRD>Press <%s> to start the motor and drive forward";   --[24]
                                   {
                                     "Driving:";
                                     " ";
                                     "#<HANB> - Use <%s> for emergency braking";
                                     "#<MBRD> - Use <%s> to pull down or move back";
                                   };   --[25]
                                   "Take the German submachine gun..";   --[26]
                                   "Stun the officer..";   --[27]
                                   {
                                     "Take the officer's documents. Use the 'Inventory'";
                                     " option to change into the officer's uniform..";
                                   };   --[28]
                                   "Some enemies have begun patrolling the camp's territory..";   --[29]
                                   {
                                     "#<DROP>You can drop an active weapon using the key <%s>";
                                     "#<INVT>You can drop any item or backpack from your inventory <%s>";
                                   };   --[30]
                                 };
      TaskNeutralize           = " Neutralizing";
      TaskNeutralizeGuard      = " Guard";
      TaskNeutralizeSniper     = " Sentry";
      TaskHideBody             = " Hide body";
      TaskNeutralizePatrol     = " Patrol";
      Message_Wirecutter       = "You need pliers to cut the mesh fence.";
      Message_DropBody         = {
                                   "Hide the body in a box:";
                                   " ";
                                   "#<TARG> - To throw a body, you can use the <%s> key";
                                   "#<FIRE> - To lay a body down use <%s>";
                                 };
      Message_NeutralizeStart  = "Assignments have been changed: Neutralize the guards";
      Message_NeutralizeGuard  = "Move left toward the shed..";
      Message_HideBody         = "Hide the body in a box..";
      Message_GetWirecutter    = {
                                   "Take the pliers..";
                                   "You can put bigger items into a backpack only..";
                                 };
      Message_NeutralizeSniper = "Neutralize a sentry on the watchtower..";
      Message_EnterArea        = "Use pliers to cut through the mesh..";
      Message_NeutralizePatrol = {
                                   "Get back to the exit";
                                   "Neutralize the patroller..";
                                 };
      Message_NeutralizePtrl2  = {
                                   "Neutralize the patroller:";
                                   " ";
                                   "#<CRCH> - Move crouching (%s) in the running mode to quickly ";
                                   "   reduce the distance and have time to neutralize an enemy";
                                 };
      Message_Vehicle          = " Get out of the transport";
      TaskBunker               = " Getting changed";
      TaskPalatka              = " Tent";
      TaskArriveBunker         = " Reach the bunker";
      TaskRadist               = " Radio operator";
      Message_BunkerStart      = "Assignments have been changed: Getting changed";
      Message_Palatka          = {
                                   "Get into the tent without making too much noise:";
                                   " ";
                                   "#<SWMP> - Switch on the <%s> map to estimate the location of the enemies";
                                 };
      Message_Table            = "Come to the table";
      Message_BunkerMessage    = {
                                   "You have reached the bunker.";
                                   "You need to get inside. The guard is at the doors:";
                                   " ";
                                   "#<WIST> - You can try to attract the guard's attention by whistling <%s> ";
                                   "#<GRAN> - You can also distract the guard by throwing a <%s> smoke bomb.";
                                 };
      Message_BodyMessage      = {
                                   "Always keep in mind that bodies can be discovered.";
                                   " Ensure the body is hidden in a safe place.";
                                 };
      Message_ChangeCloth      = "Take the radio operator's uniform..";
      Fail_DontUseRadistForm   = "You cannot change into the uniform until the trainer tells you to do so";
      Message_Lockpick         = "Get back to take the picklocks. You won't be able to accomplish the task without them";
      Message_VehicleStart     = "Assignments have been changed. Truck";
      Message_EnterVehicle     = "Get in a car..";
      TaskVehicle              = " Truck";
      Message_ReturnOldPos     = " Get back to the area specified";
      Message_LeaveVehicle     = {
                                   "Get out of the car in the area specified:";
                                   " ";
                                   " - You need to stop the car first ";
                                   "#<ACTS> - Use the right mouse button or <%s> to exit";
                                 };
      Message_ReturnVehicle    = "Get back to the truck";
      Message_CantStartForm    = "You cannot start the mission wearing this uniform";
      TaskVillage              = " Using uniform";
      TaskOfficer              = " Officer";
      Message_VillageStart     = "Assignments have been changed: Using uniform";
      Message_OfficerStart     = "Assignments have been updated: Officer";
      Message_EnterHouse       = "Enter the nearest building..";
      Failed_OfficerForm       = "You cannot change into this uniform";
      Fail_HitOfficer          = "You cannot kill this officer now";
      Message_StopMove         = "Only officers can access this building";
      Message_GetFormDocs      = {
                                   " ";
                                   "Get an officer's uniform in the next building..";
                                 };
      Message_OfficerDocs      = "Officer's documents";
      Message_House            = "Head to the building marked on the map..";
      Message_DropWeapon       = "Throw your weapons away. They can break your disguise!";
      Message_DropBackpack     = "#<INVT>Throw your backpack away. You can throw it away in inventory mode <%s>..";
      Message_ReturnCamp       = "Get back to the tent..";
      Polosa_1                 = {
                                   "Pass through the zone with wooden barriers..";
                                   " ";
                                   "#<JUMP>Use the key 'Jump/Climb (%s)'";
                                   "to climb onto the barrier";
                                 };
      Polosa_2                 = "Use the ladder to climb the wall...";
      Polosa_3                 = "Run across both access gangways..";
      Polosa_4                 = "Pass through both trenches..";
      Polosa_5                 = {
                                   "Crawl under barbed wire..";
                                   "#<LAYG>Use the '%s' key or the scroll wheel to crawl";
                                 };
      Polosa_Fail              = "Try again..";
      Polosa_Task              = " Line of barriers";
      Polosa_Start             = "Assignments have been changed: Pass through the line of barriers";
      Polosa_Leave             = "You have left the building area. Get back";
      Fire_Task                = " Target shooting ";
      Fire_Start               = "Assignments have been changed: target shooting";
      Fire_Pistol              = "Target shooting: Using a pistol";
      Fire_PistolTake          = {
                                   "Take a pistol from the table..";
                                   " ";
                                   "#<ACTS>Press and hold down the 'Action menu (%s)' key to enter the menu ";
                                   "Use the forward/back keys or the scroll wheel to select a menu item ";
                                   "#<ACTS>Release the 'Action menu (%s)' key to enable the menu item you need";
                                 };
      Fire_PistolTask          = {
                                   "Hit three red targets - you need to hit ";
                                   " the target's center twice";
                                   " ";
                                   " - The precision of shooting depends on movement and distance to the target ";
                                   "#<TARG> - Use aimed mode (%s) to improve";
                                   "   shooting accuracy";
                                   " - If the aiming sight turns red then the target is at a valid";
                                   "distance for shooting ";
                                   " - You can change the shape of the aiming sight in game options";
                                   "#<RELD> - To reload weapon use the (%s) key";
                                   " - You can take cartridges from the table ";
                                   "#<PIST> - You can take the pistol out using (%s) key";
                                   "#<DROP> - You can throw the weapon away using (%s) key";
                                 };
      Fire_MachingunTask       = {
                                   "Hit two targets ";
                                   " ";
                                   "#<TARG> - Use aimed mode (%s) to improve ";
                                   " shooting accuracy";
                                   " - A submachine gun has poor accuracy. To ensure precision";
                                   " you should fire shot after shot";
                                   " - You can change the shape of the aiming sight in game options";
                                   "#<RELD> - To reload weapon use (%s) key";
                                   " - You can take the weapon's magazine case from the table";
                                   "#<MGUN> - You can draw the weapon <submachine gun/rifle> using the key (%s)";
                                   "#<HIDE> - You can take the weapon away using the key (%s)";
                                 };
      Fire_RifleTask           = {
                                   "Hit a target: you need to hit the very center of the target ";
                                   " ";
                                   " - For more accurate shooting use a rifle instead of a submachine gun ";
                                   "#<TARG> - Use aiming mode (%s) to improve";
                                   "  shooting accuracy ";
                                   " - You can change the shape of the aiming sight in game options";
                                   " - You can take the rifle magazine cases from the table";
                                 };
      Fire_SniperTask          = {
                                   "Hit three targets: you need to hit the white mark";
                                   " ";
                                   "#<TARG> - Use aiming mode (%s) to switch";
                                   "   into optics mode ";
                                   "#<TARG> - Press and hold down (%s) to hold breath";
                                   " in optics mode";
                                 };
      Fire_Complete            = "Assignment accomplished..";
      Fire_Machingun           = "Target shooting: Using a submachine gun/rifle";
      Fire_MachingunTake       = "Take a submachine gun from the table..";
      Fire_NextRoom            = "Go to the next room..";
      Fire_Rifle               = "Take a rifle from the table..";
      Fire_Sniper              = "Target shooting: Using a sniper rifle";
      Fire_SniperTake          = "Take a sniper rifle from the table..";
      Grenade_Task             = " Throwing grenades";
      Grenade_Start            = "Assignments have been changed: Throwing grenades";
      Grenade_Take             = "Take grenades..";
      Grenade_Task1            = {
                                   "Hit the hole with a grenade:";
                                   " ";
                                   "#<GRAN> - To select items you can throw press (%s)";
                                   "#<GRAN> - To select an item to be thrown press and hold down the key (%s)";
                                   " - To select a necessary item from the list, you can use arrows or the scroll wheel";
                                   "#<TGRD> - For a quick throw use the key (%s)";
                                   " - In game options you can select a power throw ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                 };
      Grenade_Task2            = {
                                   "Hit one of the top windows of the building with a grenade:";
                                   " ";
                                   "#<GRAN> - To select items that can be thrown press (%s)";
                                   "#<GRAN> - To select an item to be thrown press and hold down (%s) key";
                                   " - You can select the necessary item from the list using arrows or the mouse scroll button";
                                   "#<TGRD> - For a quick throw use (%s) key";
                                   " - In game options you can select a power throw ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                   " ";
                                 };
      Grenade_Next             = "Go to the next room marked on the map..";
      Knife_Task               = " Knife throwing";
      Knife_Start              = "Assignments have been changed: knife throwing";
      Knife_Pick_4             = "Take 4 knives..";
      Knife_Pick_3             = "Take 3 knives..";
      Knife_TakePosition       = "Take up a posture for throwing.";
      Knife_Target_1           = {
                                   {
                                     "Hit the target from standing:";
                                     " ";
                                     "#<KNIF> - You can draw a knife by pressing (%s).";
                                     "#<FIRE> - To throw a knife press (%s).";
                                   };   --[1]
                                   {
                                     "Hit the target from sitting:";
                                     " ";
                                     "#<CRCH> - To sit down use (%s) or the scroll wheel";
                                     "#<KNIF> - To take out a knife you can press (%s)";
                                     "#<FIRE> - To throw a knife use (%s) key";
                                   };   --[2]
                                   {
                                     "Hit the target from prone posture:";
                                     " ";
                                     "#<KNIF> - You can take out the knife by pressing (%s)";
                                     "#<FIRE> - To drop a knife press (%s)";
                                     "#<LAYG> - To lie down use the key (%s) or the scroll wheel";
                                   };   --[3]
                                 };
      Knife_Target_2           = {
                                   "Hit the target accurately with a knife:";
                                   " ";
                                   "#<KNIF> - To take out a knife you can use the (%s) key";
                                   "#<FIRE> - To throw a knife you can use the (%s) key";
                                   " - A knife flies in a parabola, so aim higher if a target is distant";
                                   "";
                                 };
      Knife_WrongPos           = "A wrong position for a throw. Try again..";
      Knife_Missed             = "You missed. Try again..";
      Action_Menu              = {
                                   "Action menu:";
                                   " ";
                                   "#<ACTS> - Press and hold down the 'Action menu (%s)' key to enter the menu";
                                   " - Use the forward /back keys or the scroll wheel to select the menu item ";
                                   "#<ACTS> - Release the 'Action menu (%s)' key to enable the necessary menu item";
                                 };
      Start_Move               = "Move to the point marked on the map";
      Start_Next               = "Move to the next training site marked on the map ('Briefing' key 'O' by default).";
      Start_Message            = {
                                   "Move to the point:";
                                   " ";
                                   "#<BRIF> - Press the 'Briefing (%s)' key to view assignments ";
                                   "#<SWMP> - Press the 'Map (%s)' key to enable the map ";
                                   "#<MAPS> - Press the 'Map Mini/Full Size. (%s)' to toggle the map ";
                                   " - Use arrows or +/- keys to zoom the map in or out.";
                                 };
  };

  function Level.OnCompleteMission()

      System:ConsoleCommand( 'l_loadlevel "gamemenu" 1' );

  end;

  function Level.OnSave()

     -- SG
     local n = table.getn( Level.CanHittedBotList );
     Stream.WriteInt( n );
     if (n > 0) then
        for i = 1, n do
           Stream.WriteString(Level.CanHittedBotList[i]);
        end
     end

     n = table.getn( Level.BotsUID );
     Stream.WriteInt( n );
     if (n > 0) then
        for i = 1, n do
           Stream.WriteString(Level.BotsUID[i]);
        end
     end

     Stream.WriteBool( Level.ShowedDropBodyMessages );
     Stream.WriteBool( Level.UsedWirecutter );

     -- SG2.
     Stream.WriteBool  ( Level.BodyMessageShowed );
     Stream.WriteBool  ( Level.ObserveLockpick );
     Stream.WriteBool  ( Level.UsePatrolNeutralize );

     -- SG2a
     Stream.WriteBool( Level.AtVehicle );

     -- SG2b
     Stream.WriteBool(Level.EnteredNeutralizeTrigger);

     -- SG3
     Stream.WriteBool(Level.StartVehicleDriving);
     Stream.WriteBool(Level.VehicleAtFinish);
     Stream.WriteBool(Level.ShowedStopMessage);

     -- SG4
     Stream.WriteInt (Level.BunkerSoldierFormId);
     Stream.WriteBool(Level.ShowedEyeIconMessage);
     Stream.WriteInt (Level.StateMP40);
     Stream.WriteInt (Level.OfficerFormId);
     Stream.WriteBool(Level.OfficerInfoShowed);
     Stream.WriteBool(Level.EnableEyeIconMessage);

     -- SG5
     Stream.WriteBool(Level.ClearMessagesDropWeapon);

     -- SG6

     Stream.WriteInt    (Level.ClfState[1]);
     Stream.WriteInt    (Level.ClfState[2]);
     Stream.WriteString (Level.WeaponId);
     Stream.WriteBool   (Level.BackPackMessage);
     Stream.WriteBool   (Level.AtPalatkaTrigger);


     -- AA

     Stream.WriteInt( Level.PolosaTask );
     Stream.WriteBool( Level.PolosaBegin );
     Stream.WriteString( Level.CurrentTask );

     -- AA2

     Stream.WriteBool( Level.FireReady );

     local fn = table.getn( Level.FireTargets );
     Stream.WriteInt( fn );
    
     if ( fn > 0 ) then
        for i = 1, fn do
          Stream.WriteString( Level.FireTargets[i].id );
          Stream.WriteInt( Level.FireTargets[i].health );
        end;
     end;

     -- AA4

     Stream.WriteString( Level.AutoDoor );

     -- AA5

     Stream.WriteBool( Level.KnifeInPosition );
     Stream.WriteInt( Level.KnifeTarget );

     local nk = table.getn( Level.CreatedKnifes );
     Stream.WriteInt( nk );

     if ( nk > 0 ) then
        for i = 1, nk do
            Stream.WriteString( Level.CreatedKnifes[i] );
        end;
     end;

     -- AA6

     Stream.WriteBool( Level.ShowActionMenu );
     Level.OnSave_Common(); -- forlik

  end
   
  function Level.OnLoad()

     -- SG

     local n = Stream.ReadInt();
     Level.CanHittedBotList = {};
     if (n > 0) then
        for i = 1, n do
           Level.CanHittedBotList[i] = Stream.ReadString();
        end
     end

     n = Stream.ReadInt();
     Level.BotsUID = {};
     if (n > 0) then
        for i = 1, n do
           Level.BotsUID[i] = Stream.ReadString();
        end
     end

     Level.ShowedDropBodyMessages = Stream.ReadBool();
     Level.UsedWirecutter = Stream.ReadBool();

     -- SG2
     Level.BodyMessageShowed   = Stream.ReadBool();
     Level.ObserveLockpick     = Stream.ReadBool();
     Level.UsePatrolNeutralize = Stream.ReadBool();

     -- SG2a
     Level.AtVehicle           = Stream.ReadBool();

     -- SG2b
     Level.EnteredNeutralizeTrigger = Stream.ReadBool();

     -- SG3
     Level.StartVehicleDriving = Stream.ReadBool();
     Level.VehicleAtFinish     = Stream.ReadBool();
     Level.ShowedStopMessage   = Stream.ReadBool();

     -- SG4
     Level.BunkerSoldierFormId   = Stream.ReadInt();
     Level.ShowedEyeIconMessage  = Stream.ReadBool();
     Level.StateMP40             = Stream.ReadInt();
     Level.OfficerFormId         = Stream.ReadInt();
     Level.OfficerInfoShowed     = Stream.ReadBool();
     Level.EnableEyeIconMessage  = Stream.ReadBool();

     -- SG5
     Level.ClearMessagesDropWeapon = Stream.ReadBool();

     -- SG6
     Level.ClfState = {};
     Level.ClfState[1]           = Stream.ReadInt(); 
     Level.ClfState[2]           = Stream.ReadInt();
     Level.WeaponId              = Stream.ReadString();
     Level.BackPackMessage       = Stream.ReadBool();
     Level.AtPalatkaTrigger      = Stream.ReadBool();

     -- AA

     Level.PolosaTask  = Stream.ReadInt();
     Level.PolosaBegin = Stream.ReadBool();
     Level.CurrentTask = Stream.ReadString();

     -- AA2

     Level.FireReady   = Stream.ReadBool();
 
     Level.FireTargets = {};

     local fn = Stream.ReadInt();
     if ( fn > 0 ) then
        for i = 1, fn do
           Level.FireTargets[i] = { id = ' ',health = 0 };

           Level.FireTargets[i].id     = Stream.ReadString();
           Level.FireTargets[i].health = Stream.ReadInt();        
        end;
     end;

     -- AA4

     Level.AutoDoor   = Stream.ReadString();

     -- AA5

     Level.KnifeInPosition = Stream.ReadBool();
     Level.KnifeTarget     = Stream.ReadInt();

     Level.CreatedKnifes   = {};

     local nk = Stream.ReadInt();
     if ( nk > 0 ) then
         for i = 1, nk do
           Level.CreatedKnifes[i] = Stream.ReadString();
         end;
     end;

     -- AA6

     Level.ShowActionMenu = Stream.ReadBool();

     Level.OnLoad_Common(); -- forlik
     Level.OnFinishLoad();
  end 

  function Level.SaveTraining()

     -- #HACK
     --Level.AddSmallMessage( "Контрольная точка сохранена.." , 5.0, 255, 128, 0 );

     System:SaveGame( "_training.asv" , false );

  end;

  function Level.OnFailedMissionHandle()

     System:LoadGame( "_training.asv" , true );

     return true;

  end;
  
  function Level.OnFinishLoad()

     -- forlik System:SetVar( "r_glow", true );
     -- forlik System:SetVar( "r_glow_r", 2.0 );
     -- forlik System:SetVar( "g_maxblood", 0 );
     Level.OnFinishLoad_Common(); -- forlik
     Level.SetDOFPostFilter( 1, 0.0, 1600.0, 3500.0 ); --forlik
     System:SetVar( "r_farclip" , 5000 ); -- forlik
     System:SetVar( "r_dofsky", 128 ); --forlik

     -- AA2

     Level.SetFireTargetsLocked();

     -- SG

     Level.StartMiniMissionTrigger = nil;

     -- AA5

     Level.AddParticleClip( 'GRND' , -141.825, -39.5 ,922.3783, -6.8, -7.6, 996.378 );

     Level.Enable("saving", false );
     Level.Enable("score" , false );


  end

  function Level.StartTrainingMessages()

     Level.AddLargeMessage( MissionText.Start_Move, 30.0, 255, 255, 255 );
     Level.ShowMessage( MissionText.Start_Message );

  end;

  function Level.OnLoaded()

     -- Setup mission
     Level.OnLoaded_Common(); -- forlik
     Level.AddMissionTask( MissionText.TaskTraining, 'TRAN', "levels\\training\\training_task.txt" );

     -- init player

     local player = Level.GetPlayer();
     if (player != nil) then

        Actor.ChangeActorSkin( Level.GetPlayer(), "Summer" );

        local pack = Level.CreateItem( "playersack", "container" );

        if ( pack == nil ) then
           error('Failed create player pack');
        end;

        Entity.SetUniqueID( pack, 'PAK1' );
        Actor.PutBackPack( player, pack );

     end

     -- SG
     -- Setup level configuration

     Level.CanHittedBotList       = { };
     Level.ShowedDropBodyMessages = false;
     Level.UsedWirecutter         = false;

     -- SG2
     Level.BodyMessageShowed   = false;
     Level.ObserveLockpick     = false;
     Level.UsePatrolNeutralize = true;

     -- SG2a
     Level.StartMiniMissionTrigger = nil;
     Level.AtVehicle = false;

     -- SG2b
     Level.EnteredNeutralizeTrigger = false;

     -- SG3
     Level.StartVehicleDriving = false;
     Level.VehicleAtFinish     = false;
     Level.ShowedStopMessage   = false;

     -- SG4
     local bot = Level.FindActor('SS08');
     if (bot != nil) then
        Level.BunkerSoldierFormId = Actor.GetWearFormId( bot );
     else
        Level.BunkerSoldierFormId = 0;
     end

     Level.ShowedEyeIconMessage  = false;
     Level.StateMP40             = 0;

     local officer = Level.FindActor('SO02');
     if (officer != nil) then
        Level.OfficerFormId = Actor.GetWearFormId(officer);
     end

     Level.OfficerInfoShowed    = false;
     Level.EnableEyeIconMessage = false;

     -- SG5
     Level.ClearMessagesDropWeapon = false;
     Level.RandomMission = false;

     -- SG6
     Level.ClfState          = {};
     Level.ClfState[1]       = 0;
     Level.ClfState[2]       = 0;
     Level.WeaponId          = "";
     Level.BackPackMessage   = false;
     Level.AtPalatkaTrigger  = false;

     -- Add kill/hit handlers
     -- Disable weapons pickup
     Level.BotsUID = { 'SS01', 'SS02', 'SS03', 'SS05', 'SS06',
                       'SS07', 'SS08', 'SS09',
                       -- village
                       'SS11', 'SS12', 'SS13', 'SS14', 'SS15', 'SS16',
                       'SO01', 'SO02', 'SO03',
                       -- furniture
                       'SO10', 'SO11', 'SO12', 'SO13', 'SO14',
                       'SS20', 'SS21', 'SS22', 'SS23', 'SS24', 'SS25'
                     };



     for i in Level.BotsUID do                                                    
        local actor = Level.FindActor( Level.BotsUID[i] );
        if (actor != nil) then

           Level.AddActionHandler( Level.AH_ACTOR_KILLED, Level.BotsUID[i], "OnKilledBot" );
           Level.AddActionHandler( Level.AH_ACTOR_HITTED, Level.BotsUID[i], "OnHittedBot" );

           Level.EnableItemPickup( Actor.GetWeapon(actor, Actor.WEAPON_SLOT_SHOULDER), false );
           Level.EnableItemPickup( Actor.GetWeapon(actor, Actor.WEAPON_SLOT_PISTOL), false );
        end
     end

     Level.AddActionHandler( Level.AH_PLAYER_INVENTORY );
     Level.AddActionHandler( Level.AH_FINISH_CHANGECLOTH, "SS08", "OnRadistCloth" );
     Level.AddActionHandler( Level.AH_CHANGE_CLOTH );

     -- SG2a
     Level.AddActionHandler( Level.AH_LEAVE_VEHICLE, "VEHL", "OnLeaveVehicle" );
     Level.AddActionHandler( Level.AH_ENTER_VEHICLE, "VEHL", "OnEnterVehicle" );

     -- SG3
     Level.EnableVehicleUse( 'VEHL', false );
                                                                  
     -- AA

     Level.PolosaTask  = 1;
     Level.PolosaBegin = true;
     Level.CurrentTask = "";
 
     -- AA2

     Level.FireReady   = false;
     Level.FireTargets = {};

     Level.EnableWeaponPickup();

     -- AA4

     Level.EnableGrenadesPickup();
     Level.AutoDoor = "";

     -- AA5

     Level.CreatedKnifes   = {};
     Level.KnifeInPosition = false;
     Level.KnifeTarget     = 1;     

     -- AA6

     Level.ShowActionMenu  = false;

     Level.LockFireAndGrenadeDoors();
     Level.StartTrainingMessages();

     AI.DisableDecamouflageMethod( AI.METHOD_BACKPACK, -1.0 );
     Actor.EnableHitFace( Level.FindActor('SS08'), true );
     Actor.EnableFallDeath( Level.FindActor('SS01'), false );

     AI.OnPlayerEnterZone("global", 'GLSC'); -- forlik
     Level.OnFinishLoad();
     Level.SaveTraining();

  end;

  AI.DoFile( "scripts:Levels\\Common.lua", false ); -- forlik

  function Level.SetHelpPointer( x, y, z )

     local helpPointer = Level.FindItem( 'HELP' );
     if ( helpPointer == nil ) then

       helpPointer = Level.CreateWorldItem( "Pointer" , "Equipment" , x, y, z, 0.0, 0.0, 0.0, 'HELP' );
       if ( helpPointer == nil ) then
          return;
       end;

     else

       Level.LinkHelpPointer( helpPointer, nil, 0.0 );

       local helpNode = Entity.GetNode( helpPointer );
       if ( helpNode != nil ) then

          node.SetPosition( helpNode, x, y, z );
          node.InvalidateTransforms( helpNode );

       end;
     end;     
  end;

  function Level.RotateHelpPointer( x, y, z )
 
      local helpPointer = Level.FindItem( 'HELP' );
      if ( helpPointer == nil ) then
           return;
      end;

      local helpNode = Entity.GetNode( helpPointer );
      if ( helpNode != nil ) then

          node.SetRotation( helpNode, x, y, z );
          node.InvalidateTransforms( helpNode );

      end;
  end;

  function Level.RemoveHelpPointer()

       local helpPointer = Level.FindItem( 'HELP' );
       if ( helpPointer != nil ) then
           Level.DeleteItem( helpPointer );
       end;
  end;

  function Level.OnInventoryChanged()

     -- SG
     if (Level.IsNeutralizeMiniMission() != false) then
         Level.OnNeutralize_InvChanged();
     elseif (Level.IsBunkerMiniMission() != false) then
        Level.OnBunker_InvChanged();
     elseif (Level.IsVillageMiniMission() != false) then
        Level.OnVillage_InvChanged();
     end

  end

  function Level.OnEnterTriggerArea( sender, trgname, trgcmd )

    -- AA

    if ( trgname == "FailPolosa" ) then
        Level.OnEnterFailPolosa();
     elseif ( trgname == "StartPolosa" ) then
        Level.OnStartPolosa();          
     elseif ( Level.CurrentTask == "polosa" ) then
        Level.ProcessPolosaTriggers( sender, trgname, trgcmd );
    -- AA2
     elseif ( trgcmd == "fire" ) then
        Level.ProcessFireTriggers( sender, trgname );
    -- AA4
     elseif ( trgcmd == "grenade" ) then
        Level.ProcessGrenadeTriggers( sender, trgname );
    -- AA5
     elseif ( trgcmd == "knife" ) then
        Level.ProcessKnifeTriggers( sender, trgname );
    -- AA6
     elseif ( trgname == "ActionTrigger" ) then
       if ( Level.IsMissionTaskCompleted('POLS') == true ) then                 
         if ( Level.ShowActionMenu == false ) then
           Level.ShowHelp( "game:Levels\\training\\tips\\action_tip.txt" );
           Level.ShowActionMenu = true;
           Level.ClearSmallMessages();
           Level.ShowMessageTime( MissionText.Action_Menu, 15.0 );
         else
           Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
         end;
       end;

    -- SG

    elseif ( trgname == 'UsedWirecutterTrigger' ) then
       Level.OnEnterUsedWirecutterTrigger();
    elseif ( trgname == 'PalatkaTrigger_01' ) then
       Level.OnEnterPalatkaTrigger();
    elseif (trgname == 'BunkerTrigger_1') then
       Level.OnEnterBunkerTrigger1();
    elseif (trgname == 'EnterBunkerTrigger') then
       Level.OnEnterEnterBunkerTrigger();
    elseif (trgname == 'NeutralizePatrolTrigger') then
       Level.OnEnterNeutralizeTrigger();
    -- SG3
    elseif (trgname == 'VehicleFinishTrigger') then
       Level.OnEnterVehicleFinishTrigger();
    elseif (trgname == 'StopVehicleTrigger') then
       Level.OnEnterStopVehicleTrigger();
    -- SG4
    elseif (trgname == 'FinishVillageTrigger') then
       Level.OnEnterFinishVillageTrigger();
    elseif (trgname == 'ActivateEyeMessageTrigger') then
       Level.OnEnterActivateEyeMessageTrigger();
    -- SG5
    elseif (trgname == 'VillageEnterPointerTrigger') then
       Level.OnEnterVillageEnterPointerTrigger();
    elseif (trgname == 'VillageDropWeaponTrigger_1' or
            trgname == 'VillageDropWeaponTrigger_2') then
       Level.OnEnterVillageDropWeaponTrigger();
    end

  end

  function Level.OnLeaveTriggerArea( sender, trgname, trgcmd )

     -- SG3
    if (trgname == 'VehicleFinishTrigger') then
       Level.OnLeaveVehicleFinishTrigger();
    -- SG5
    elseif (trgname == 'CM_DropWeaponTrigger') then
       Level.OnLeaveCM_DropWeaponTrigger();
    -- SG6
    elseif ( trgname == 'PalatkaTrigger_01' ) then
       Level.OnLeavePalatkaTrigger();
    -- AA5
    elseif ( trgcmd == "knife" ) then
       Level.LeaveKnifeTrigger( sender, trgname );
    end;


  end;

  ------------- SG
  ----- Mission "neutralize". 
  ----- Mission "bunker"
  ----- Mission "village"

  -- Common functions
  function Level.HasTask(task) 
     return Level.HasMissionTask( task ) and
            Level.IsMissionTaskCompleted( task ) == false;
  end

  function Level.OnFailMiniMission( message )
     Level.FailedMission( message );
  end     

  function Level.IsNeutralizeMiniMission()
     return Level.HasMissionTask('NEUT') and
            Level.IsMissionTaskCompleted('NEUT') == false;
  end

  function Level.IsBunkerMiniMission()
     return Level.HasMissionTask('BUNK') and
            Level.IsMissionTaskCompleted('BUNK') == false;
  end

  function Level.IsVehicleMiniMission()
     return Level.HasMissionTask('VEHL') and
            Level.IsMissionTaskCompleted('VEHL') == false;
  end

  function Level.IsVillageMiniMission()
     return Level.HasMissionTask('VILG') and
            Level.IsMissionTaskCompleted('VILG') == false;
  end

  function Level.HasActiveMiniMission()
     return Level.IsNeutralizeMiniMission() or
            Level.IsBunkerMiniMission() or 
            Level.IsVehicleMiniMission() or
            Level.IsVillageMiniMission();
  end

  -- Neutral Script Job - Fail mission notification
  function Level.OnTrainingScriptJobStarted(npc)

     if (AI.KnowPlayerPosition(npc) != false) then
   
        Level.OnFailMiniMission( MissionText.Fail_OnFight );

     else

        Level.OnFailMiniMission( MissionText.Fail_OnSeeBody );

     end

  end

  -- Set default state for all bots
  function Level.MakeAllBotsDefault()
     for i in Level.BotsUID do
         local npc = AI.FindNPC( Level.BotsUID[i] );

         if (npc != nil) then
            -- Fail script tasks
            AI.FailTask( npc, AI.TASK_SCRIPT_NEUTRAL);  

            -- Set neutral logic
            AI.ChangeLogic( npc, "PassiveTraining" );

            -- Clear memory
            AI.ClearMemory( npc );

            -- Change attention
            AI.DirtyChangeAttention( npc, AI.ATTENTION_RELAX, true );
         end
     end
  end

  function Level.ActivateBot( uid )
     local npc = AI.FindNPC( uid );
     if (npc != nil) then
        AI.ChangeLogic( npc, "ActiveTraining" );
        AI.ClearMemory( npc );
        AI.DirtyChangeAttention( npc, AI.ATTENTION_RELAX, true );
     end
  end

  function Level.OnKilledBot( botId )
     Level.OnFailMiniMission( MissionText.Fail_KillBot );
  end

  function Level.OnHittedActiveBot( botId )

     -- neutralize mini mission
     if (Level.IsNeutralizeMiniMission() != false) then
        if (botId == 'SS01') then
           -- Update tasks
           Level.CompleteMissionTask('NRGR', 10.0 );
           Level.RemoveMissionTask( 'NRGR' ); 
           -- Add new mission task
           Level.AddMissionTask( MissionText.TaskHideBody, 'HDBD', "levels\\training\\hide_body.txt" );
           Level.AddTimer( 'HBTM', "OnRagdollTimer", 1.0, true );
           -- Update marks
           Level.EnableLevelMark( 'SS01', false );
           Level.EnableLevelMark( 'HDBD', true );
           Level.EnableLevelMark( 'HLF1', false );
           Level.SetPointerConfiguration(3);

           Level.ClearSmallMessages();
           Level.ShowMessageTime( MissionText.Message_HideBody, 20.0 );

          -- save progress
          Level.SaveTraining();

        elseif (botId == 'SS02') then
           if (Level.HasMissionTask('NRSR') == false) then
              Level.OnFailMiniMission( MissionText.Fail_HitBot );
              return;
           end

           if (Level.UsePatrolNeutralize != false) then
              Level.AddMissionTask( MissionText.TaskNeutralizePatrol, 'NRPT', "levels\\training\\neutral_patrol.txt" );
           end

           Level.CompleteMissionTask('NRSR', 10.0 );
           Level.RemoveMissionTask( 'NRSR' ); 
           Level.EnableLevelMark( 'SS02', false );
           Level.ClearSmallMessages();

           if (Level.UsePatrolNeutralize == false) then
              Level.OnFinishMiniMission('NEUT');
           else
              -- Marks and messages
              Level.ShowMessage( MissionText.Message_NeutralizePatrol );
              Level.EnableLevelMark( 'NRPT', true );
              Level.SetPointerConfiguration(18);

              -- Update bots configuration
              Level.CanHittedBotList[3] = 'SS09';
              Level.ActivateBot('SS09');

              Actor.MarkAsTarget( Level.FindActor('SS09'), true );
           end

           if (Level.UsePatrolNeutralize != false) then
              -- save progress
              Level.SaveTraining();
           end

        elseif (botId == 'SS09') then
           if (Level.HasMissionTask('NRPT') == false) then
              Level.OnFailMiniMission( MissionText.Fail_HitBot );
              return;
           end

           Level.CompleteMissionTask('NRPT', 10.0 );
           Level.RemoveMissionTask( 'NRPT' ); 
           Level.EnableLevelMark( 'SS09', false );
           Level.ClearSmallMessages();

           Level.OnFinishMiniMission('NEUT');
        end
     end

     -- bunker mini mission
     if (Level.IsBunkerMiniMission() != false) then

       if (Level.HasTask('ARBN') != false) then

         if (botId == 'SS03' or
             botId == 'SS06' or
             botId == 'SS07') then

           if (Level.BodyMessageShowed == false) then
              Level.ClearSmallMessages();
              Level.ShowMessageTime( MissionText.Message_BodyMessage, 15.0 );
              Level.BodyMessageShowed = true;
           end
           return;

         elseif (botId == 'SS05') then
           Level.SetPointerConfiguration(17);
           Level.RemoveTimer( 'BNTM' );
           return;
         end

       elseif (Level.HasTask('RDST') != false) then
         if (botId == 'SS08') then
           Level.ClearSmallMessages();
           Level.ShowMessage(MissionText.Message_ChangeCloth);
           Level.SetPointerConfiguration(-1);
           Level.ObserveLockpick = false;
           return;
         end
       end

       Level.OnFailMiniMission( MissionText.Fail_HitBot );

     end

     -- village mini mission
     if (Level.IsVillageMiniMission() != false) then
       
       if (botId == 'SO02') then

          if (Level.HasTask('OFCL') == false) then
             Level.OnFailMiniMission( MissionText.Fail_HitOfficer );
          else
             Level.ClearSmallMessages();
             Level.ShowMessage(MissionText.Message_TriggerInfo[28]);
             Level.SetPointerConfiguration(-1);
          end

       elseif (botId == 'SO01' or
               botId == 'SS13') then
          Level.OnFailMiniMission( MissionText.Fail_HitBot );
       end
     end

  end

  function Level.OnHittedBot( botId )
     for i in Level.CanHittedBotList do
        if (botId == Level.CanHittedBotList[i]) then
           Level.OnHittedActiveBot(botId);
           return;
        end
     end

     Level.OnFailMiniMission( MissionText.Fail_HitBot );
  end

  function Level.IsMiniMissionPassed(missionId)

      if (Level.HasMissionTask(missionId) != false and
          Level.IsMissionTaskCompleted(missionId) != false) then

          return true;

      end

      return false;
  end

  -- Check mission conditions.
  -- This function calls from start TMM trigger, before Level.OnStartMiniMission
  function Level.CheckMiniMissionConditions( missionId )
     if (Level.HasMissionTask(missionId) != false) then
        return "";
     end

     if (Level.HasActiveMiniMission() != false) then
        return "";
     end

     if (Level.RandomMission != false) then
        return nil;
     end

     if (missionId == 'NEUT') then
        -- Check neutralize start conditions

        if (Level.IsMiniMissionPassed('VEHL') == false) then
           return "";
        end

        if (Level.AtVehicle != false) then
           return MissionText.Message_Vehicle;
        end
     
     elseif (missionId == 'BUNK') then
        -- Check bunker start conditions
        if (Level.IsMiniMissionPassed('NEUT') == false) then
           return "";
        end

        if (Level.AtVehicle != false) then
           return MissionText.Message_Vehicle;
        end

     -- SG3
     elseif (missionId == 'VEHL') then
        -- Check vehicle start conditions
        if (Level.IsMiniMissionPassed('KNIF') == false) then
           return "";
        end

        if (Level.AtVehicle != false) then
           return MissionText.Message_Vehicle;
        end

     elseif (missionId == 'VILG') then
        -- Check village start conditions
        if (Level.IsMiniMissionPassed('BUNK') == false) then
           return "";
        end

        if (Level.AtVehicle != false) then
           return MissionText.Message_Vehicle;
        end

        local formId = Actor.GetWearFormId( Level.GetPlayer() );
        if (formId != Level.BunkerSoldierFormId) then 
          return MissionText.Message_CantStartForm;
        end
     end

     return nil;
  end

  -- This function calls from start TMM trigger, if Level.CheckMiniMissionConditions is successed
  function Level.OnStartMiniMission( missionId )
     -- check start conditions...
     if (Level.CheckMiniMissionConditions(missionId) != nil) then
        return false;
     end

     -- setup default conditions...
     Level.MakeAllBotsDefault();

     -- disable vehicle use...
     if (missionId != 'VEHL') then
        Level.EnableVehicleUse( 'VEHL', false );
     else
        Level.EnableVehicleUse( 'VEHL', true );
     end

     -- set player camouflage state
     if (missionId == 'NEUT') then
        AI.SetPlayerCamouflageState(false);
     elseif (missionId == 'BUNK') then
        AI.SetPlayerCamouflageState(false);
     elseif (missionId == 'VILG') then
        AI.SetPlayerCamouflageState(true);
        Actor.SetActorTypeId(Level.GetPlayer(), Actor.ACTOR_TYPE_SOLDIER, Actor.ACTOR_NATION_SOVIET );
        AI.RebuildPlayerForm();
     end

     -- install task...
     -- setup can hit bots
     Level.CanHittedBotList = {};
     if (missionId == 'NEUT') then
        Level.CanHittedBotList[1] = 'SS01';
        Level.CanHittedBotList[2] = 'SS02';
     elseif (missionId == 'BUNK') then
        Level.CanHittedBotList[1] = 'SS03';
        Level.CanHittedBotList[2] = 'SS05';
        Level.CanHittedBotList[3] = 'SS06';
        Level.CanHittedBotList[4] = 'SS07';
        Level.CanHittedBotList[5] = 'SS08';
     elseif (missionId == 'VILG') then
        Level.CanHittedBotList[1] = 'SS11';
        Level.CanHittedBotList[2] = 'SS12';
        Level.CanHittedBotList[3] = 'SS14';
        Level.CanHittedBotList[4] = 'SS15';
        Level.CanHittedBotList[5] = 'SS16';
        Level.CanHittedBotList[6] = 'SS13';
        Level.CanHittedBotList[7] = 'SO01';
        Level.CanHittedBotList[8] = 'SO02';
     end

     for i in Level.CanHittedBotList do
        Level.ActivateBot(Level.CanHittedBotList[i]);
     end

     -- custom bot job

     -- reset messages
     Level.ClearSmallMessages();

     -- show messages
     if (missionId == 'NEUT') then
        Level.SetLargeMessage( MissionText.Message_NeutralizeStart, 10.0, 255, 255, 255 );
     elseif (missionId == 'BUNK') then
        Level.SetLargeMessage( MissionText.Message_BunkerStart, 10.0, 255, 255, 255 );
        Level.ShowMessage( MissionText.Message_TriggerInfo[7] );
     elseif (missionId == 'VEHL') then
        Level.SetLargeMessage( MissionText.Message_VehicleStart, 10.0, 255, 255, 255 );
        Level.ShowMessage( MissionText.Message_EnterVehicle );
     elseif (missionId == 'VILG') then
        Level.SetLargeMessage( MissionText.Message_VillageStart, 10.0, 255, 255, 255 );
        Level.ShowMessage( MissionText.Message_EnterHouse );
     end

     -- show help
     if (missionId == 'BUNK') then
        --Level.ShowHelp( "game:levels\\training\\tips\\vision_tip.txt" );
     elseif (missionId == 'VEHL') then
        Level.ShowHelp( "game:levels\\training\\tips\\vehicle_tip.txt" );
     elseif (missionId == 'VILG') then
        Level.ShowHelp( "game:levels\\training\\tips\\form_tip.txt" );
     end

     -- add mission tasks
     if (missionId == 'NEUT') then
        Level.AddMissionTask( MissionText.TaskNeutralize,       'NEUT', "levels\\training\\neutralize.txt" );
        Level.AddMissionTask( MissionText.TaskNeutralizeGuard,  'NRGR', "levels\\training\\neutral_guard.txt" );
     elseif (missionId == 'BUNK') then
        Level.AddMissionTask( MissionText.TaskPalatka,          'PALT', "levels\\training\\arrive_palatka.txt" );
        Level.AddMissionTask( MissionText.TaskBunker,           'BUNK', "levels\\training\\bunker_task.txt" );
     elseif (missionId == 'VEHL') then
        Level.AddMissionTask( MissionText.TaskVehicle,          'VEHL', "levels\\training\\vehicle_task.txt" );
     elseif (missionId == 'VILG') then
        Level.AddMissionTask( MissionText.TaskVillage,          'VILG', "levels\\training\\village_task.txt" );
     end

     -- enable marks
     if (missionId == 'NEUT') then
        Actor.MarkAsTarget( Level.FindActor('SS01'), true );

        Level.EnableLevelMark( 'SS01', true );
        Level.EnableLevelMark( 'HLF1', true );

        Level.SetPointerConfiguration( 1 );

     elseif (missionId == 'BUNK') then
        Level.EnableLevelMark( 'ARTF', true );
        Level.EnableLevelMark( 'PALA', true );
        Level.EnableLevelMark( 'BUKT', true );
                            
        Level.SetPointerConfiguration( 8 );

     elseif (missionId == 'VEHL') then
        Level.EnableLevelMark( 'VHFN', true );
        Level.SetPointerConfiguration( 22 );

     elseif (missionId == 'VILG') then
        Level.EnableLevelMark( 'HOUS', true );
        Level.EnableLevelMark( 'MP40', true );
        Level.SetPointerConfiguration( 27 );
     end 

     Level.EnableLevelMark( missionId, false );

     -- clear player inventory...
     Actor.ClearInventory( Level.GetPlayer(), true );

     -- drop weapon and bodies
     if (Actor.HasPickupedActor( Level.GetPlayer() ) != false) then
        Actor.DropActor( Level.GetPlayer(), false );
     end

     if (Actor.GetCurrentWeapon( Level.GetPlayer() ) != nil ) then
        Actor.DropCurrentWeapon( Level.GetPlayer() );
     end
                      
     -- init player equipment...
     if (missionId == 'NEUT') then
        local player = Level.GetPlayer();
        local backpack = Actor.GetBackPack( player );
        if (backpack == nil) then
           backpack = Level.CreateItem( "playersack", "container" );
           if ( backpack == nil ) then
               error('Failed create player pack');
           end;

           Actor.PutBackPack( player, backpack );
        end
     elseif (missionId == 'VILG') then
        --local player = Level.GetPlayer();
        --local backpack = Actor.GetBackPack( player );
        --if (backpack != nil) then
        --   Actor.DropBackPack( player );
        --   Level.EnableItemPickup( Level.FindItem('PAK1'), false );
        --   Level.EnableItemPickup( Level.FindItem('PAK2'), false );
        --end
     end

     -- create equipment
     if (missionId == 'NEUT') then

        local chloroform = Level.CreateWorldItem( "Chloroform" , "Weapon" , 
                                          832.77, -66.29, 9.48, 0.0, 0.0, 0.0, 'CLF1' );
        local wirecutter = Level.CreateWorldItem( "Wirecut",  "Equipment" , 
                                          918.19, -64.42, -192.95, 0.0, 0.0, 0.0, 'WRCT');

        local n = Entity.GetNode( wirecutter );
        if ( n != nil ) then
            node.SetRotation( helpNode, -41.84, -180.0, -90.0 );
            node.InvalidateTransforms( helpNode );
        end;

        Level.EnableItemPickup( wirecutter, false );

        Level.EnableNotifyPickup( chloroform, true );

     elseif (missionId == 'BUNK') then

        local chloroform = Level.CreateWorldItem( "Chloroform" , "Weapon" , 
                                          -344.97, -66.29, -210.29, 0.0, 0.0, 0.0, 'CLF2' );
        local smoke      = Level.CreateWorldItem( "Smoke" , "Weapon" , 
                                          -343.22, -66.60, -210.98, 0.0, 0.0, 0.0, 'SM01' );
        local lockpick   = Level.CreateWorldItem( "Lockpick" , "Equipment" , 
                                          -346.65, -66.69, -209.98, 0.0, 0.0, 0.0, 'LP01' );

        Level.EnableNotifyPickup( chloroform, true );

     elseif (missionId == 'VILG') then

        local mp40   = Level.CreateWorldItem( "Mp40", "weapon" , 
                                              343.75, -66.69, -538.96, 0.0, 0.0, 0.0, 'MP40' );
        if (mp40 != nil) then
           local n = Entity.GetNode( mp40 );
           if ( n != nil ) then
              node.SetRotation( n, 0.0, -180.0, -90.0 );
              node.InvalidateTransforms( n );
           end;

           Level.SetWeaponAmmo( mp40, 0 );

        else
           print("Error. Cant create item: weapon.mp40");
        end

     end;

     -- Add action handlers
     if (missionId == 'VILG') then
   
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS11", "OnSeePlayer" );
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS12", "OnSeePlayer" );
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS13", "OnSeePlayer" );
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS14", "OnSeePlayer" );
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS15", "OnSeePlayer" );
        Level.AddActionHandler( Level.AH_SEE_PLAYER, "SS16", "OnSeePlayer" );

        Level.EnableNotifyPickup( Level.FindWeaponItem('MP40'), true );
     end;

     -- Close/open some doors
     if (missionId == 'VILG') then
        local door = Level.FindDoor('DROF');
        if ( door != nil ) then
           Level.SetDoorLocked( door, true, true );
        end;
     end;

     -- save current progress..
     Level.SaveTraining();
  end

  function Level.DisableItemPickup( uid )
     local item = Level.FindItem( uid );
     if (item != nil) then 
        Level.EnableItemPickup( item, false );
        return;
     end

     item = Level.FindWeaponItem( uid );
     if (item != nil) then
        Level.EnableItemPickup( item, false );
        return;
     end
  end

  function Level.OnRemoveWeaponTimer()

    if (Level.WeaponId == "") then
      Level.RemoveTimer( 'RMWT' );
    end

    if ( Actor.GetCurrentWeapon( Level.GetPlayer() ) != nil ) then

      Actor.DropCurrentWeapon( Level.GetPlayer() );

    else

      if (Actor.HasWeapon(player, Level.WeaponId)) then

         Actor.RemoveWeapon(player, Level.WeaponId);

         Level.WeaponId = "";
      end

      Level.RemoveTimer( 'RMWT' );
    end;
  end

  function Level.DoRemoveWeapon(wp)
     Level.WeaponId = wp;
     Level.AddTimer( 'RMWT', "OnRemoveWeaponTimer", 0.3, true );
  end

  -- This function calls when TMM is passed
  function Level.OnFinishMiniMission( missionId )
     if (Level.HasMissionTask(missionId) == false) then
        return;
     end

     -- complete tasks...
     Level.CompleteMissionTask(missionId, 15.0 );
    
     if ( missionId == 'VEHL') then
        Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255,255, 255 );
        Level.EnableLevelMark('NEUT', true );
     elseif ( missionId == 'NEUT' ) then
        Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255,255, 255 );
        Level.EnableLevelMark('BUNK', true );
     elseif ( missionId == 'BUNK' ) then
        Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255,255, 255 );
        Level.EnableLevelMark('VILG', true );
     elseif ( missionId == 'VILG' ) then
        Level.CompleteMissionTask('TRAN', 15.0 );
     end;

     -- remove old tasks...
     if (missionId == 'NEUT') then
        Level.RemoveMissionTask( 'NRGR' ); 
        Level.RemoveMissionTask( 'NRSR' );
        Level.RemoveMissionTask( 'HDBD' );
        Level.RemoveMissionTask( 'HRPT' );
     elseif (missionId == 'BUNK') then
        Level.RemoveMissionTask( 'PALT' ); 
        Level.RemoveMissionTask( 'ARBN' );
        Level.RemoveMissionTask( 'RDST' );
     elseif (missionId == 'VILG') then
        Level.RemoveMissionTask( 'OFCL' );
     end
                            
     -- disable marks...
     if (missionId == 'NEUT') then
        Level.EnableLevelMark( 'SS01', false );
        Level.EnableLevelMark( 'SS02', false );
        Level.EnableLevelMark( 'HDBD', false );
        Level.EnableLevelMark( 'WRCT', false );
        Level.EnableLevelMark( 'WRC2', false );
        Level.EnableLevelMark( 'HLF1', false );
        Level.EnableLevelMark( 'NRPT', false );
     elseif (missionId == 'BUNK') then
        Level.EnableLevelMark( 'ARTF', false );
        Level.EnableLevelMark( 'PALA', false );
        Level.EnableLevelMark( 'BUKT', false );
        Level.EnableLevelMark( 'STOL', false );
        Level.EnableLevelMark( 'BUK2', false );
     elseif (missionId == 'VEHL') then
        Level.EnableLevelMark( 'VHFN', false );
     elseif (missionId == 'VILG') then
        Level.EnableLevelMark( 'MP40', false );
        Level.EnableLevelMark( 'HOUS', false );
        Level.EnableLevelMark( 'OFCL', false );
     end

     Level.SetPointerConfiguration( -1 );
     Level.SetDynamicObjectPointer( nil, 0.0 );
     Level.SetObjectPointer( nil, 0.0 );

     Level.ClearSmallMessages();

     -- setup default conditions...
     Level.CanHittedBotList = {};
     Level.MakeAllBotsDefault();

     -- enable vehicle use...
     Level.EnableVehicleUse( 'VEHL', true );

     -- update actors job
     if (missionId == 'BUNK') then
        Level.StartCustomAnimationJob('SS03', "Act_Ludoed_SitPood", '4862', 
                                      -274.78, -74.85, -485.51, -1.0, 0.0, 0.0, false );

        Level.StartCustomAnimationJob('SS05', "Act_Lay_LookIntoTheSky", '4863', 
                                      -289.08, -75.08, -488.95, 0.0, 0.0, 1.0, true );

        Level.StartCustomAnimationJob('SS06', "Act_Stand_AboutWall", '4865', 
                                      -239.61, -75.08, -456.63, -1.0, 0.0, 0.0, false );

        Level.StartCustomAnimationJob('SS07', "Act_Ludoed_SitPood", '4867', 
                                      -249.44, -75.08, -428.40, -1.0, 0.0, 0.0, true );
     end

     -- Remove entities...
     if (missionId == 'BUNK') then
        local player = Level.GetPlayer();
        Actor.RemoveWeapon(player, 'SM01');
        Actor.RemoveWeapon(player, 'CLF2');
        Actor.RemoveEquipment(player, 'LP01');

        local eq = { 'TO01', 'TO02', 'TO03', 'TO04', 'TO05', 'TO06', 'TO07', 'TO08', 'BO01' };

        for i in eq do
           if (Actor.HasEquipment(player, eq[i]) != false) then
              Actor.RemoveEquipment(player, eq[i]);
           else
              local item = Level.FindItem(eq[i]);
              if (item != nil) then
                 Level.EnableItemPickup(item, false);
              end
           end
        end

        Level.DoRemoveWeapon('CLF2');

        Actor.ClearInventory( Level.GetPlayer(), true );

     elseif (missionId == 'NEUT') then

        Level.DoRemoveWeapon('CLF1');

        Actor.ClearInventory( Level.GetPlayer(), true );

     end

     -- Disable items pickup...
     if (missionId == 'BUNK') then

        Level.DisableItemPickup( 'SM01' );
        Level.DisableItemPickup( 'CLF2' );
        Level.DisableItemPickup( 'LP01' );

     elseif (missionId == 'NEUT') then

        Level.DisableItemPickup( 'CLF1' );
        Level.DisableItemPickup( 'WRCT' );

     elseif (missionId == 'VILG') then

        Level.DisableItemPickup( 'MP40' );

     end

     -- disable bodies...
     if (missionId == 'NEUT') then
        Level.DisableBodies(1);
     elseif (missionId == 'BUNK') then
        Level.DisableBodies(3);
     end

     -- save current progress..
     Level.SaveTraining();

  end

  -- TMM "neutralize" internal timer
  function Level.OnRagdollTimer()
     if (Level.HasMissionTask('HDBD') and
         Level.IsMissionTaskCompleted('HDBD') == false) then

        if ( Level.ShowedDropBodyMessages == false and
             Actor.HasPickupedActor( Level.GetPlayer(), 'SS01' ) != false ) then

            Level.ClearSmallMessages();
            Level.ShowMessage( MissionText.Message_DropBody );
            Level.ShowedDropBodyMessages = true;
        end

        local body = Level.FindActor('SS01');
        if (body != nil) then
           local n = Actor.GetNode( body );
           local v = {};
           v.x, v.y, v.z = node.GetPosition(n);

           if (v.x > 958.0 and v.x < 970.0 and
               v.y > -66.0 and v.y < -54.0 and
               v.z > -289.0 and v.z < -275.5) then

             Level.EnableLevelMark( 'HDBD', false );
             Level.CompleteMissionTask('HDBD');
             Level.RemoveMissionTask( 'HDBD' ); 
             Level.RemoveTimer( 'HBTM' );

             Level.AddMissionTask( MissionText.TaskNeutralizeSniper, 'NRSR', "levels\\training\\neutral_sniper.txt" );
             Level.EnableLevelMark( 'SS02', true );
             Actor.MarkAsTarget( Level.FindActor('SS02'), true );
             Level.ClearSmallMessages();

             local wirecutter = Level.FindItem('WRCT');
             Level.EnableItemPickup( wirecutter, true );

             if (Actor.HasEquipment( Level.GetPlayer(), 'WRCT' ) == false) then
                Level.EnableLevelMark( 'WRCT', true );
                Level.SetPointerConfiguration( 4 );
                Level.ShowMessage( MissionText.Message_GetWirecutter );
             end

             -- save progress
             Level.SaveTraining();
           end
        end
     end
  end

  -- Set help pointer utility
  function Level.SetPointerConfiguration(num)
     if (num == -1) then
        Level.RemoveHelpPointer();
        return;
     end
   
     local pos = { 
                   -- neutralize  
                   { x =  832.0, y = -59.0, z =  9.33 },   -- chloroform (1)
                   { x =  960.0, y = -39.0, z = -316.0 },  -- guard      (2)
                   { x =  964.0, y = -41.0, z = -281.0 },  -- box        (3)
                   { x =  919.0, y = -54.0, z = -192.0 },  -- wirecutter (4)
                   { x =  890.0, y = -54.0, z = -257.0 },  -- wire       (5)
                   { x =  727.0, y = -33.0, z = -434.0 },  -- stair      (6)
                   { x =  727.0, y =  30.0, z = -455.0 },  -- sniper     (7)
                   -- bunker
                   { x = -345.0, y = -59.0, z = -211.0 },  -- devices    (8)
                   { x = -533.0, y =  -9.5, z = -354.0 },  -- tent       (9)
                   { x = -570.0, y = -58.0, z = -365.0 },  -- cups       (10)
                   { x = -41.0,  y = -3.5,  z = -812.0 },  -- bunker     (11)
                   { x =  7.06,  y = -49.5, z = -794.0 },  -- guard      (12)
                   { x = -105.0, y = -108.0, z = -815.0 },  -- door      (13)
                   { x = -92.0,  y = -108.0, z = -867.0 },  -- door      (14)
                   { x = -46.0,  y = -106.0, z = -881.0 },  -- radist    (15)
                   { x = -500.0, y = -58.0,  z = -364.0 },  -- exit tent (16)
                   { x = 4.73,   y = -56.65, z = -812.0 },   -- enter bunker (17)
                   -- neutralize  
                   { x =  1101.77, y =  -55.48, z = -331.93 },  -- exit   (18)
                   { x =  1138.36, y =  -45.93, z = -22.21 },   -- patrol (19)
                   { x =  854.05,  y =  -55.48, z = -20.02 },   -- begin  (20)
                   -- bunker
                   { x = -263.00,  y =  -59.43, z = -261.24 }, -- tent helper 1 (21)
                   -- vehicle
                   { x = -404.02,  y = -61.76,  z = 96.04 },  -- enter vehicle (22)
                   { x = -222.19,  y = -50.14,  z = 198.54 }, -- vehicle control point 1 (23)
                   { x = 119.90,   y = -50.14,  z = 198.54 }, -- vehicle control point 2 (24)
                   { x = 445.29,   y = -50.14,  z = 198.54 }, -- vehicle control point 3 (25)
                   { x = 956.06,   y = -40.21,  z = 198.54 }, -- vehicle finish (26)
                   -- village
                   { x = 260.12,   y = -59.43,  z = -556.35 }, -- village first house door (27)
                   { x = 289.68,   y = -59.43,  z = -528.64 }, -- village first house room (28)
                   { x = 343.94,   y = -59.12,  z = -537.41 }, -- mp40 (29)
                   { x = 333.73,   y = -56.24,  z = -116.83 }, -- target house door (30)
                   { x = 327.42,   y =   9.18,  z = -65.16 },  -- target house (31)
                   { x = 26.53,    y = -45.43,  z =  69.56 }   -- tatget officer (32)
                 };
     local rot = { 
                   -- neutralize   
                   { x = 0.0,  y = 0.0,    z = 0.0  },
                   { x = 0.0,  y = 0.0,    z = 0.0  },
                   { x = 0.0,  y = 0.0,    z = 0.0  },
                   { x = 0.0,  y = 0.0,    z = 0.0  },
                   { x = 42.0, y = 0.0,    z = 0.0  },
                   { x = 0.0,  y = -180.0, z = -180.0 },
                   { x = 0.0,  y = 0.0,    z = 0.0  },
                   -- bunker
                   { x = 0.0,  y = 0.0,    z = 0.0 },   
                   { x = 0.0,  y = 0.0,    z = 0.0 },   
                   { x = 0.0,  y = 0.0,    z = 0.0 },   
                   { x = 0.0,  y = 0.0,    z = 0.0 },   
                   { x = 0.0,  y = 0.0,    z = 0.0 },   
                   { x = 90.0, y = 0.0,    z = 0.0 },   
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 0.0 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = -90.0 },
                   -- neutralize   
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = -44.6 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   -- bunker
                   { x = 0.0,  y = 0.0,    z = -90.0 },
                   -- vehicle
                   { x = 90.0, y = 0.0,    z = 0.0 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 0.0 },
                   -- village
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 90.0 },
                   { x = 0.0,  y = 0.0,    z = 0.0 },  
                   { x = 0.0,  y = 0.0,    z = -90.0 },
                   { x = 0.0,  y = 0.0,    z = 0.0 },  
                   { x = 0.0,  y = 0.0,    z = 0.0 }
                 };

     if (pos[num] == nil) then
        return;
     end

     Level.SetHelpPointer   ( (pos[num]).x, (pos[num]).y, (pos[num]).z );
     Level.RotateHelpPointer( (rot[num]).x, (rot[num]).y, (rot[num]).z );
  end

  -- Check bunker guardian position
  function Level.OnBotPositionTimer()
     if (Level.HasTask('ARBN')) then
        local bot = Level.FindActor( 'SS05' );
        if (bot != nil) then
           local n = Entity.GetNode(bot);
           local pos = {};
           pos.x, pos.y, pos.z = node.GetPosition( n );
           if ( (pos.x - 7.0) * (pos.x - 7.0) > 400.0 or
                (pos.z + 794.0) * (pos.z + 794.0) > 400.0 ) then

               Level.SetPointerConfiguration(17);
               Level.RemoveTimer( 'BNTM' );
           end
        end
     end
  end

  -- On player clothed to radist
  function Level.OnRadistCloth()
     if (Level.HasTask('RDST') == false) then
        Level.OnFailMiniMission( MissionText.Fail_DontUseRadiusForm );
     else
        Level.OnFinishMiniMission('BUNK');
     end
  end
                                                
  -- Utility start custom animation job
  function Level.StartCustomAnimationJob( botUID, anim, waypoint, posX, posY, posZ, dirX, dirY, dirZ, slipping)
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
       Level.SetValue(properties, "Is sleeping", slipping);
 
       if (waypoint != nil) then
          Level.SetValue(properties, "Return place waypoint", waypoint);
       end
       Level.SetValue(properties, "Position", posX, posY, posZ);
       Level.SetValue(properties, "Direction", dirX, dirY, dirZ);
       AI.Idle( bot, properties );
    end
  end

  function Level.OnFinishPalatkaTask()
    Level.CompleteMissionTask('PALT');
    Level.RemoveMissionTask('PALT');
    Level.ClearSmallMessages();
    Level.ShowMessageTime( MissionText.Message_Table, 20.0 );
    Level.ShowMessageTime( MissionText.Message_TriggerInfo[29], 20.0 );
    Level.SetPointerConfiguration(10);

    Level.EnableLevelMark('PALA', false);
    Level.EnableLevelMark('STOL', true);
    Level.EnableLevelMark('BUKT', false);
    Level.EnableLevelMark('BUK2', true);
    Level.AddMissionTask( MissionText.TaskArriveBunker, 'ARBN', "levels\\training\\arrive_bunker.txt" );

    -- Install patrols
    AI.Patrol( AI.FindNPC('SS06'), "Path38", nil );
    AI.Patrol( AI.FindNPC('SS07'), "Path37", nil );

    -- save progress
    Level.SaveTraining();
  end

  function Level.OnCheckBackPackTimer()
     if (Actor.GetBackPack(Level.GetPlayer()) == nil) then

        if (Level.AtPalatkaTrigger == false) then
           Level.ClearSmallMessages();
           Level.ShowMessage( MissionText.Message_ReturnCamp );
        else
           Level.OnFinishPalatkaTask();
        end
       
        Level.EnableItemPickup( Level.FindItem('PAK1'), false );
        Level.EnableItemPickup( Level.FindItem('PAK2'), false );

        Level.RemoveTimer('CBTM');
     end
  end

  function Level.OnLeavePalatkaTrigger()
     if (Level.HasTask('PALT') != false) then
        Level.AtPalatkaTrigger = false;
     end
  end

  -- On player entered trigger at tent
  function Level.OnEnterPalatkaTrigger()

       if (Level.HasTask('PALT') != false) then

          -- Add drop backpack task...
          if (Actor.GetBackPack(Level.GetPlayer()) == nil) then
             Level.OnFinishPalatkaTask();
             return;
          end

          Level.AtPalatkaTrigger = true;

          if (Level.BackPackMessage == false) then

             Level.BackPackMessage = true;

             Level.ShowHelp( "game:levels\\training\\tips\\backpack_tip.txt" );

             Level.ClearSmallMessages();
             Level.ShowMessage( MissionText.Message_DropBackpack );

             Level.AddTimer( 'CBTM', "OnCheckBackPackTimer", 0.5, true );
          end
       end
  end

  -- On player entered bunker
  function Level.OnEnterEnterBunkerTrigger()

       if (Level.HasTask('ARBN') != false) then

          Level.ClearSmallMessages();
          Level.SetPointerConfiguration(13);
          Level.EnableLevelMark('BUKT', true);
          Level.EnableLevelMark('BUK2', false);

          Level.CompleteMissionTask('ARBN');
          Level.RemoveMissionTask('ARBN');

          Level.ShowMessage(MissionText.Message_TriggerInfo[14]);
          Level.AddMissionTask( MissionText.TaskRadist, 'RDST', "levels\\training\\radist_bunker.txt" );

          Level.DisableBodies(2);

          -- save progress
          Level.SaveTraining();
       end
  end

  -- On player arrived bunker
  function Level.OnEnterBunkerTrigger1()

       if (Level.HasTask('ARBN') != false) then

          Level.ClearSmallMessages();
          Level.SetPointerConfiguration(12);

          Level.ShowMessage(MissionText.Message_BunkerMessage);
          Level.AddTimer( 'BNTM', "OnBotPositionTimer", 0.5, true );
       end
  end

  -- On player pass wire 
  function Level.OnEnterUsedWirecutterTrigger()

       if (Level.UsedWirecutter == false) then

          Level.EnableLevelMark( 'WRC2', false );
          Level.UsedWirecutter = true;
          
          if (Level.HasMissionTask('NRSR') != false) then
             Level.SetPointerConfiguration(6);
             Level.ShowMessageTime( MissionText.Message_NeutralizeSniper, 20.0 );
          end

          if (Level.UsePatrolNeutralize != false) then
             Level.StartCustomAnimationJob('SS09', "Act_Rasplata_Smoking", nil,
                                          1117.46, -74.00, -26.61, -1.0, 0.0, 0.0, false );
          end
       end
  end

  function Level.OnEnterNeutralizeTrigger()
      if (Level.HasTask('NRPT') and (Level.EnteredNeutralizeTrigger == false)) then
         -- begin patroling
         AI.Patrol( AI.FindNPC('SS09'), "Path40", nil);
         Level.SetPointerConfiguration(-1);
         Level.SetDynamicObjectPointer('SS09', 25.0);
         Level.EnableLevelMark('NRPT', false);
         Level.EnteredNeutralizeTrigger = true;
      
         Level.ShowHelp( "game:levels\\training\\tips\\nrpt_tip.txt" );

         Level.ClearSmallMessages();
         Level.ShowMessage( MissionText.Message_NeutralizePtrl2 );

         -- save progress
         Level.SaveTraining();
      end
  end

  -- on enter finish trigger at vehicle mini mission
  function Level.OnEnterVehicleFinishTrigger()
     if (Level.IsVehicleMiniMission() == false) then
        return;
     end

     if (Level.AtVehicle == false) then
        return;
     end

     Level.VehicleAtFinish = true;

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Message_LeaveVehicle );
  end

  -- village drop weapon trigger
  function Level.OnEnterVillageDropWeaponTrigger()
     if (Level.IsVillageMiniMission() == false) then
        return;
     end

     if (Actor.GetCurrentWeapon(Level.GetPlayer()) != nil) then
        Level.ShowHelp( "game:levels\\training\\tips\\dropweapon_tip.txt" );
        --Level.ShowMessageTime(MissionText.Message_DropWeapon, 10.0);

        Level.UnregisterTrigger( Level.FindTrigger('VillageDropWeaponTrigger_1') );
        Level.UnregisterTrigger( Level.FindTrigger('VillageDropWeaponTrigger_2') );
     end
  end

  -- on leave finish trigger during vehicle mini mission
  function Level.OnLeaveVehicleFinishTrigger()
     if (Level.IsVehicleMiniMission() == false) then
        return;
     end

     if (Level.AtVehicle == false) then
        return ;
     end

     Level.VehicleAtFinish = false;

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Message_ReturnOldPos );
  end

  -- On leave CM_DropWeaponTrigger
  function Level.OnLeaveCM_DropWeaponTrigger()
     if (Level.IsVillageMiniMission() != false) then
        if (Level.HasMissionTask('OFCL') == false and
            Level.ClearMessagesDropWeapon != false) then
           Level.ClearSmallMessages();
        end
        Level.ClearMessagesDropWeapon = false;
     end
  end

  -- On Enter stop message trigger
  function Level.OnEnterStopVehicleTrigger()
     if (Level.IsVehicleMiniMission() == false) then
        return;
     end

     if (Level.AtVehicle == false) then
        return ;
     end

     if (Level.ShowedStopMessage != false) then
        return;
     end
     
     Level.ShowedStopMessage = true;

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Message_TriggerInfo[25] );
  end

  -- On finish village trigger
  function Level.OnEnterFinishVillageTrigger()
     if (Level.IsVillageMiniMission() == false) then
        return;
     end

     if (Level.IsMissionTaskCompleted('OFCL') == false) then
        return;
     end

     Level.OnFinishMiniMission('VILG');
  end

  -- On enter activate eye message trigger
  function Level.OnEnterActivateEyeMessageTrigger()
     if (Level.IsVillageMiniMission() == false) then
        return; 
     end

     Level.EnableEyeIconMessage = true;
  end

  -- On enter village enter pointer trigger
  function Level.OnEnterVillageEnterPointerTrigger() 
     if (Level.IsVillageMiniMission() == false) then
        return; 
     end

     if (Level.HasTask('OFCL') != false) then 
        return;
     end

     Level.SetPointerConfiguration( 30 );
  end

  function Level.OnSeePlayerShowTimer()

     Level.ClearLargeMessages();
     Level.ShowHelp( "game:levels\\training\\tips\\eye_tip.txt" );

  end;

  -- On see player message
  function Level.OnSeePlayer()
     if (Level.ShowedEyeIconMessage != false or
         Level.EnableEyeIconMessage == false) then
        return;
     end

     if (Level.IsVillageMiniMission() == false) then
        return;
     end

     Level.AddTimer( 'SEYE' , "OnSeePlayerShowTimer" , 1.0 , false );
     Level.ShowedEyeIconMessage = true;
  end

  -- on finished task OFCL..
  function Level.OnFinishedOfficerClothTask()
     Level.ClearSmallMessages();
     Level.CompleteMissionTask('OFCL');
     Level.SetPointerConfiguration(30);
     Level.EnableLevelMark('OFCL', false);
     Level.ShowMessageTime(MissionText.Message_House, 15.0);
     --Level.SetObjectPointer(nil, 0.0);
     Level.SetDynamicObjectPointer(nil, 0.0);
  end

  function Level.ShowOfficerHelpTimer()
     Level.ShowHelp( "game:levels\\training\\tips\\officer_tip.txt" );
  end;

  -- On get officer form...
  function Level.OnOfficerCloth()

     if (Level.HasTask('OFCL') == false) then
        Level.OnFailMiniMission(MissionText.Failed_OfficerForm);
        return;
     else
        if (Level.OfficerInfoShowed == false) then
           Level.AddTimer('OHLP' , "ShowOfficerHelpTimer" , 1.0, false );
           Level.OfficerInfoShowed = true;
        end

        if (Actor.HasCustomEquipment(Level.GetPlayer(), 'DOCS') != false) then
           Level.OnFinishedOfficerClothTask();
           return;
        else
           Level.ClearSmallMessages();
           Level.ShowMessage(MissionText.Message_TriggerInfo[28][1]);
           -- Level.SetObjectPointer(Level.FindActor('SO02'), 9.0);
           Level.SetDynamicObjectPointer('SO02', 9.0);
        end
     end
  end

  -- On players inventory change during neuatralize mini mission
  function Level.OnNeutralize_InvChanged()

        if (Actor.HasEquipment( Level.GetPlayer(), 'WRCT' ) != false) then

           Level.EnableLevelMark( 'WRCT', false );
        
           if (Level.UsedWirecutter == false and
               Level.HasMissionTask('NRSR') != false) then
   
              Level.EnableLevelMark( 'WRC2', true );
              Level.SetPointerConfiguration( 5 );
              Level.ClearSmallMessages();
              Level.ShowMessageTime( MissionText.Message_EnterArea, 20.0 );
           end
        end

                                                    
        -- if (Actor.HasWeapon( Level.GetPlayer(), 'CLF1' ) != false ) then
        --    Level.EnableLevelMark( 'HLF1', false );

        --    if (Level.HasMissionTask('NRGR') != false) then
        --       Level.SetPointerConfiguration( 20 );
        --       Level.ClearSmallMessages();
        --       Level.ShowMessageTime( MissionText.Message_NeutralizeGuard, 20.0 );
        --       Level.ShowHelp( "game:Levels\\training\\tips\\hlor_tip.txt" );
        --    end
        -- end
  end

  function Level.CheckBunkerInvCampState()
     local player = Level.GetPlayer();

     if (Actor.HasWeapon(player, 'SM01') and
         Level.ClfState[2] == 1 and
         Actor.HasEquipment(player, 'LP01')) then

            Level.ObserveLockpick = true;
            Level.EnableLevelMark('ARTF', false);
            Level.SetPointerConfiguration( 21 );
            Level.ClearSmallMessages();                      
            Level.ShowHelp( "game:levels\\training\\tips\\vision_tip.txt" );
            Level.ShowMessage( MissionText.Message_Palatka );
      end
  end

  -- On players inventory change during bunker mini mission
  function Level.OnBunker_InvChanged() 
        local player = Level.GetPlayer();
        if ((Level.HasTask('PALT') != false) and 
            (Level.ObserveLockpick == false)) then

           Level.CheckBunkerInvCampState();

        end

        if (Level.ObserveLockpick != false) then
           if (Actor.HasEquipment(player, 'LP01') == false) then
              local entity = Level.FindItem('LP01');
              if (entity != nil) then
                  Level.SetObjectPointer( entity, 1.0 );
                  Level.ClearSmallMessages();                      
                  Level.ShowMessage( MissionText.Message_Lockpick );
              end
           else
              Level.SetObjectPointer( nil, 0.0 );
           end
        end
  end

  function Level.OnChloroformPickUp(id)
     if (id == 'CLF1') then
        if (Level.IsNeutralizeMiniMission() != false) then
           if (Level.ClfState[1] == 0) then
              Level.EnableLevelMark( 'HLF1', false );

              if (Level.HasMissionTask('NRGR') != false) then
                 Level.SetPointerConfiguration( 20 );
                 Level.ClearSmallMessages();
                 Level.ShowMessageTime( MissionText.Message_NeutralizeGuard, 20.0 );
                 Level.ShowHelp( "game:Levels\\training\\tips\\hlor_tip.txt" );
              end

              Level.ClfState[1] = 1;
           end
        end

     elseif (id == 'CLF2') then
        if (Level.IsBunkerMiniMission() != false) then
           if (Level.ClfState[2] == 0) then

              Level.ClfState[2] = 1;

              if ((Level.HasTask('PALT') != false) and 
                  (Level.ObserveLockpick == false)) then
                 Level.CheckBunkerInvCampState();
              end
           end
        end
     end
  end

  function Level.OnMp40PickUp()
     if (Level.StateMP40 == 0) then
        if (Level.IsVillageMiniMission() != false) then

           Level.EnableLevelMark('MP40', false);
           Level.SetPointerConfiguration( 31 );
           Level.StateMP40 = 1;

           Level.ShowHelp( "game:levels\\training\\tips\\dc_tip.txt" );

           Level.ClearSmallMessages();
           Level.ShowMessageTime(MissionText.Message_TriggerInfo[4], 10);
           Level.ShowMessageTime("", 10);
           Level.ShowMessage(MissionText.Message_TriggerInfo[30]);

           Level.EnableItemPickup( Level.FindWeaponItem('MP40'), false );

           if (Level.HasTask('OFCL') == false) then
              Level.ClearMessagesDropWeapon = true;
              Level.AddTimer( 'WDTM', "OnDropWeaponTimer", 0.5, true );
           end
        end
     end
  end

  function Level.OnDropWeaponTimer()
     if (Actor.GetCurrentWeapon(Level.GetPlayer()) == nil and
         Actor.HasWeapon(Level.GetPlayer(), 'MP40') == false) then

        Level.RemoveTimer('WDTM');

        if (Level.ClearMessagesDropWeapon != false) then
           Level.ClearSmallMessages();
           Level.ClearMessagesDropWeapon = false;
        end
     end
  end

  function Level.OnVillage_InvChanged()
     if (Level.HasTask('OFCL') == false) then
        return;
     end

     if (Actor.HasCustomEquipment(Level.GetPlayer(), 'DOCS') != false) then
       
         if (Actor.GetActorType(Level.GetPlayer()) == Actor.ACTOR_TYPE_OFFICER) then
            Level.OnFinishedOfficerClothTask();
         else
            Level.ClearSmallMessages();
            Level.ShowMessage(MissionText.Message_TriggerInfo[28][2]);
         end
     end
  end

  -- Utility find entity (check items and actors)
  function Level.FindEntity( uid ) 
      local entity = Level.FindItem( uid );
      if (entity == nil) then
         entity = Level.FindActor( uid );
      end
      return entity;
  end

  -- Set help pointer to entity object
  function Level.SetDynamicObjectPointer( entityUID, yDiff )

     if (entityUID == nil or entityUID == "") then
        Level.SetObjectPointer( nil, 0.0 );
        return;
     end

     local entity = Level.FindEntity( entityUID );
     if (entity != nil) then

        local helpPointer = Level.SetObjectPointer( entity, yDiff );
        if (helpPointer != nil) then
           Level.LinkHelpPointer( helpPointer, entity, yDiff );
        end

        return;
     end

     Level.SetDynamicObjectPointer( nil, 0.0 );
  end

  -- Set object pointer
  function Level.SetObjectPointer( entity, yDiff )

     local helpPointer = Level.FindItem( 'OBHL' );

     if (entity == nil) then
         Level.DeleteItem( helpPointer );
         return nil;
     end
                  
     local n = Entity.GetNode( entity );
     local x, y, z = node.GetPosition( n );
     if (yDiff != nil) then
         y = y + yDiff;
     end

     if ( helpPointer == nil ) then

       helpPointer = Level.CreateWorldItem( "Pointer" , "Equipment" , x, y, z, 0.0, 0.0, 0.0, 'OBHL' );
       if ( helpPointer == nil ) then
          return nil;
       end;

     else
       local helpNode = Entity.GetNode( helpPointer );

       if ( helpNode != nil ) then
          node.SetPosition( helpNode, x, y, z );
          node.InvalidateTransforms( helpNode );
       end;
     end;

     return helpPointer;
  end;

  function Level.OnLeaveVehicle()

     Level.AtVehicle = false;

     if (Level.IsVehicleMiniMission() == false) then
        if (Level.StartMiniMissionTrigger != nil) then
           Level.ClearSmallMessages();
           Level.StartMiniMissionTrigger:OnEnterArea();
        end
     else
        if (Level.VehicleAtFinish != false) then
           Level.OnFinishMiniMission('VEHL');
        else
           Level.ClearSmallMessages();
           Level.ShowMessage(MissionText.Message_ReturnVehicle);
           Level.SetDynamicObjectPointer( 'VEHL', 30.0 );
        end
     end

  end

  function Level.OnEnterVehicle()

     Level.AtVehicle = true;

     if (Level.IsVehicleMiniMission() != false) then
        if (Level.StartVehicleDriving == false) then
           Level.StartVehicleDriving = true;
           Level.SetPointerConfiguration( 23 );
           Level.ClearSmallMessages();
           Level.ShowMessageTime( MissionText.Message_TriggerInfo[24], 10.0 );
        else
           Level.ClearSmallMessages();
           Level.SetDynamicObjectPointer( nil, 0.0 );
        end
     end

  end

  function Level.ShowMessageTime( a, time )

     if ( type(a) == "table" ) then
       for i in a do
         Level.AddSmallMessage( a[i], time, 255, 255, 255 );
       end;
     else
       Level.AddSmallMessage( a , time, 255, 255, 255 );
     end;

  end;

  function Level.OnLeaveAreaCheck()

     Level.FailedMission();

  end

  -- Check need stop
  function Level.CheckNeedStop( actorId )

      local player = Level.GetPlayer();
      local form = Actor.GetActorType(player);

      if (actorId == 'SS13') then

          return (form != Actor.ACTOR_TYPE_OFFICER) and
                 Level.IsVillageMiniMission() != false;
      end

  end

  function Level.OnStopMove( actorId )

      if (actorId == 'SS13') then
        Level.ClearSmallMessages();
        Level.AddSmallMessage( MissionText.Message_StopMove, 15.0, 255, 255, 255 );
        AI.HandleVoice( AI.FindNPC(actorId), AI.VOICE_STOP_MOVE_OFFICER );

        if (Level.HasTask('OFCL') == false) then
           -- add mission task
           Level.AddMissionTask( MissionText.TaskOfficer, 'OFCL', "levels\\training\\officer_task.txt" );

           -- unlock door
           local door = Level.FindDoor('DROF');
           if ( door != nil ) then
              Level.SetDoorLocked( door, false, true );
           end;

           -- set new help pointer 
           Level.SetPointerConfiguration( 32 );

           -- enable marks
           Level.EnableLevelMark('OFCL', true);

           -- setup officer docs
          local docs = Level.CreateItem( "Custom" , "Equipment" );

          if (docs != nil) then

             Entity.SetUniqueID( docs, 'DOCS' );
         
             Level.SetCustomItemName( docs, MissionText.Message_OfficerDocs );
             Level.SetCustomItemIcon( docs, "ammo_doc" );

             local officer = Level.FindActor( 'SO02' );
             if ( officer != nil ) then 
                Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), docs );
             end
          end

          -- mark as target...
          Actor.MarkAsTarget( Level.FindActor('SO02'), true );
                            
          -- Show messages...

          Level.ShowMessage(MissionText.Message_GetFormDocs);

          -- Set large message...
          -- Level.SetLargeMessage( MissionText.Message_OfficerStart, 15.0, 255, 255, 255 );

          -- Show help...
--          Level.ShowHelp( "game:levels\\training\\tips\\stopmove_tip.txt" );

          -- save progress
          Level.SaveTraining();

        end

        return;
      end
  end

  -- On change cloth
  function Level.OnChangeCloth()
     local player = Level.GetPlayer();
     local formId = Actor.GetWearFormId( player );
     if (Level.HasTask('OFCL') and
         Level.IsVillageMiniMission() != false) then

         if (formId == Level.OfficerFormId) then
            Level.OnOfficerCloth();
         end
     end
  end

  function Level.DisableBodies(phase)
     local bots = {};

     if (phase == 1) then
         bots = { 'SS01', 'SS02', 'SS09' };
     elseif (phase == 2) then
         bots = { 'SS03', 'SS05', 'SS06', 'SS07' };
     elseif (phase == 3) then
         bots = { 'SS03', 'SS05', 'SS06', 'SS07', 'SS08' };
     end

     for i in bots do
         local npc = AI.FindNPC( bots[i] );
         if (npc == nil) then
            local a = Level.FindActor( bots[i] );

            AI.DisappearBody( a );
         end
     end
  end

  -- SG }}

  -- AA

  function Level.ShowMessage( a )

     if ( type(a) == "table" ) then
       for i in a do
         Level.AddSmallMessage( a[i], 10000.0, 255, 255, 255 );
       end;
     else
       Level.AddSmallMessage( a , 10000.0, 255, 255, 255 );
     end;

  end;

  -- AA : Polosa mission

  function Level.OnStartPolosa()
  
       if ( Level.HasMissionTask('POLS') == false ) then
          Level.StartPolosaTask();        
       else
          Level.ClearLargeMessages();
          Level.RemoveTimer( 'POLS' );
       end;

  end;

  function Level.OnPolosaCheck()

         Level.FailedMission();

  end;

  function Level.OnEnterFailPolosa()

       if ( Level.HasMissionTask('POLS') != false and Level.IsMissionTaskCompleted('POLS') == false ) then

          Level.ClearLargeMessages();
          Level.SetLargeMessage( MissionText.Polosa_Leave, 25.0, 255, 255, 0 );
          Level.AddTimer( 'POLS', "OnPolosaCheck", 8.0, false );

       end;

  end;

  function Level.OnNextPolosa()

        if ( Level.PolosaTask == 14 ) then

           Level.ClearSmallMessages();
           Level.CompleteMissionTask( 'POLS' , 15.0 );
           Level.AddLargeMessage( MissionText.Start_Next, 20.0, 255, 255, 255 );
           Level.RemoveHelpPointer();

           Level.CurrentTask = "";
           Level.EnableLevelMark( 'POLS' , false );

           Level.UnregisterTrigger( Level.FindTrigger( "StartPolosa" ) );
           Level.UnregisterTrigger( Level.FindTrigger( "FailPolosa" ) );

           Level.SetDoorLocked( Level.FindDoor('FDOR'), false, true );
 
           Level.EnableLevelMark( 'TRAN' , true );
           Level.SetMarkPosition( 'TRAN' , -515.065, -68.718, 523.694 );

           Level.SaveTraining();

           return;

        end;

        Level.PolosaTask = Level.PolosaTask + 1;
        Level.ShowPolosaTaskInfo();
  end;

  function Level.StartPolosaTask()

        Level.PolosaTask  = 1;
        Level.PolosaBegin = true;
        Level.CurrentTask = "polosa";
        
        Level.ShowPolosaTaskInfo();

        Level.ClearLargeMessages();
        Level.SetLargeMessage( MissionText.Polosa_Start, 10.0, 255, 255, 255 );
        Level.AddMissionTask( MissionText.Polosa_Task, 'POLS', "levels\\training\\polosa_task.txt");
        Level.EnableLevelMark( 'POLS' , true );
        Level.EnableLevelMark( 'TRAN' , false );

        Level.ShowHelp( "levels\\training\\tips\\polosa_tip.txt" ); -- AA3

        Level.SaveTraining();

  end;

  -- AA2: coordinates

  function Level.ShowPolosaTaskInfo()

        local pointerPos = {
                              { x = 215.872, y = -58.497, z = 363.319 },
                              { x = 288.355, y = -57.539, z = 370.251 },
                              { x = 344.380, y = -57.539, z = 364.366 },
                              { x = 367.926, y = -61.118, z = 378.983 },
                              { x = 476.543, y = -35.645, z = 375.070 },


                              { x = 490.866, y = -5.0, z = 375.25 },

                              { x = 534.205, y = -59.641, z = 483.924 },
                              { x = 373.401, y = -58.499, z = 484.996 },
                              { x = 225.128, y = -65.266, z = 486.190 },
                              { x = 175.881, y = -65.266, z = 487.747 },
                              { x = 142.064, y = -65.266, z = 486.609 },
                              { x = 269.077, y = -61.064, z = 612.443 },
                              { x = 431.830, y = -61.064, z = 613.339 },
                              { x = 630.322, y = -61.394, z = 629.182 }
                           };

        if ( Level.PolosaTask < 15 ) then
          Level.SetHelpPointer( pointerPos[Level.PolosaTask].x, pointerPos[Level.PolosaTask].y,
                                pointerPos[Level.PolosaTask].z );
          Level.SetMarkPosition( 'POLS' , pointerPos[Level.PolosaTask].x, pointerPos[Level.PolosaTask].y,
                                          pointerPos[Level.PolosaTask].z );
        end;

        if ( Level.PolosaTask == 5 ) then
          Level.RotateHelpPointer( 0.0, 0.0, 180.0 );
        elseif ( Level.PolosaTask == 6 ) then
          Level.RotateHelpPointer( -45.0, 0.0, 0.0 );
        elseif ( Level.PolosaTask == 12 ) then
          Level.RotateHelpPointer( 0.0, 0.0, 0.0 );
        elseif ( Level.PolosaTask == 7 or Level.PolosaTask == 8 ) then
          Level.RotateHelpPointer( 0.0, 0.0, -120.0 );
        elseif ( Level.PolosaTask == 9 or Level.PolosaTask == 11 ) then
          Level.RotateHelpPointer( 0.0, 0.0, -90.0 );
        elseif ( Level.PolosaTask == 10 ) then
          Level.RotateHelpPointer( -90.0, 0.0, 0.0 );
        end;

        Level.ClearSmallMessages();

        if ( Level.PolosaTask >= 1 and Level.PolosaTask < 5 ) then

          Level.ShowMessage( MissionText.Polosa_1 );

        elseif ( Level.PolosaTask == 5 ) then
          Level.AddSmallMessage( MissionText.Polosa_2, 10000.0, 255, 255, 255 );
        elseif ( Level.PolosaTask >= 7 and Level.PolosaTask < 9 ) then
          Level.AddSmallMessage( MissionText.Polosa_3, 10000.0, 255, 255, 255 );
        elseif ( Level.PolosaTask >= 12 and Level.PolosaTask < 14 ) then
          Level.AddSmallMessage( MissionText.Polosa_4, 10000.0, 255, 255, 255 );
        elseif ( Level.PolosaTask == 14 ) then
          Level.ShowMessage( MissionText.Polosa_5 );
        end;

  end;

  function Level.ProcessPolosaTriggers( sender, trgname, trgcmd )

      if ( trgcmd == 'zab' ) then

        local trigger = Level.FindTrigger( trgname );
        if ( trigger != nil ) then

           if ( Trigger.GetUniqueIdAsNumber(trigger) == Level.PolosaTask ) then
             Level.OnNextPolosa();
             Level.PolosaBegin = true;
             --Level.UnregisterTrigger( Level.FindTrigger( trgname ) );
           end;

        end;

      elseif ( trgcmd == 'fail' ) then
 
        local trigger = Level.FindTrigger( trgname );
        if ( trigger != nil and Level.PolosaBegin != false ) then

            local n = Trigger.GetUniqueIdAsNumber( trigger );
            if ( n == Level.PolosaTask ) then
              Level.PolosaTask = n - 1;
              Level.ShowPolosaTaskInfo();
              Level.AddSmallMessage( MissionText.Polosa_Fail, 10.0, 255, 255, 0 );
            end;      

        end;

      elseif ( trgcmd == 'pass' ) then
         Level.PolosaBegin = false;
      end;

  end;

  -- AA2 : Firing mission

  function Level.ActivateFireTarget( targetId, activate )

      local fireTarget = Level.FindDoor( targetId );
      if ( fireTarget == nil ) then
           return;
      end;

      if ( activate == true ) then
         Level.CloseDoor( fireTarget, false, Level.GetPlayer() );
       else
         Level.CloseDoor( fireTarget, true, Level.GetPlayer() );
      end;

  end;

  function Level.SetPistolFireTargets()

     if ( Level.FireReady == true ) then
   
      Level.FireTargets = {
                            { id = "PIS1", health = 2 },
                            { id = "PIS2", health = 2 },
                            { id = "PIS3", health = 2 }
                          };

      for i in Level.FireTargets do
          Level.ActivateFireTarget( Level.FireTargets[i].id, true );
      end;

      Level.ClearSmallMessages();
      Level.ShowMessage( MissionText.Fire_PistolTask );

      Level.RemoveHelpPointer();
    else

      Level.CurrentTask = "pistol";

      Level.ClearSmallMessages();

      Level.ShowMessage( MissionText.Fire_Pistol );
      Level.ShowMessage( MissionText.Fire_PistolTake );
      Level.EnableWeaponPickup();

      local nagan = Level.FindWeaponItem('NAGN');
      if ( nagan != nil ) then
          local naganNode = Entity.GetNode(nagan);
          if ( naganNode != nil ) then

             x,y,z = node.GetPosition( naganNode );
 
             Level.SetHelpPointer( x, y + 8.0, z );
             Level.RotateHelpPointer( 0.0, 0.0, 0.0 );
             
          end;         
      end;
    end;     

  end;

  function Level.SetItemHelpPointer( itemId )

    local item = Level.FindWeaponItem( itemId );
    if ( item == nil ) then

       item = Level.FindItem( itemId );

       if ( item == nil ) then
         return;
       end;

    end;
   
    local itemNode = Entity.GetNode(item);
    if ( itemNode != nil ) then

       x,y,z = node.GetPosition( itemNode );
 
       Level.SetHelpPointer( x, y + 8.0, z );
       Level.RotateHelpPointer( 0.0, 0.0, 0.0 );
             
    end;         
  end;

  function Level.FireDropWeaponTimer()

     if ( Actor.GetCurrentWeapon( Level.GetPlayer() ) != nil ) then
        Actor.DropCurrentWeapon( Level.GetPlayer() );
     else
        Level.RemoveTimer( 'DRPW' );
     end;
  end;

  function Level.ClearFireWeapons()

     Level.CurrentTask = "";
     Level.AddTimer( 'DRPW', "FireDropWeaponTimer" , 0.025, true );
     Actor.ClearInventory( Level.GetPlayer() , true );
     Level.EnableWeaponPickup();

  end;

  function Level.SetMachingunFireTargets()

     if ( Level.FireReady == true ) then

       Level.FireTargets = {
                             { id = "RIF1", health = 8 },
                             { id = "RIF2", health = 8 }      
                           };

       for i in Level.FireTargets do
           Level.ActivateFireTarget( Level.FireTargets[i].id, true );
       end;

       Level.ClearSmallMessages();
       Level.ShowMessage( MissionText.Fire_MachingunTask );

       Level.RemoveHelpPointer();

     else

       Level.CurrentTask = "mgun";
       Level.ClearSmallMessages();
       Level.ShowMessage( MissionText.Fire_Machingun );
       Level.ShowMessage( MissionText.Fire_MachingunTake );
       Level.EnableWeaponPickup();

       Level.RemoveHelpPointer();
       Level.SetItemHelpPointer( 'PPSS' );

       Level.SaveTraining();       

       
     end;

  end;

  function Level.SetRifleFireTargets()

     Level.FireTargets = {
                           { id = "RIF3", health = 1  }
                         };

     Level.CurrentTask = "rifle";

     for i in Level.FireTargets do
         Level.ActivateFireTarget( Level.FireTargets[i].id, true );
     end;

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Fire_RifleTask );
     Level.RemoveHelpPointer();

     Level.SaveTraining();

  end;

  function Level.SetSniperFireTargets()

     if ( Level.FireReady == true ) then

       Level.FireTargets = {
                             { id = "SNP1", health = 1 },
                             { id = "SNP2", health = 1 },
                             { id = "SNP3", health = 1  }
                           };

       for i in Level.FireTargets do
          Level.ActivateFireTarget( Level.FireTargets[i].id, true );
       end;

       Level.ClearSmallMessages();
       Level.ShowMessage( MissionText.Fire_SniperTask );

       Level.RemoveHelpPointer();

     else

       Level.CurrentTask = "sniper";
       Level.ClearSmallMessages();
       Level.ShowMessage( MissionText.Fire_Sniper );
       Level.ShowMessage( MissionText.Fire_SniperTake );
       Level.EnableWeaponPickup();

       Level.RemoveHelpPointer();
       Level.SetItemHelpPointer( 'MOSN' );

       Level.SaveTraining();

     end;

  end;

  function Level.ProcessFireTriggers( sender, trgname )

     if ( Level.IsMissionTaskCompleted('POLS') != true ) then
         return;
     end;

     if ( trgname == "FireStart" ) then
          Level.OnStartFireTask(); 
     elseif ( trgname == "Fire_Rifle" ) then
          if ( Level.CurrentTask == "rifle_start" ) then
              Level.FireReady = false;
              Level.SetMachingunFireTargets();
          end;
     elseif ( trgname == "Fire_Sniper" ) then
          if ( Level.CurrentTask == "sniper_start" ) then
              Level.FireReady = false;
              Level.SetSniperFireTargets();
          end;
     elseif ( trgname == "Fire_Leave" ) then
          if ( Level.HasMissionTask('FIRE') == true ) then

           if ( Level.IsMissionTaskCompleted('FIRE') == false ) then

             Level.ClearLargeMessages();
             Level.SetLargeMessage( MissionText.Polosa_Leave, 25.0, 255, 255, 0 );
             Level.AddTimer( 'POLS', "OnPolosaCheck", 8.0, false );

           else
 
             Level.SaveTraining();

           end;

          end;
     end;
  end;

  function Level.CheckFireDoorTimer()

    local door = Level.FindDoor('FDOR');

    if ( door != nil ) then

       local doorState = Level.GetDoorState(door);
       if ( doorState == 0 or doorState == 1 ) then
         Level.CloseDoor( door, true, Level.GetPlayer() );
         Level.RemoveTimer('FDOR'); 
       end;
    else
       Level.RemoveTimer('FDOR');
    end;
  end;

  function Level.OnStartFireTask()

    if ( Level.HasMissionTask('FIRE') == false ) then

      Level.ClearLargeMessages();
      Level.AddMissionTask( MissionText.Fire_Task, 'FIRE' , "levels\\training\\fire_task.txt" );
      Level.AddLargeMessage( MissionText.Fire_Start, 15.0, 255, 255, 255 );

      Level.FireReady = false;
      Level.SetPistolFireTargets();
      --Level.SetMachingunFireTargets();
      --Level.SetSniperFireTargets();

      local door = Level.FindDoor('FDOR');
      if ( door != nil ) then
         Level.AddTimer( 'FDOR', "CheckFireDoorTimer" , 0.1, true );
         Level.SetDoorLocked( door, true, true );
      end;

      Level.EnableLevelMark('FIRE',true);
      Level.SetupFireNotifyPickup();

      Level.EnableLevelMark('TRAN',false);

      Level.SaveTraining();

   else

      if ( Level.IsMissionTaskCompleted('FIRE') == false ) then
        Level.ClearLargeMessages();
        Level.RemoveTimer('POLS');
      end;

   end;

  end;

  function Level.EnableWeaponPickup()

     local pistolEnabled = false;
     local mgunEnabled   = false;
     local rifleEnabled  = false;
     local sniperEnabled = false;

     if ( Level.CurrentTask == "pistol" ) then
         pistolEnabled = true;
     elseif ( Level.CurrentTask == "rifle" ) then
         rifleEnabled = true;
     elseif ( Level.CurrentTask == "sniper" ) then
         sniperEnabled = true;
     elseif ( Level.CurrentTask == "mgun" ) then
         mgunEnabled = true;
     end;

     local pistolId = { 'TOKV' , 'NAGN' , 'NG01' , 'NG02' , 'TT01' ,'TT02' };
 
     for i in pistolId do
       local item = Level.FindItem( pistolId[i] );
       if ( item == nil ) then
           item = Level.FindWeaponItem( pistolId[i] );
       end;

       if ( item != nil ) then
           Level.EnableItemPickup( item, pistolEnabled );      
       end;
     end;
 
     local rifleId = { 'SVT4','SV01','SV02' };

     for j in rifleId do
        local item = Level.FindItem( rifleId[j] );
        if ( item == nil ) then
            item = Level.FindWeaponItem( rifleId[j] );
        end;

        if ( item != nil ) then
            Level.EnableItemPickup( item, rifleEnabled );
        end;
     end;

     local mgunId = { 'PP01' , 'PP02' ,'PPSH' ,'PPSS', 'PS01' ,'PS02' };

     for k in mgunId do
        local item = Level.FindItem( mgunId[k] );
        if ( item == nil ) then
            item = Level.FindWeaponItem( mgunId[k] );
        end;

        if ( item != nil ) then
            Level.EnableItemPickup( item, mgunEnabled );
        end;
     end;

     local sniperId = { 'MOSN' , 'MS01' ,'MS02' };

     for u in sniperId do
        local item = Level.FindItem( sniperId[u] );
        if ( item == nil ) then
            item = Level.FindWeaponItem( sniperId[u] );
        end;

        if ( item != nil ) then
            Level.EnableItemPickup( item, sniperEnabled );
        end;
     end;

  end;
 
  function Level.SetFireTargetsLocked()

     local doors = { 'PIS1' , 'PIS2', 'PIS3' , 
                     'RIF1' , 'RIF2' , 'RIF3' , 'SNP3',
                     'SNP1' , 'SNP2' };

     for i in doors do
       local d = Level.FindDoor( doors[i] );
       if ( d != nil ) then
           Level.SetDoorLocked( d , true, true );
       end;
     end;

     if ( Level.HasMissionTask('FIRE') == true and Level.IsMissionTaskCompleted('FIRE') == false ) then
           Level.LockFireAndGrenadeDoors();
     end;
  end;

  function Level.LockFireAndGrenadeDoors()

     local doors = { 'FDOR' , 'GDR1' , 'GDR2' };

     for i in doors do
       local d = Level.FindDoor( doors[i] );
       if ( d != nil ) then
           Level.SetDoorLocked( d , true, true );
           Level.EnableDoorCollision( d, false );
       end;
     end;
  end;
           
  function Level.OnNotifyPickupItem( itemId, item )
           
     if ( itemId == 'TT01' or itemId == 'NG01' or itemId == 'PP01' or 
          itemId == 'PS01' or itemId == 'SV01' or itemId == 'MS01' ) then

       -- create duplicate..

       local n = Level.CreateWorldItem( item );
       if ( n != nil ) then
         Level.EnableNotifyPickup( n, true );
       end;

     elseif ( itemId == 'TOKV' or itemId == 'NAGN' ) then

       if ( Level.FireReady == false ) then
           Level.FireReady = true;
           Level.SetPistolFireTargets();
           Level.ShowHelp( "levels\\training\\tips\\fire_tip.txt" ); -- AA3
       end;

     elseif ( itemId == 'PPSH' or itemId == 'PPSS' ) then

       if ( Level.FireReady == false ) then
           Level.FireReady = true;
           Level.SetMachingunFireTargets();
           Level.ShowHelp( "levels\\training\\tips\\mgun_tip.txt" ); -- AA3
       end;
     elseif ( itemId == 'SVT4' ) then
 
       if ( Level.FireReady == false ) then
           Level.FireReady = true;
           Level.SetRifleFireTargets();
       end;
     elseif ( itemId == 'MOSN' ) then
       if ( Level.FireReady == false ) then
           Level.FireReady = true;
           Level.SetSniperFireTargets();
           Level.ShowHelp( "levels\\training\\tips\\sniper_tip.txt" ); -- AA3
       end;

     -- AA4
     elseif ( itemId == 'G001' or itemId == 'G002' or itemId == 'G003' or itemId == 'G004' ) then

       local n = Level.CreateWorldItem( item );
       if ( n != nil ) then
         Level.EnableNotifyPickup( n, true );
       end;

       Level.ShowGrenadeTaskInfo();

     -- SG4
     elseif (itemId == 'MP40') then

       Level.OnMp40PickUp();

     -- SG5
     elseif (itemId == 'CLF1' or
             itemId == 'CLF2') then
        
       Level.OnChloroformPickUp( itemId );

     -- AA5
     elseif ( Level.IsWeaponItem( item, Level.WEAPON_CLASS_KNIFE ) == true ) then

       Level.OnKnifePickup( item, itemId );

     end;



  end;



  function Level.SetupFireNotifyPickup()

     Level.EnableNotifyPickup( Level.FindItem('TT01'), true );
     Level.EnableNotifyPickup( Level.FindItem('NG01'), true );
     Level.EnableNotifyPickup( Level.FindItem('PS01'), true );
     Level.EnableNotifyPickup( Level.FindItem('PP01'), true );
     Level.EnableNotifyPickup( Level.FindItem('SV01'), true );
     Level.EnableNotifyPickup( Level.FindItem('MS01'), true );

     Level.EnableNotifyPickup( Level.FindWeaponItem('NAGN'), true );
     Level.EnableNotifyPickup( Level.FindWeaponItem('TOKV'), true );

     Level.EnableNotifyPickup( Level.FindWeaponItem('PPSH'), true );
     Level.EnableNotifyPickup( Level.FindWeaponItem('PPSS'), true );
     Level.EnableNotifyPickup( Level.FindWeaponItem('SVT4'), true );

     Level.EnableNotifyPickup( Level.FindWeaponItem('MOSN'), true );
   
  end;


  function Level.OnHitedFireTarget( i )

     Level.ActivateFireTarget( Level.FireTargets[i].id, false );

     local nf = table.getn( Level.FireTargets );
 
     for j = 1, nf do 

       if ( Level.FireTargets[j].health > 0 ) then
              return;
       end;
     end;

     Level.FireReady = false;

     local nextTask = nil;

     if ( Level.CurrentTask == "pistol" ) then

       Level.ClearSmallMessages();
       Level.AddSmallMessage( MissionText.Fire_Complete, 10.0, 255, 255, 255 );
       Level.ShowMessage( MissionText.Fire_NextRoom );
       Level.SetHelpPointer( -540.513, -62.499, 515.797 );      
       Level.RotateHelpPointer( 0.0, 0.0, -90.0 );

       Level.ClearFireWeapons();

       Level.SetMarkPosition( 'FIRE' , -598.853, -67.02, 533.907 );

       nextTask = "rifle_start";

     elseif ( Level.CurrentTask == "mgun" ) then

       Level.ClearSmallMessages();
       Level.AddSmallMessage( MissionText.Fire_Complete, 10.0, 255, 255, 255 );
       Level.ShowMessage( MissionText.Fire_Rifle );
       
       Level.CurrentTask = "rifle";
       Level.EnableWeaponPickup();
       Level.SetItemHelpPointer( 'SVT4' );

       nextTask = "rifle";

     elseif ( Level.CurrentTask == "rifle" ) then

       Level.ClearSmallMessages();
       Level.AddSmallMessage( MissionText.Fire_Complete, 10.0, 255, 255, 255 );
       Level.ShowMessage( MissionText.Fire_NextRoom );
       Level.SetHelpPointer( -629.350, -62.499, 515.797 );      
       Level.RotateHelpPointer( 0.0, 0.0, -90.0 );

       Level.SetMarkPosition( 'FIRE' , -681.146, -67.02, 533.907 );
       Level.ClearFireWeapons();

       nextTask = "sniper_start";

     elseif ( Level.CurrentTask == "sniper" ) then

       Level.ClearFireWeapons();
       Level.EnableWeaponPickup();
       Level.ClearSmallMessages();
       Level.EnableLevelMark( 'FIRE' , false );
              
     end;

     if ( nextTask != nil ) then
       Level.CurrentTask = nextTask;
     else
       Level.OnFinishFireTask();
     end;

  end;
 
  function Level.OnHitSurfaceBullet( object, objectId, surfaceId, hx, hy, hz )

     if ( Level.FireReady == false ) then
         return;
     end;

     for i in Level.FireTargets do

       if ( Level.FireTargets[i].id == objectId ) then

            if ( Level.FireTargets[i].health > 0 ) then
              Level.FireTargets[i].health = Level.FireTargets[i].health - 1;
            end;
 
            if ( Level.FireTargets[i].health == 0 ) then

               Level.OnHitedFireTarget(i);
               return;

            end;
       end;
     end;

  end;

  function Level.OnFinishFireTask()

     local door = Level.FindDoor('FDOR');
     if ( door != nil ) then
        Level.SetDoorLocked( door, false, true );
        --Level.CloseDoor( door, false, Level.GetPlayer() );
     end;

     Level.UnregisterTrigger( Level.FindTrigger('FireStart') );
     Level.UnregisterTrigger( Level.FindTrigger('Fire_Rifle') );
     Level.UnregisterTrigger( Level.FindTrigger('Fire_Sniper') );

     Level.CurrentTask = "";
     Level.CompleteMissionTask('FIRE',15.0); 

     Level.SetDoorLocked( Level.FindDoor('GDR1'), false, true );

     Level.EnableLevelMark('TRAN', true );
     Level.SetMarkPosition('TRAN', -296.011, -72.0, 641.577 ); 
     Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255, 255, 255 );

     Level.SaveTraining();

  end;

  -- AA4 : Grenades mission

  function Level.CheckAutoDoorTimer()

    if ( Level.AutoDoor == nil or Level.AutoDoor == "" ) then
       Level.RemoveTimer('ADOR');
       Level.AutoDoor = "";
       return;
    end;

    local door = Level.FindDoor( Level.AutoDoor );

    if ( door != nil ) then

       local doorState = Level.GetDoorState(door);
       if ( doorState == 0 or doorState == 1 ) then
         Level.CloseDoor( door, true, Level.GetPlayer() );
         Level.RemoveTimer('ADOR');
         Level.AutoDoor = "";
       end;
    else
       Level.RemoveTimer('ADOR');
       Level.AutoDoor = "";
    end;
  end;

  function Level.LockAutoDoor( doorId )

    if ( Level.AutoDoor != "" ) then
       print( 'WARNING: LockAutoDoor(' .. doorId .. ') -> Some auto door still in progress..' );
       return;
    end;

    local door = Level.FindDoor(doorId);
    if ( door == nil ) then
       return;
    end;

    Level.AutoDoor = doorId;

    Level.AddTimer( 'ADOR' , "CheckAutoDoorTimer" , 0.1, true );
    Level.SetDoorLocked( door, true, true );

  end;


  function Level.ProcessGrenadeTriggers( sender, trgname )

      if ( Level.IsMissionTaskCompleted('FIRE') != true ) then
         return;
      end;

      if ( Level.IsMissionFailed() == true ) then
           return;
      end;

      if ( trgname == "Grd_Start_1" ) then

        if ( Level.HasMissionTask('GRND') == false ) then

          Level.ClearLargeMessages();
          Level.AddMissionTask( MissionText.Grenade_Task  , 'GRND' , "levels\\training\\grenade_task.txt" );
          Level.AddLargeMessage( MissionText.Grenade_Start, 15.0, 255, 255, 255 );

          Level.LockAutoDoor('GDR1');
          Level.StartGrenadeTask();

       else

         if ( Level.IsMissionTaskCompleted('GRND') == false ) then
           Level.ClearLargeMessages();
           Level.RemoveTimer('POLS');
         end;

       end;
 
      elseif ( trgname == "Grd_Leave_1" ) then

         if ( Level.CurrentTask == "grenade_s1" or Level.CurrentTask == "grenade_s2" or
              Level.CurrentTask == "grenade_1"  or Level.CurrentTask == "grenade_2"  or
              Level.CurrentTask == "grenade_3"  or Level.CurrentTask == "grenade_4"  or
              Level.CurrentTask == "grenade_n" ) then

           Actor.ClearInventory( Level.GetPlayer(), true );

         end;
        
         if ( Level.HasMissionTask('GRND') == true and Level.IsMissionTaskCompleted('GRND') == false ) then

            Level.ClearLargeMessages();
            Level.SetLargeMessage( MissionText.Polosa_Leave, 25.0, 255, 255, 0 );
            Level.AddTimer( 'POLS', "OnPolosaCheck", 5.0, false );

         end;

      elseif ( trgname == "Grd_Leave_2" or trgname == "Grd_Leave_3" ) then

         if ( Level.CurrentTask == "grenade_s1" or Level.CurrentTask == "grenade_s2" or
              Level.CurrentTask == "grenade_1"  or Level.CurrentTask == "grenade_2"  or
              Level.CurrentTask == "grenade_3"  or Level.CurrentTask == "grenade_4"  or
              Level.CurrentTask == "grenade_n" ) then

          Actor.ClearInventory( Level.GetPlayer(), true );
          Level.EnableGrenadesPickup();

         end;

         if ( Level.CurrentTask == "grenade_n" ) then

          if ( trgname == "Grd_Leave_2" ) then
             Level.LockAutoDoor('GDR1');
          end;

         else

          if ( Level.HasMissionTask('GRND') == true and Level.IsMissionTaskCompleted('GRND') == false ) then
            Level.ClearLargeMessages();
            Level.SetLargeMessage( MissionText.Polosa_Leave, 25.0, 255, 255, 0 );
            Level.AddTimer( 'POLS', "OnPolosaCheck", 5.0, false );
          end;

         end;

      elseif ( trgname == "Grd_Start_2" ) then

         if ( Level.CurrentTask == "grenade_s2" or Level.CurrentTask == "grenade_4" ) then

          if ( Level.IsMissionTaskCompleted('GRND') == false ) then
            Level.ClearLargeMessages();
            Level.RemoveTimer('POLS');
          end;

         else

          if ( Level.HasMissionTask( 'GRND' ) == true and Level.IsMissionTaskCompleted('GRND') == false and
               Level.CurrentTask == "grenade_n" ) then

             Level.ClearLargeMessages();
             Level.ClearSmallMessages();
             Level.RemoveTimer('POLS');
 
             Level.ShowMessage( MissionText.Grenade_Take );   
             Level.SetItemHelpPointer( 'G004' );         
             Level.SetMarkPosition( 'GRND' , 5.416, -71.036, 680.117 );
             Level.LockAutoDoor('GDR2');
             Level.EnableGrenadesPickup();

             Level.CurrentTask = "grenade_s2";

          end;

        end;

      end;

  end;

  function Level.EnableGrenadesPickup()

     local grenades_1 = false;
     local grenades_2 = false;

     if ( Level.CurrentTask == "grenade_s1" ) then
         grenades_1 = true;
     elseif ( Level.CurrentTask == "grenade_n" ) then
         grenades_2 = true;
     end;

     local grenade_1_Id = { 'G001' , 'G002' };
 
     for i in grenade_1_Id do
       local item = Level.FindItem( grenade_1_Id[i] );
       if ( item == nil ) then
           item = Level.FindWeaponItem( grenade_1_Id[i] );
       end;

       if ( item != nil ) then
           Level.EnableItemPickup( item, grenades_1 );      
       end;
     end;

     local grenade_2_Id = { 'G003' , 'G004' };
 
     for i in grenade_2_Id do
       local item = Level.FindItem( grenade_2_Id[i] );
       if ( item == nil ) then
           item = Level.FindWeaponItem( grenade_2_Id[i] );
       end;

       if ( item != nil ) then
           Level.EnableItemPickup( item, grenades_2 );
       end;
     end;

  end;

  function Level.SetupGrenadesNotifyPickup()

     Level.EnableNotifyPickup( Level.FindWeaponItem('G001'), true );
     Level.EnableNotifyPickup( Level.FindWeaponItem('G002'), true );

     Level.EnableNotifyPickup( Level.FindWeaponItem('G003'), true );
     Level.EnableNotifyPickup( Level.FindWeaponItem('G004'), true );

  end;

  function Level.StartGrenadeTask()

     Level.AddActionHandler( Level.AH_EXPLOSION );
     Level.CurrentTask = "grenade_s1";

     Level.EnableGrenadesPickup();
     Level.SetupGrenadesNotifyPickup();

     Level.ShowMessage( MissionText.Grenade_Take );
     Level.SetItemHelpPointer( 'G002' );
     Level.EnableLevelMark('GRND',true);

     Level.EnableLevelMark('TRAN', false );

     Level.SaveTraining();

  end;

  function Level.ClearGrenadesTimer()

     Actor.ClearInventory( Level.GetPlayer(), true );
     Level.EnableGrenadesPickup();

  end;

  function Level.FinishGrenadeTask()

     if ( Level.IsMissionFailed() == true ) then
        return;
     end;

     Level.RemoveActionHandler( Level.AH_EXPLOSION );
     Level.CurrentTask = "";

     Level.CompleteMissionTask('GRND', 15.0 );
     Level.SetDoorLocked( Level.FindDoor('GDR2'), false, true );
     Level.ClearSmallMessages();

     Level.AddTimer( 'CGRD' , "ClearGrenadesTimer" , 0.5, false );
     Level.EnableLevelMark('GRND', false );
     Level.RemoveHelpPointer();

     Level.EnableLevelMark('TRAN', true );
     Level.SetMarkPosition('TRAN', -438.844, -72.0, -4.519 );
     Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255, 255, 255 );

     Level.SaveTraining();

  end;

  function Level.CheckBoxExploded( item, bbox )

     if ( item == nil ) then
         return false;
     end;

     local n = Entity.GetNode( item );
     if ( n == nil ) then
         return false;
     end;

     x,y,z = node.GetPosition(n);
 
     if ( bbox[1] <= x and bbox[4] >= x and
          bbox[2] <= y and bbox[5] >= y and
          bbox[3] <= z and bbox[6] >= z ) then
          return true;
     else
          return false;
     end;

  end;

  function Level.ShowGrenadeTaskInfo()

     if ( Level.CurrentTask == "grenade_s1" ) then

         Level.CurrentTask = "grenade_1";

         Level.SetHelpPointer( -284.484, -72.706, 839.926 );
         Level.SetMarkPosition( 'GRND' , -284.484, -52.706, 839.926 );
         Level.ClearSmallMessages();
         Level.ShowMessage( MissionText.Grenade_Task1 );
         Level.ShowHelp( "game:Levels\\Training\\Tips\\Throw_tip.txt" );
         
         --Level.SaveTraining();

     elseif ( Level.CurrentTask == "grenade_2" ) then

         Level.SetHelpPointer( -225.714, -72.706, 899.612 );
         Level.SetMarkPosition( 'GRND' , -225.714, -52.706, 899.612 );

     elseif ( Level.CurrentTask == "grenade_3" ) then

         Level.SetHelpPointer( -284.491, -72.706, 990.022 );
         Level.SetMarkPosition( 'GRND' , -284.491, -52.706, 990.022 );
 
     elseif ( Level.CurrentTask == "grenade_s2" ) then

         Level.ClearSmallMessages();
         Level.SetHelpPointer( -58.408, -9.354, 916.097 );
         Level.SetMarkPosition( 'GRND' , -73.824, -36.717, 959.554 );
         Level.ShowMessage( MissionText.Grenade_Task2 );
         Level.CurrentTask = "grenade_4";

         --Level.ShowHelp( "game:Levels\\Training\\Tips\\Grenade_tip.txt" );

         --Level.SaveTraining();

     end;

  end;

  function Level.OnExplodeExplosives( item, radius, damage, byPlayer )

    if ( Level.CurrentTask == "grenade_1" ) then

      local bbox = { -309.794, -94.162, 832.226, -259.174 , -76.251 , 847.627 };

      if ( Level.CheckBoxExploded( item, bbox ) == true ) then

          Level.CurrentTask = "grenade_2";
          Level.ShowGrenadeTaskInfo();

          Level.SaveTraining();

      end;

    elseif ( Level.CurrentTask == "grenade_2" ) then

      local bbox = { -251.024, -94.162 , 892.362 , -200.404 , -76.251 , 906.863 };

      if ( Level.CheckBoxExploded( item, bbox ) == true ) then

           Level.CurrentTask = "grenade_3";
           Level.ShowGrenadeTaskInfo();

           Level.SaveTraining();

      end;

    elseif ( Level.CurrentTask == "grenade_3" ) then

      local bbox = { -309.801 , -94.162 , 982.772 , -259.181 , -76.251 , 997.273 };

      if ( Level.CheckBoxExploded( item, bbox ) == true ) then

           Level.ClearSmallMessages();
           Level.ShowMessage( MissionText.Grenade_Next );
           Level.CurrentTask = "grenade_n";

           Level.SetDoorLocked( Level.FindDoor('GDR1'), false, true );
           Level.SetDoorLocked( Level.FindDoor('GDR2'), false, true );
           Level.RemoveHelpPointer();
           Level.SetMarkPosition( 'GRND' , -61.374, -51.943, 657.677 );

           Actor.ClearInventory( Level.GetPlayer(), true );

           --Level.ClearLargeMessages();
           --Level.AddLargeMessage( MissionText.Grenade_Next, 15.0, 255, 255, 255 );

           Level.SaveTraining();

      end;

    elseif ( Level.CurrentTask == "grenade_4" ) then

     local bbox = { -141.825 ,-38.586 ,922.378 ,-6.825 ,-8.586 ,996.378 };

     if ( Level.CheckBoxExploded( item, bbox ) == true ) then

          Actor.ClearInventory( Level.GetPlayer(), true );
          Level.FinishGrenadeTask();

     end;

    end;
   
  end;

  -- AA5 : Knife mission

  function Level.OnHitSurfaceKnife( object, objectId, surfaceId, knife )

      if ( Level.KnifeInPosition != true ) then
          return;
      end;

      if ( Level.CurrentTask == "knife_1" ) then

          if ( Level.KnifeTarget <= 3 and objectId == 'KFST' ) then

             local completed = false;

             if ( ( Level.KnifeTarget == 1 and Actor.GetStandType(Level.GetPlayer()) == 0 ) or
                  ( Level.KnifeTarget == 2 and Actor.GetStandType(Level.GetPlayer()) == 2 ) or
                  ( Level.KnifeTarget == 3 and Actor.GetStandType(Level.GetPlayer()) == 3 ) ) then

                  completed = true;

             end;

             if ( completed == true ) then
               Level.KnifeTarget = Level.KnifeTarget + 1;
               Level.ClearSmallMessages();
               Level.ShowKnifeTarget();
             else
               Level.ClearSmallMessages();
               Level.AddSmallMessage( MissionText.Knife_WrongPos, 5.0, 255, 255, 0 );
               Level.ShowKnifeTarget();
             end;

          elseif ( Level.KnifeTarget == 4 and objectId == 'KSND' ) then

             if ( Actor.GetStandType(Level.GetPlayer()) == 3 ) then

                Level.KnifeInPosition = false;
                Level.KnifeTarget     = 1;

                local numKnifes = Actor.GetNumWeaponOfClass( Level.GetPlayer(), Level.WEAPON_CLASS_KNIFE, true );
                if ( numKnifes < 3 ) then

                  Level.CurrentTask = "knife_p2";
                  Level.ClearSmallMessages();
                  Level.ShowMessage( MissionText.Knife_Pick_3 );
                  Level.SetItemHelpPointer('KPCK');

                else
  
                  Level.CurrentTask = "knife_2";
                  Level.KnifeTakePosition();

                end;
   
                Level.SaveTraining();

             else
                Level.ClearSmallMessages();
                Level.AddSmallMessage( MissionText.Knife_WrongPos, 5.0, 255, 255, 0 );
                Level.ShowKnifeTarget();
             end;

          end;

      elseif ( Level.CurrentTask == "knife_2" ) then

          local testTarget = { 
                               { -532.655,-58.583,-37.520,-531.456,-57.283,-35.171 },
                               { -532.656,-61.733,-37.520,-531.456,-60.433,-35.1   },
                               { -532.656,-65.056,-37.520,-531.456,-63.756,-35.171 }
                             };

          if ( Level.KnifeTarget < 4 ) then
           if ( Level.CheckBoxExploded( knife, testTarget[Level.KnifeTarget] ) == true ) then
               if ( Level.KnifeTarget == 3 ) then
                   Level.FinishKnifeTask();
               else
                   Level.KnifeTarget = Level.KnifeTarget + 1;

                   Level.ClearSmallMessages();
                   Level.ShowKnifeTarget();
               end;
           else
               Level.KnifeTarget = 1;

               Level.ClearSmallMessages();
               Level.AddSmallMessage( MissionText.Knife_Missed, 5.0, 255, 255, 0 );
               Level.ShowKnifeTarget();
           end;
          end;

      end;

  end;

  function Level.RemoveAllKnifes()

      for i in Level.CreatedKnifes do
           local k = Level.FindWeaponItem( Level.CreatedKnifes[i] );
           if ( k != nil ) then
                Level.DeleteItem( k  ); 
           end;
      end;

      Level.CreatedKnifes = {};
  end;

  function Level.AddKnife( knife )

      local n = table.getn(Level.CreatedKnifes);

      local uniqueId = 'K' .. tostring(n);

      if ( string.len(uniqueId) == 2 ) then
            uniqueId = uniqueId .. '00';
      elseif ( string.len(uniqueId) == 3 ) then
            uniqueId = uniqueId .. '0';
      end; 

      --print( 'add knife ' .. uniqueId );

      Entity.SetUniqueID( knife, uniqueId );
      Level.EnableNotifyPickup( knife, true );

      Level.CreatedKnifes[n+1] = uniqueId;

  end;

  function Level.FinishKnifeTask()

      if ( Level.IsMissionFailed() == true ) then
         return;
      end;

      Level.CurrentTask = "knife_l";

      Level.RemoveHelpPointer();
      Level.ClearSmallMessages();
      Level.CompleteMissionTask( 'KNIF' , 15.0 );
      Level.EnableLevelMark( 'KNIF' , false );

      Level.AddLargeMessage( MissionText.Start_Next, 15.0, 255, 255, 255 );
      Level.EnableLevelMark( 'VEHL' , true );

      Level.SaveTraining();
 
  end;
 
  function Level.CreateKnifeTask_1()

     local k1 = Level.CreateWorldItem( "Knife" , "Weapon" , -435.412, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF1' );
     local k2 = Level.CreateWorldItem( "Knife" , "Weapon" , -436.877, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF2' );
     local k3 = Level.CreateWorldItem( "Knife" , "Weapon" , -438.431, -66.847, 3.849, 0.0,-180.0, 90.0, 'KPCK' );
     local k4 = Level.CreateWorldItem( "Knife" , "Weapon" , -439.904, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF4' );
     local k5 = Level.CreateWorldItem( "Knife" , "Weapon" , -441.486, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF5' );
     local k6 = Level.CreateWorldItem( "Knife" , "Weapon" , -443.056, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF6' );
     local k7 = Level.CreateWorldItem( "Knife" , "Weapon" , -444.649, -66.847, 3.849, 0.0,-180.0, 90.0, 'KNF7' );

     Level.AddKnife( k1 );
     Level.AddKnife( k2 );
     --Level.AddKnife( k3 );
     Level.AddKnife( k4 );
     Level.AddKnife( k5 );
     Level.AddKnife( k6 );
     Level.AddKnife( k7 );

     Level.EnableNotifyPickup( k3, true );
     Level.CreatedKnifes[ table.getn(Level.CreatedKnifes) + 1 ] = 'KPCK';

  end;

  function Level.StartKnifeTask()

     Level.CurrentTask     = "knife_p";

     Level.CreateKnifeTask_1();
     Level.SetItemHelpPointer( 'KPCK' );

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Knife_Pick_4 );
     Level.EnableLevelMark( 'KNIF' , true );
     Level.EnableLevelMark( 'TRAN' , false );

     Level.LockFireAndGrenadeDoors();

     Level.SaveTraining();

  end;

  function Level.KnifeTakePosition()

     Level.KnifeInPosition = false;

     Level.ClearSmallMessages();
     Level.ShowMessage( MissionText.Knife_TakePosition );

     local triggerName = nil;

     if ( Level.CurrentTask == "knife_1" ) then
          triggerName = "Knife_pos_1";
     elseif ( Level.CurrentTask == "knife_2" ) then
          triggerName = "Knife_pos_2";
     end;
     
     if ( triggerName != nil ) then
          local t = Level.FindTrigger( triggerName );
          if ( t != nil ) then

             x,y,z = Trigger.GetPosition( t );

             Level.SetHelpPointer( x, y + 8.0, z );
             Level.RotateHelpPointer(0.0,0.0,0.0);

             Level.MoveMarkOnHelpPointer('KNIF');

          else
             Level.RemoveHelpPointer();
          end;
     else
          Level.RemoveHelpPointer();
     end;

  end;

  function Level.OnKnifePickup( item, itemId )

     if ( itemId == 'KPCK' ) then

       local n = Level.CreateWorldItem( item );
       Level.AddKnife( n );

       Entity.SetUniqueID( item, Entity.GetUniqueIDAsString(n) );
       Entity.SetUniqueID( n, 'KPCK' );

     end;

     --print('knifes in table: ' .. tostring( table.getn( Level.CreatedKnifes )) );
     --for i in Level.CreatedKnifes do
     --   print( ' ' .. Level.CreatedKnifes[i] );
     --end;

     local numKnifes = Actor.GetNumWeaponOfClass( Level.GetPlayer(), Level.WEAPON_CLASS_KNIFE, true );

     if ( numKnifes == 0 and Level.CurrentTask == "knife_p" ) then
         Level.CurrentTask = "knife_p1";
         Level.ShowHelp( "game:Levels\\training\\tips\\knife_tip.txt" );
     end;

     if ( Level.CurrentTask == "knife_p1" ) then

        if ( numKnifes >= 3 ) then

          Level.CurrentTask = "knife_1";

          Level.KnifeTakePosition();

        end;

     elseif ( Level.CurrentTask == "knife_p2" ) then

       if ( numKnifes >= 2 ) then

          Level.CurrentTask = "knife_2";
          Level.KnifeTakePosition();

       end;

     end;

  end;

  function Level.MoveMarkOnHelpPointer( markId )

     local helpPointer = Level.FindItem( 'HELP' );

     if ( helpPointer == nil ) then
       return;
     end;

     local helpNode = Entity.GetNode( helpPointer );
     if ( helpNode == nil ) then
       return;
     end;

     x,y,z = node.GetPosition( helpNode );
 
     Level.SetMarkPosition( markId, x,y,z );

  end;

  function Level.ShowKnifeTarget()

    if ( Level.CurrentTask == "knife_1" ) then

        local p = Level.KnifeTarget;
        if ( p == 4 ) then
            p = 3;
        end;

        Level.ShowMessage( MissionText.Knife_Target_1[ p ] );

        if ( Level.KnifeTarget < 4 ) then
          Level.SetHelpPointer( -525.976, -44.849, -178.937 );
        else
          Level.SetHelpPointer( -514.997, -44.849, -137.128 );
        end;

        Level.RotateHelpPointer( 0.0, 0.0, 0.0 );

    elseif ( Level.CurrentTask == "knife_2" ) then

        local knifeTargetPos = {
                                 { x = -533.077, y = -57.861, z = -42.988 },
                                 { x = -533.077, y = -61.435, z = -42.988 },
                                 { x = -533.077, y = -64.709, z = -42.988 } 
                               };

        if ( Level.KnifeTarget < 4 ) then
           Level.SetHelpPointer( knifeTargetPos[Level.KnifeTarget].x,
                                 knifeTargetPos[Level.KnifeTarget].y,
                                 knifeTargetPos[Level.KnifeTarget].z );
        else
           Level.RemoveHelpPointer();
        end;

        Level.RotateHelpPointer( -90.0, 0.0, 0.0 );
        Level.ShowMessage( MissionText.Knife_Target_2 );

    end;

    Level.MoveMarkOnHelpPointer('KNIF');

  end;

  function Level.RemoveKnifesTimer()

    if ( Actor.GetCurrentWeapon( Level.GetPlayer() ) != nil ) then

      Actor.DropCurrentWeapon( Level.GetPlayer() );

    else

      Level.RemoveAllKnifes();
      Level.RemoveTimer( 'REMK' );

    end;

  end;

  function Level.ProcessKnifeTriggers( sender, trgname )

      if ( Level.IsMissionTaskCompleted('GRND') != true ) then
          return;
      end;

      if ( Level.IsMissionFailed() == true ) then
           return;
      end;

      if ( trgname == "Knife_Start" ) then

        if ( Level.HasMissionTask('KNIF') == false ) then

           Level.ClearLargeMessages();

           Level.AddMissionTask( MissionText.Knife_Task  , 'KNIF' , "levels\\training\\knife_task.txt" );
           Level.AddLargeMessage( MissionText.Knife_Start, 15.0, 255, 255, 255 );

           Level.StartKnifeTask();

        else

          if ( Level.IsMissionTaskCompleted('KNIF') == false ) then
            Level.ClearLargeMessages();
            Level.RemoveTimer('POLS');
          end;

        end;

      elseif ( trgname == "Knife_Leave" ) then

        if ( Level.HasMissionTask('KNIF') == true ) then
            
            if ( Level.IsMissionTaskCompleted('KNIF') == false ) then

              Level.ClearLargeMessages();
              Level.SetLargeMessage( MissionText.Polosa_Leave, 25.0, 255, 255, 0 );
              Level.AddTimer( 'POLS', "OnPolosaCheck", 5.0, false );

            elseif ( Level.CurrentTask == "knife_l" ) then

              Level.CurrentTask = "";

              if ( Actor.GetCurrentWeapon( Level.GetPlayer() ) != nil ) then

                Actor.DropCurrentWeapon( Level.GetPlayer() );
                Level.AddTimer( 'REMK', "RemoveKnifesTimer", 0.25, true );
                Actor.ClearInventory( Level.GetPlayer() , true );      

              else

                Actor.ClearInventory( Level.GetPlayer(), true );
                Level.RemoveAllKnifes();

              end;

              Level.SaveTraining();

            end;

       end;

      elseif ( trgname == "Knife_pos_1" ) then

        if ( Level.CurrentTask == "knife_1" ) then

            Level.KnifeInPosition = true;
            Level.ClearSmallMessages();
            Level.ShowKnifeTarget();

        end;

      elseif ( trgname == "Knife_pos_2" ) then

        if ( Level.CurrentTask == "knife_2" ) then

            Level.KnifeInPosition = true;
            Level.KnifeTarget     = 1;

            Level.ClearSmallMessages();
            Level.ShowKnifeTarget();

        end;

      end;

  end;

  function Level.LeaveKnifeTrigger( sender, trgname )

      if ( Level.IsMissionTaskCompleted('GRND') != true ) then
          return;
      end;

      if ( (trgname == "Knife_pos_1" and Level.CurrentTask == "knife_1") or
           (trgname == "Knife_pos_2" and Level.CurrentTask == "knife_2") ) then
        
         Level.KnifeTakePosition();

      end;

  end;
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
   return a, c, p, n;
end

--------------------------------------------------------
-- Name: Level.OnCalcScore()
-- Desc:
--------------------------------------------------------
function Level.OnCalcRateScore(rank, score, levelStats, aiStats, a, c, p, n, acc)
   return rank, score;
end
