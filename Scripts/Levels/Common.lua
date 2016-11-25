-- Common level functions and utility
-- Sergey Gvozdev

-- handle voice script
-- "%some_sound"               - sound with name "some_sound" in level
-- "@some_voice_id"            - voice with id "some_voice_id"
-- "some_effect"               - effect from basesoundsfx - "some_effect"
-- "<anim name>:^{%|@|~n}any"  - any effect. don't break by stop custom animation
-- "~<n>effect"                - effect from basesoundsfx, use n voices

  --------------------------------------------------------
  -- Name: Level.OnLoaded_Common()
  -- Desc: 
  --------------------------------------------------------
  function Level.OnLoaded_Common()
       AI.Debug(nil, "Level.OnLoaded_Common()", "");
       
       Level.SoundName  = {  };
       Level.SoundState = {  };
       
       Level.PlayerAnimSounds={};
 
       Level.FinishAnimUnregister = false;
       Level.FinishAnimTrigger    = "";
       
       Level.HiGilterTriggerEnabled = true;
       
       Level.CutsceneTimes = 0;
       
       Level.DpcState = {};
       for i = 1, 9 do
          Level.DpcState[i] = {};
          
          Level.DpcState[i].Command   = "";
          Level.DpcState[i].Uses      = false;
          Level.DpcState[i].Time      = 0.0;
          Level.DpcState[i].Condition = "";
       end
       
       Level.SetPlayerActionsArrayToDefault();
       
       Level.WorldObjectRemoved = {};
       
       Level.ShowTestHelpInterval = 250.0;
       Level.HackShowHelpMessages = nil;
       
       Level.ActionTrigger = nil;
       
       Level.AddTimer( 'SHTM', "OnShowTestHelp", Level.ShowTestHelpInterval, true );
       
       Level.HiGitlerAnim = "Act_Stand_GitlerHi:^@v_hi_gitler";
       Level.HiGitlerTime = "4.0";
       Level.HiArmyMMAnim = "Act_Stand_ArmyHi"; -- forlik
       Level.HiArmyMMTime = "3.0"; -- forlik
       
       Level.FormHelp = {};
       
       local diff = Level.GetDifficulty();
       if (diff == 0) then
          
          print("Install easy npc jobs..");
          AI.SetJob("alive", "easyexpert");
          AI.SetJob("alive", "easynormal");
          AI.SetJob("alive", "easy");
          
       elseif (diff == 1) then
       
          AI.SetJob("alive", "easynormal");
          AI.SetJob("alive", "normal");
          
       elseif (diff == 2) then
          
          print("Install hard npc jobs..");
          AI.SetJob("alive", "hardexpert");
          AI.SetJob("alive", "hard");          
          
       elseif (diff == 3) then
          
          print("Install expert npc jobs..");
          AI.SetJob("alive", "easyexpert");
          AI.SetJob("alive", "hardexpert");
          AI.SetJob("alive", "expert");          
       end
  end

  --------------------------------------------------------
  -- Name: Level.OnFinishLoad_Common()
  -- Desc: 
  --------------------------------------------------------
  function Level.OnFinishLoad_Common()
       Level.UpdateSounds();
       Level.CustomFloorMask = {};
       
       Level.ActionTrigger = nil;
       
       Level.SmartDpc_TestValue = false;
       
       -- Level.UpdateRemovedObjects();
       
       System:SetVar( "hud_mapvision" , true );
       
       for i in Level.PlayerActionsArray do
          if (Level.PlayerActionsArray[i].uses == true) then
             Level.SafeAddLevelPlayerAction(Level.PlayerActionsArray[i].id, Level.PlayerActionsArray[i].text);
          end
       end
  end

  --------------------------------------------------------
  -- Name: Level.OnSave_Common()
  -- Desc: 
  --------------------------------------------------------
  function Level.OnSave_Common()
       Stream.WriteInt(5);
              
       Level.WriteArray(Level.SoundName);
       Level.WriteArray(Level.SoundState);
       
       Stream.WriteString( Level.FinishAnimTrigger );
       Stream.WriteBool( Level.FinishAnimUnregister );
       
       for i = 1, 9 do
          Stream.WriteString(Level.DpcState[i].Command);
          Stream.WriteBool  (Level.DpcState[i].Uses);
          Stream.WriteFloat (Level.DpcState[i].Time);
          Stream.WriteString(Level.DpcState[i].Condition);
       end
       
       Stream.WriteBool( Level.HiGilterTriggerEnabled );
       
       local index = 0;
       for i in Level.WorldObjectRemoved do
          if (Level.WorldObjectRemoved[i] != nil) then
             index = index + 1;
          end
       end
       
       Stream.WriteInt( index );
       
       for i in Level.WorldObjectRemoved do
          Level.SaveRemovedObject( Level.WorldObjectRemoved[i] );
       end
       
       -- player anim sounds
       local nbSounds = table.getn(Level.PlayerAnimSounds);       
       Stream.WriteInt(nbSounds);
       
       for i in Level.PlayerAnimSounds do
          Stream.WriteInt( Level.PlayerAnimSounds[i] );
       end
       
       -- version 1
       Stream.WriteInt(Level.CutsceneTimes);
       
       -- version 2
       Stream.WriteString("SCCM");
       Stream.WriteString(Level.HiGitlerAnim);
       Stream.WriteString(Level.HiArmyMMAnim); -- forlik
       
       -- version 3
       local n = table.getn(Level.PlayerActionsArray);
       Stream.WriteInt(n);
       for i in Level.PlayerActionsArray do
          Stream.WriteString(Level.PlayerActionsArray[i].id);
          Stream.WriteBool(Level.PlayerActionsArray[i].uses);
          Stream.WriteString(Level.PlayerActionsArray[i].text);
       end
       
       -- version 4
       Stream.WriteString(Level.HiGitlerTime);
       Stream.WriteString(Level.HiArmyMMTime); -- forlik
       
       Level.WriteArray( Level.FormHelp );
       
  end

  --------------------------------------------------------
  -- Name: Level.OnLoad_Common()
  -- Desc: 
  --------------------------------------------------------
  function Level.OnLoad_Common()
       local version = Stream.ReadInt();
                     
       Level.SoundName            = Level.ReadArray();
       Level.SoundState           = Level.ReadArray();
       
       Level.FinishAnimTrigger    = Stream.ReadString();
       Level.FinishAnimUnregister = Stream.ReadBool();
       
       Level.DpcState = {};
       for i = 1, 9 do
          Level.DpcState[i] = {};
          
          Level.DpcState[i].Command   = Stream.ReadString();
          Level.DpcState[i].Uses      = Stream.ReadBool();
          Level.DpcState[i].Time      = Stream.ReadFloat();
          Level.DpcState[i].Condition = "";
          
          if (version >= 1) then
             Level.DpcState[i].Condition = Stream.ReadString();
          end
       end
       
       Level.HiGilterTriggerEnabled = Stream.ReadBool();
       
       n = Stream.ReadInt();
       Level.WorldObjectRemoved = {};
       for i = 1, n do
          local obj = Level.LoadRemovedObject();
          Level.WorldObjectRemoved[obj.id] = obj;
       end
       
       -- load player anim sounds
       local nbSounds = Stream.ReadInt();
       Level.PlayerAnimSounds = {};
              
       for i = 1, nbSounds do
          Level.PlayerAnimSounds[i] = Stream.ReadInt();
       end
       
       Level.FormHelp = {};
       
       if (version == 0) then
          return;
       end

       -- version 1
       Level.CutsceneTimes = Stream.ReadInt();

       if (version == 1) then
          return;
       end
       
       -- version 2
       local test = Stream.ReadString();
       if (test != "SCCM") then
          print("ERROR: Can't bad save file format");
       end
       
       Level.HiGitlerAnim = Stream.ReadString();
       Level.HiArmyMMAnim = Stream.ReadString(); -- forlik
       
       if (version == 2) then
          Level.SetPlayerActionsArrayToDefault();
          return;
       end
       
       -- version 3
       local n = Stream.ReadInt();
       
       Level.PlayerActionsArray = {};
       for i = 1, n do
          Level.PlayerActionsArray[i] = {};
          
          Level.PlayerActionsArray[i].id   = Stream.ReadString();
          Level.PlayerActionsArray[i].uses = Stream.ReadBool();
          Level.PlayerActionsArray[i].text = Stream.ReadString();
       end
       
       if (version == 3) then
          Level.HiGitlerTime = "4.0";
          return;
       end
       
       -- version 4
       Level.HiGitlerTime = Stream.ReadString();
       Level.HiArmyMMTime = Stream.ReadString(); -- forlik
       
       -- version 5
       Level.FormHelp = Level.ReadArray();
  end

  --------------------------------------------------------
  -- Name: Level.UpdateCustomFloor()
  -- Desc: Use Level.CustomFloorMask array to set player custom floor
  --------------------------------------------------------
  function Level.UpdateCustomFloor()
     if (Level.CustomFloorMask == nil) then
        return;
     end

     local player = Level.GetPlayer();

     for i in Level.CustomFloorMask do
        if (Level.CustomFloorMask[i] > 0) then
           Actor.SetCustomFloor( player, i );
           return;
        end
     end

     Actor.SetCustomFloor( player, -1 );
  end

  --------------------------------------------------------
  -- Name: Level.SetPlayerActionsArrayToDefault()
  -- Desc: 
  --------------------------------------------------------
  function Level.SetPlayerActionsArrayToDefault()
     Level.PlayerActionsArray = {};
     for i = 1, 5 do
        Level.PlayerActionsArray[i] = {};
        Level.PlayerActionsArray[i].id   = "";
        Level.PlayerActionsArray[i].uses = false;
        Level.PlayerActionsArray[i].text = "";
     end
  end

  --------------------------------------------------------
  -- Name: Level.SetDoorKey()
  -- Desc: Setup key with id=keyId for door with uid=doorId
  --------------------------------------------------------
  function Level.SetDoorKey(doorId, keyId)
     local d = Level.FindDoor(doorId);
     if (d != nil) then
        Level.SetDoorUnlockKey( d, keyId );
     end
  end

  --------------------------------------------------------
  -- Name: Level.AddKey()
  -- Desc: 
  --------------------------------------------------------
  function Level.AddKey( actorId, keyId, name, iconName, canbeDroped )
     local actor = Level.FindActor(actorId);
     
     if ( actor == nil ) then
        print("Warning. Can't find actor for key" .. actorId);
        return;
     end;

     local emptyPouch = Actor.GetEmptyPouch( actor );
     if ( emptyPouch == nil ) then
        print("Warning. No empty pouch for key on actor " .. actorId);
        return;     
     end;
 
     local key;
     
     if ( canbeDroped == true ) then
        key = Level.CreateItem( "Custom:Key", "Equipment" );           
        
        if ( key == nil ) then
          print("Warning. Can't create key " .. keyId);
          return;     
        end;
     
     else
        key = Level.CreateItem( "Custom" , "Equipment" );     
        
        if ( key == nil ) then
          print("Warning. Can't create key " .. keyId);
          return;     
        end;
     
        if ( iconName == nil ) then
           Level.SetCustomItemIcon( key, "ammo_key" );
        else
           Level.SetCustomItemIcon( key, iconName );
        end;
              
     end;  
     
     Entity.SetUniqueID( key, keyId );
     Level.SetCustomItemName( key, name );
     Actor.PutPouch( actor, emptyPouch, key );
         
  end

  --------------------------------------------------------
  -- Name: Level.Abs()
  -- Desc: 
  --------------------------------------------------------
  function Level.Abs(x)
     if (x < 0.0) then
        return -x;
     end

     return x;
  end

  --------------------------------------------------------
  -- Name: Level.IsNear()
  -- Desc: 
  --------------------------------------------------------
  function Level.IsNear(uid, posX, posZ, radius)

     local actor = Level.FindActor( uid );

     if (actor != nil) then

         local n = Entity.GetNode(actor);

         local pos = {};
         pos.x, pos.y, pos.z = node.GetPosition( n );

         return (Level.Abs(pos.x - posX) < radius) and
                (Level.Abs(pos.z - posZ) < radius);
     end  

     return false;
  end
  
  --------------------------------------------------------
  -- Name: Level.VoiceMessage()
  -- Desc: 
  --------------------------------------------------------
  function Level.VoiceMessage(npc, SampleId, MessageId, customDistance)
     
     --print("Level.VoiceMessage: " .. tostring(SampleId) .. " " ..tostring(MessageId));
     AI.Debug(npc, "Level.VoiceMessage: " .. tostring(SampleId) .. " " .. tostring(MessageId), "");
     
     if (npc == nil) then
        return;
     end

     local soundName      = SampleId;
     local subtitleString = MessageId;

     local playerPosition = Level.GetPlayerPosition();
     local npcPosition = Level.GetNpcPosition(npc);
     
     playerPosition.y = playerPosition.y + 2.0;
     npcPosition.y = npcPosition.y + 2.0;
     
     local distance = Level.SoundDistance(npcPosition, playerPosition);
     
     local checkDistance = 200.0;
     if (customDistance != nil) then
        checkDistance = customDistance;
     end

     if (distance < checkDistance) then

        if (subtitleString != nil) then
           local f = loadstring("Level.AddSmallMessage(MissionText." .. subtitleString .. ", 10.0, 255, 255, 255 )");
     
           if ( f != nil ) then 
              f();
           else
              print("Bad lua command ");
           end
        end

        if (soundName != nil) then
           AI.HandleVoice(npc, soundName);
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.RunAnchorJob()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob(npc, anchor, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();
   
     Level.SetValue(properties, "CustomString_1", anchor );
     Level.SetValue(properties, "CanBeDisabled", false );

     -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob_safe.lua", AI.LOGIC_DEFAULT, properties);
     end     
  end

  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob_Run()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob_Run(npc, anchor, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();
   
     Level.SetValue(properties, "CustomString_1", anchor );
     Level.SetValue(properties, "CanBeDisabled", false );

     -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob_run.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob_safe_run.lua", AI.LOGIC_DEFAULT, properties);
     end
  end
  

  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob2()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob2(npc, anchor1, anchor2, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();

     Level.SetValue(properties, "CustomString_1", anchor1 );
     Level.SetValue(properties, "CustomString_2", anchor2 );
     Level.SetValue(properties, "CanBeDisabled", false );

     -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob2.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob2_safe.lua", AI.LOGIC_DEFAULT, properties);
     end
  end
  
  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob2()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob2_Run(npc, anchor1, anchor2, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();

     Level.SetValue(properties, "CustomString_1", anchor1 );
     Level.SetValue(properties, "CustomString_2", anchor2 );
     Level.SetValue(properties, "CanBeDisabled", false );

     -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob2_run.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob2_safe_run.lua", AI.LOGIC_DEFAULT, properties);
     end
  end  
  
  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob3()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob3(npc, anchor1, anchor2, anchor3, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();

     Level.SetValue(properties, "CustomString_1", anchor1 );
     Level.SetValue(properties, "CustomString_2", anchor2 );
     Level.SetValue(properties, "CustomString_3", anchor3 );
     Level.SetValue(properties, "CanBeDisabled", false );

      -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob3.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob3_safe.lua", AI.LOGIC_DEFAULT, properties);
     end
  end

  
  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob2_Run()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob3_Run(npc, anchor1, anchor2, anchor3, safe)
     if (npc == nil) then
        return;
     end
     local properties = Level.CreateCustomParams();

     Level.SetValue(properties, "CustomString_1", anchor1 );
     Level.SetValue(properties, "CustomString_2", anchor2 );
     Level.SetValue(properties, "CustomString_3", anchor3 );
     Level.SetValue(properties, "CanBeDisabled", false );

      -- Don't use (safe == false), because safe can be nil (old version compatibility)
     if (safe != true) then
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob3_run.lua", AI.LOGIC_DEFAULT, properties);
     else
        AI.RunScriptTask(npc, "scripts:job\\AnchorJob3_run_safe.lua", AI.LOGIC_DEFAULT, properties);
     end
  end
  
  --------------------------------------------------------  
  -- Name: Level.RunAnchorJobIfDefault()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJobIfDefault(actor, anchor)
     if (AI.IsDefault(actor)) then 
        Level.RunAnchorJob(actor, anchor);
     end
  end

  --------------------------------------------------------  
  -- Name: Level.RunAnchorJob2IfDefault()
  -- Desc: 
  --------------------------------------------------------
  function Level.RunAnchorJob2IfDefault(npc, anchor1, anchor2, safe)
     if (npc == nil) then
        return;
     end

     if (AI.IsDefault(npc) == false) then
        return; 
     end
     
     Level.RunAnchorJob2(npc, anchor1, anchor2, safe);
  end

  --------------------------------------------------------  
  -- Name: Level.IsAllDied()
  -- Desc: 
  --------------------------------------------------------
  function Level.IsAllDied(array)
     for i in array do
         if (Actor.IsDead(Level.FindActor(array[i])) == false) then
            return false;
         end
     end
     
     return true;
  end

  --------------------------------------------------------  
  -- Name: Level.GetIndex()
  -- Desc: 
  --------------------------------------------------------
  function Level.GetIndex( array, value )
     for i in array do
        if (array[i] == value) then
           return i;
        end
     end

     return -1;
  end

  --------------------------------------------------------
  -- Name: Level.EnableSound()
  -- Desc:
  --------------------------------------------------------
  function Level.EnableSound( index, onOff )
     if ( type(index) == "string" ) then
        local name = index;
        index = Level.GetIndex(Level.SoundName, name);

        if (index == -1) then 
           print("Warning: Can't identify sound " .. name);
           return;
        end

     end

     local sound = Level.FindSound( Level.SoundName[index] );

     if ( sound == -1 ) then
        print("Warning: Can't identify sound " .. Level.SoundName[index]);
        return;
     end;

     if ( onOff == true ) then
         Level.PlaySound( sound );
         Level.SoundState[index] = true;
     else
         Level.StopSound( sound );
         Level.SoundState[index] = false;
     end;
  end;

  --------------------------------------------------------
  -- Name: Level.UpdateSounds()
  -- Desc:
  --------------------------------------------------------
  function Level.UpdateSounds()
     for i in Level.SoundName do
         Level.EnableSound(i, Level.SoundState[i]);
     end
  end

  --------------------------------------------------------
  -- Name: Level.AddPlayerAiSound()
  -- Desc:
  --------------------------------------------------------
  function Level.AddPlayerAiSound(radius) 
     local player = Level.GetPlayer();
     local n = Actor.GetNode(player)
     local x, y, z = node.GetPosition(n);

     AI.AddSound( AI.SOUND_TYPE_ITEM, radius, x, y, z);
  end

  --------------------------------------------------------
  -- Name: Level.DebugPrintDpcState()
  -- Desc:
  --------------------------------------------------------
  function Level.DebugPrintDpcState()
     
     print("Dpc state...");
     
     local num = table.getn(Level.DpcState);
     local active = 0;
     for i in Level.DpcState do
        if (Level.DpcState[i].Uses == true) then
           active = active + 1;
        end
     end
     
     print("Dpc number: " .. tostring(active) .. "(" .. tostring(num) .. ")");
     
     for i in Level.DpcState do
        if (Level.DpcState[i].Uses == true) then
           print("Dpc["..tostring(i).."].Command = " .. Level.DpcState[i].Command);
           print("Dpc["..tostring(i).."].Time = " .. Level.DpcState[i].Time);
           print("Dpc["..tostring(i).."].Condition = " .. Level.DpcState[i].Condition);
        end
     end
  end
    
  --------------------------------------------------------
  -- Name: Level.GetDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.GetDpc()
     for i in Level.DpcState do
        if (Level.DpcState[i].Uses == false) then
           return i;
        end
     end
     
     return nil;
  end

  --------------------------------------------------------
  -- Name: Level.RemoveDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.RemoveDpc(command)
     for i in Level.DpcState do
     
        if (Level.DpcState[i].Uses == true and Level.DpcState[i].Command == command) then
            
            local TimerUid = 'DPC' .. tostring(i);
            
            AI.Debug(nil, "Remove Dpc # " .. tostring(dpcIndex), command);
            
            Level.DpcState[i].Uses = false;
            Level.RemoveTimer(TimerUid);
        end        
     end
  end

  --------------------------------------------------------
  -- Name: Level.InstallDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.InstallDpc(command, time)
     Level.InstallSmartDpc(command, time, "");
  end

  --------------------------------------------------------
  -- Name: Level.InstallSingleDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.InstallSingleDpc(command, time)
     Level.RemoveDpc(command);
     Level.InstallDpc(command, time);
  end

  --------------------------------------------------------
  -- Name: Level.InstallSingleSmartDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.InstallSingleSmartDpc(command, time, conds)
     Level.RemoveDpc(command);
     Level.InstallSmartDpc(command, time, conds);
  end

  --------------------------------------------------------
  -- Name: Level.HasDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.HasDpc(command)
     for i in Level.DpcState do
        if (Level.DpcState[i].Uses == true and Level.DpcState[i].Command == command) then
           return true;
        end
     end
     
     return false;
  end
  
  --------------------------------------------------------
  -- Name: Level.InstallSmartDpc()
  -- Desc:
  --------------------------------------------------------
  function Level.InstallSmartDpc(command, time, condition)
     local dpcIndex = Level.GetDpc();
     
     if (dpcIndex == nil) then
        print("Error: Can't init dpc. All dpc timers used");     
        return;
     end
     
     AI.Debug(nil, "Install Dpc # " .. tostring(dpcIndex), command);
     
     Level.DpcState[dpcIndex].Command   = command;
     Level.DpcState[dpcIndex].Uses      = true;
     Level.DpcState[dpcIndex].Time      = time;
     Level.DpcState[dpcIndex].Condition = condition;
     
     local TimerUid = 'DPC' .. tostring(dpcIndex);
     local TimerCallback = "OnDpcEvent:" .. tostring(dpcIndex);
   
     if (condition == "") then
        Level.AddTimer( TimerUid, TimerCallback, time, false );
     else
        Level.AddTimer( TimerUid, TimerCallback, time, true );
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnDpcEvent()
  -- Desc:
  --------------------------------------------------------
  function Level.OnDpcEvent(dpcIndex)
     local dpc = tonumber(dpcIndex);
     if (dpc == nil)  then
        return;
     end
     
     local command = Level.DpcState[dpc].Command;
     AI.Debug(nil, "Level.OnDpcEvent #" .. dpcIndex, command);     
     
     local condition = Level.DpcState[dpc].Condition;
     if (condition != "") then
        
        Level.SmartDpc_TestValue = false;
        local code = "if ((" .. condition .. ") == false) then Level.SmartDpc_TestValue = true; end";

        local condF = loadstring( code );
        if (condF == nil) then
           print("Warning: Can't complile dpc condition: " .. condition);
        else
           condF();
           if (Level.SmartDpc_TestValue == true) then
              return;
           end
        end            
     end
     
     local f = loadstring(command);
     if ( f != nil ) then 
         f(); 
     else 
         print("Bad lua command: " .. command);
     end;
     
     Level.DpcState[dpc].Uses = false;
     
     Level.RemoveTimer('DPC' .. tostring(dpc));
  end

  --------------------------------------------------------
  -- Name: Level.CheckMissionTaskCompleted()
  -- Desc:
  --------------------------------------------------------
  function Level.CheckMissionTaskCompleted(id, completed)
     return (Level.IsMissionTaskCompleted(id) == true) or (completed == id);
  end

  --------------------------------------------------------
  -- Name: Level.OnShowTestHelp()
  -- Desc:
  --------------------------------------------------------
  function Level.OnShowTestHelp()
     if (MissionText.Message_Help == nil) then
        return;
     end
     
     if (Level.HackShowHelpMessages == nil) then
        if (Level.GetDifficulty() != 0) then
           return;
        end
     end
     
     if (Random() < 0.4) then

        local index = AI.RandomSample(table.getn(MissionText.Message_Help), 1, false);

        if (index != nil) then
           local msg = MissionText.Message_Help[ index ];

           Level.HelpMessage( msg, 10.0, 255, 255, 255 );
        end
     end
  end

  --------------------------------------------------------  
  -- Name: Level.OnBreakActionTrigger()
  -- Desc: 
  --------------------------------------------------------
  function Level.OnBreakActionTrigger()
        if ( Level.FinishAnimTrigger != "" and 
             Level.FinishAnimTrigger != nil ) then
                
          local playerNode = Entity.GetNode( Level.GetPlayer() );
         
          local s = Level.FinishAnimTrigger .. ':OnEnterArea( playerNode );';
          local f = loadstring( s );
                  
          Level.FinishAnimTrigger    = "";
         
          if ( f != nil ) then
             f();         
          end;                  
        end;
        
        Level.FinishAnimTrigger    = "";
        Level.FinishAnimUnregister = false;        
  end
  
  --------------------------------------------------------  
  -- Name: Level.OnBreakActionTrigger()
  -- Desc: 
  --------------------------------------------------------
  function Level.AddDocuments(actorId, docsId, name)
     local docs = Level.CreateItem( "Custom" , "Equipment" );

     if (docs != nil) then
        Entity.SetUniqueID( docs, docsId );
         
        Level.SetCustomItemName( docs, name );
        Level.SetCustomItemIcon( docs, "ammo_doc" );

        local officer = Level.FindActor( actorId );
        if ( officer != nil ) then 
            Actor.PutPouch( officer, Actor.GetEmptyPouch(officer), docs );
        end
     end
  end

  --------------------------------------------------------  
  -- Name: Level.Execute()
  -- Desc: 
  --------------------------------------------------------
  function Level.Execute( szCommand, val1, val2, val3 )
     if (szCommand == nil or szCommand == "") then
        return;
     end
     
     assert( Level._CallbackInput == nil or
            (val1 == nil and val2 == nil and val3 == nil), "recursion callbacks is not supported: " .. tostring(Level._CallbackInput));
     
     Level._CallbackReturnValue = nil;
     
     Level._CallbackInput = {};
     Level._CallbackInput[1] = val1;
     Level._CallbackInput[2] = val2;
     Level._CallbackInput[3] = val3;
             
     local f = loadstring(szCommand);
     if ( f != nil ) then 
        f(); 
     else 
        print("Bad lua command: " .. szCommand);
     end;
     
     Level._CallbackInput = nil;
     
     return Level._CallbackReturnValue;
  end

  --------------------------------------------------------  
  -- Name: Level.SetCallbackResult()
  -- Desc: 
  --------------------------------------------------------
  function Level.SetCallbackResult( result ) 
     Level._CallbackReturnValue = result;
  end

  --------------------------------------------------------  
  -- Name: Level.SetCallbackInput()
  -- Desc: 
  --------------------------------------------------------
  function Level.GetCallbackArgv( index )
     return Level._CallbackInput[index];
  end
  
  --------------------------------------------------------
  -- Name: Level.OnChangeCloth_Worker()
  -- Desc:
  --------------------------------------------------------
  function Level.OnChangeCloth_Default(skin)
      local player = Level.GetPlayer();
      if ( player != nil ) then
         Actor.EnableMesh( player, "sabg_equipment_up"   , false );
         Actor.EnableMesh( player, "sabg_equipment_down" , false );
         Actor.EnableMesh( player, "mesh_helmet"         , false );
         Actor.SetSkin( player, skin );
      end;
  end

  --------------------------------------------------------
  -- Name: Level.WriteArray()
  -- Desc:
  --------------------------------------------------------
  function Level.WriteArray(array)
     local n = 0;
     for i in array do
        n = n + 1;
     end
     
     Stream.WriteInt(n);
     
     for i in array do
        Stream.Write( i );
        Stream.Write( array[i] );
     end
     
     Stream.WriteString("ARRY");
  end
  
  --------------------------------------------------------
  -- Name: Level.ReadArray()
  -- Desc:
  --------------------------------------------------------
  function Level.ReadArray()
     local array = {};
     
     local n = Stream.ReadInt();
     for i = 1, n do
        
        local index = Stream.Read();
        array[index] = Stream.Read();
        
     end
     
     if (Stream.ReadString() != "ARRY") then
        return nil;
     end
     
     --Level.DebugPrintArray(array);
     
     return array;
  end

  --------------------------------------------------------
  -- Name: Level.Max()
  -- Desc:
  --------------------------------------------------------
  function Level.Max(a, b)
     if (a > b) then
        return a;
     end
     
     return b;
  end

  --------------------------------------------------------
  -- Name: Level.Max()
  -- Desc:
  --------------------------------------------------------
  function Level.Min(a, b)
     if (a < b) then
        return a;
     end
     
     return b;
  end

  --------------------------------------------------------
  -- Name: Level.DebugPrintArray_Rec()
  -- Desc:
  --------------------------------------------------------
  function Level.DebugPrintArray_Rec(obj, array)
     for i in array do

        local index = tostring(i);
        if (type(i) == "string") then
           index = "'" .. index .. "'";
        end
       
        if (type(array[i]) != "table") then
           
           print(obj .. "[" .. index .. "] = " .. tostring(array[i]));
           
        else
           print(obj .. "[" .. index .. "] = ");

           Level.DebugPrintArray_Rec(" " .. obj .. "["..tostring(i).."]", array[i])
        end
     end
  end
	
  --------------------------------------------------------
  -- Name: Level.DebugPrintArray()
  -- Desc:
  --------------------------------------------------------
  function Level.DebugPrintArray(array)
      Level.DebugPrintArray_Rec("A", array)
  end

  --------------------------------------------------------
  -- Name: Level.OnEnableHiGitlerTrigger()
  -- Desc:
  --------------------------------------------------------
  function Level.OnEnableHiGitlerTrigger()
     Level.HiGilterTriggerEnabled = true;
  end

  --------------------------------------------------------
  -- Name: Level.OnHiGilter()
  -- Desc:
  --------------------------------------------------------
  function Level.OnHiGilter()
     Level.HiGilterTriggerEnabled = false;
     Level.AddTimer( 'HGTT', "OnEnableHiGitlerTrigger", 5.0, false );
  end

  --------------------------------------------------------
  -- Name: Level.BeginGenCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.BeginCutScene( animId, scmFile, message, time, dofParams )
      
     local fps = 30.0;
     
     if (animId == nil) then
        animId = "DefaultCutsceneID" .. tostring(Level.CutsceneTimes);
        Level.CutsceneTimes = Level.CutsceneTimes + 1;
     end
     
     local ns = Level.FindCutScene(animId);
     if ( ns == nil ) then
  
        if ( dofParams == nil ) then      
          Level.AddCinematicCamera(scmFile);
        else
          Level.AddCinematicCamera(scmFile, dofParams[1], dofParams[2], dofParams[3], dofParams[4], dofParams[5] );
        end;
          
        ns = Level.NewCutScene(animId, 0.0, time * fps);
          
        CutScene.SetCamera( ns, scmFile);
        CutScene.SetBlurEffect( ns, 0.0 );
        
        if (type(message) != "table") then
           CutScene.AddSubTitle( ns, message, 0.0, time * fps);
        else
           
           local n        = tofloat(table.getn(message));
           local index    = 0.0;
           local interval = time / n;
           
           for i in message do
              
              -- print(tostring(index * interval) .. " " .. tostring(index * interval + interval) .. " " .. message[i]);
              CutScene.AddSubTitle( ns, message[i], index * interval, index * interval + interval);
              
              index = index + 1.0;
           end
        end
--     else
--        print("Error: Can't find cutscene " .. animId);
     else
       CutScene.Reset(ns);     
     end;
        
     CutScene.Play( ns, fps );
     CutScene.Activate( ns , true );      
     
     return ns;
  end;

  --------------------------------------------------------
  -- Name: Level.BeginGenCutScene()
  -- Desc:
  --------------------------------------------------------
  function Level.ChangeCamCutScene( animId, scmFile, dofParams )
     local ns = Level.FindCutScene(animId);
     if ( ns != nil ) then
        
        if ( dofParams == nil ) then
          Level.AddCinematicCamera(scmFile);
        else
          Level.AddCinematicCamera(scmFile , dofParams[1], dofParams[2], dofParams[3], dofParams[4], dofParams[5] );
        end;
        
        CutScene.SetCamera( ns, scmFile);
     else
        print("Can't find cutscene: " .. animId);
     end  
  end

  --------------------------------------------------------
  -- Name: Level.PutCustomEquipment()
  -- Desc:
  --------------------------------------------------------
  function Level.PutCustomEquipment( actor, eqName, uniqueId, name, tip)
      if (actor == nil) then
         return;
      end
      
      local item = Actor.PutEmptyPouch( radist, "Custom:" .. eqName, "Equipment" );
      if ( item != nil ) then
         Entity.SetUniqueID( item, uniqueId );
         Entity.SetName( item, name );
         Level.SetCustomItemName( item, tip );
      end;
  end

  --------------------------------------------------------
  -- Name: Level.LogicCheckTask()
  -- Desc:
  --------------------------------------------------------
  function Level.LogicCheckTask( taskId, completed )
     return (Level.IsMissionTaskCompleted( taskId ) == true) or (completed == taskId);
  end

  --------------------------------------------------------
  -- Name: Level.GetStoredObject()
  -- Desc:
  --------------------------------------------------------
  function Level.GetAIMemoryStoredObject(npc, objectId)
     local stored = {};
     stored.pos = {};

     stored.id,
     stored.entity, 
     stored.time, 
     stored.data, 
     stored.executed,
     stored.pos.x, stored.pos.y, stored.pos.z = AI.GetStoredCustom( npc, objectId );
     
     if (stored.id == nil) then
        return nil;
     end
     
     return stored;
  end

  --------------------------------------------------------
  -- Name: Level.BalanceDistance()
  -- Desc:
  --------------------------------------------------------
  function Level.BalanceDistance(v1, v2)
     return balance_distance(v1.x, v1.y, v1.z, v2.x, v2.y, v2.z);
  end

  --------------------------------------------------------
  -- Name: Level.GetEntityPosition()
  -- Desc:
  --------------------------------------------------------
  function Level.GetEntityPosition( entity )
      if (entity == nil) then
         return nil;
      end
       
      local n = Entity.GetNode( entity );
      local pos = {};
      pos.x, pos.y, pos.z = node.GetPosition( n );
      
      return pos;
  end

  --------------------------------------------------------
  -- Name: Level.GetPlayerPosition()
  -- Desc:
  --------------------------------------------------------
  function Level.GetPlayerPosition()
      return Level.GetEntityPosition( Level.GetPlayer() );
  end

  --------------------------------------------------------
  -- Name: Level.GetEntityPosition()
  -- Desc:
  --------------------------------------------------------
  function Level.TypeAssertObj(f, n, obj)
     if (obj == nil) then
        return;
     end
     
     local object = obj[1];
     local t = obj[2];
     
     if (object == nil and t == "userdata") then
        return;
     end
     
     assert(type(object) == t, f .. " param " .. tostring(n) .. " error: e{" .. t .. "}. h{" .. type(object) .."}" );
  end
  
  --------------------------------------------------------
  -- Name: Level.GetEntityPosition()
  -- Desc:
  --------------------------------------------------------
  function Level.TypeAssert(f, obj1, obj2, obj3, obj4)
     Level.TypeAssertObj(f, 1, obj1);
     Level.TypeAssertObj(f, 2, obj2);
     Level.TypeAssertObj(f, 3, obj3);
     Level.TypeAssertObj(f, 4, obj4);
  end

  --------------------------------------------------------
  -- Name: Level.EraseFromArray()
  -- Desc:
  --------------------------------------------------------
  function Level.EraseFromArray(array, obj)
     for i in array do
        if (array[i] == obj) then
           array[i] = nil;
        end
     end
  end

  --------------------------------------------------------
  -- Name: Level.AddToArray()
  -- Desc:
  --------------------------------------------------------
  function Level.AddToArray(array, obj)
     local index = 0;
     for i in array do
        if (array[i] == obj) then
            return;
        end
        
        if (type(i) == "int") then
           index = Level.Max(i + 1, index);
        end
     end
     
     array[index] = obj;
  end

  --------------------------------------------------------
  -- Name: Level.ExistsArray()
  -- Desc:
  --------------------------------------------------------
  function Level.ExistsArray( array, value )
     return Level.GetIndex(array, value) != -1;
  end

  --------------------------------------------------------
  -- Name: Level.GetArraySize()
  -- Desc:
  --------------------------------------------------------
  function Level.GetArraySize( array )
     local n = 0;
     for i in array do
        n = n + 1;
     end
     
     return n;
  end

  --------------------------------------------------------
  -- Name: Level.GetNpcPosition()
  -- Desc:
  --------------------------------------------------------
  function Level.GetNpcPosition( npc )
     local pos = {};
     pos.x, pos.y, pos.z = NPC.GetPosition( npc );
     return pos;
  end

  --------------------------------------------------------
  -- Name: Level.SetEntityName()
  -- Desc:
  --------------------------------------------------------
  function Level.SetEntityName( eid, nameL, name )
     local entity = eid;
     if (type(eid) == "string") then
        entity = Level.FindItem( eid );
     end
     
     if (entity != nil) then
         Entity.SetName( entity, nameL );
         Level.SetCustomItemName( entity, name );
     end     
  end

  --------------------------------------------------------
  -- Name: Level.SoundDistance()
  -- Desc:
  --------------------------------------------------------
  function Level.SoundDistance( v1, v2 )
     return AI.SoundDistance( v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, 0.5, 350.0);
  end

  --------------------------------------------------------
  -- Name: Level.IsUsingAnchor()
  -- Desc:
  --------------------------------------------------------
  function Level.IsUsingAnchor( npc, anchorId )
     local anchor = AI.FindAnchor(anchorId);
     if (anchor == nil) then
        return false;
     end
     
     return AI.IsUsingAnchor(npc, anchor);
  end

  --------------------------------------------------------
  -- Name: Level.SoundDistance()
  -- Desc:
  --------------------------------------------------------
  function Level.FindNearestAnchor( anchors, pos )
     local distance = 10000.0;
     local result = nil;
     
     for i in anchors do
	    local anchor = AI.FindAnchor(anchors[i]);
	    if ((anchor != nil) and (AI.IsAnchorBinded(anchor) == false)) then
	       local apos = {};
	       apos.x, apos.y, apos.z = AI.GetAnchorPosition(anchor);
	       local d = balance_distance(pos.x, pos.y, pos.z, apos.x, apos.y, apos.z);
	       if (d < distance) then
	          result = anchors[i];
	          distance = d;
	       end 
	    end
     end
     
     return result;
  end
  
  --------------------------------------------------------
  -- Name: Level.IsAtBBox()
  -- Desc:
  --------------------------------------------------------
  function Level.IsAtBBox( vArray, vPos )
     local v1 = { x = vArray[1], y = vArray[2], z = vArray[3] };
     local v2 = { x = vArray[4], y = vArray[5], z = vArray[6] };

     return vPos.x > Level.Min(v1.x, v2.x) and vPos.x < Level.Max(v1.x, v2.x) and
            vPos.y > Level.Min(v1.y, v2.y) and vPos.y < Level.Max(v1.y, v2.y) and
            vPos.z > Level.Min(v1.z, v2.z) and vPos.z < Level.Max(v1.z, v2.z);
  end
  
  --------------------------------------------------------
  -- Name: Level.ToCustomParams()
  -- Desc:
  --------------------------------------------------------
  function Level.ToCustomParams( arr )
     local properties = Level.CreateCustomParams();
       
     for i in arr do
        Level.SetValue(properties, i, arr[i]);
     end
     
     return properties;
  end

  --------------------------------------------------------
  -- Name: Level.SetDoorLockedId()
  -- Desc:
  --------------------------------------------------------
  function Level.SetDoorLockedId(doorId, locked)
      local door = Level.FindDoor(doorId);
      if (door != nil) then
         Level.SetDoorLocked( door, locked, true );
      end
  end

  --------------------------------------------------------
  -- Name: Level.GetDeadBodyInfo()
  -- Desc:
  --------------------------------------------------------
  function Level.GetDeadBodyInfo(body)
     local info = {};
     info.time, 
     info.accident, 
     info.sniper = AI.GetDeadBodyInfo(body);
     
     if (info.time == nil) then
        return nil;
     end
     
     return info;
  end
  
  --------------------------------------------------------
  -- Name: Level.RemoveWorldObject()
  -- Desc:
  --------------------------------------------------------
  function Level.HideWorldObject( objectId )
     if (Level.WorldObjectRemoved[objectId] != nil) then
        return;
     end
     
     local object = Level.FindWorldObject(objectId);
     if (object == nil) then
        print("Warning: Can't find object: " .. objectId);
        return;
     end

     local px,py,pz = Level.GetWorldObjectPos( object );
     
     Level.WorldObjectRemoved[objectId] = {};
     
     Level.WorldObjectRemoved[objectId].id     = objectId;
     Level.WorldObjectRemoved[objectId].oldpos = py;
     Level.WorldObjectRemoved[objectId].newpos = py - 1000.0;
     
     Level.SetWorldObjectPos( object, px, Level.WorldObjectRemoved[objectId].newpos, pz );
  end

  --------------------------------------------------------
  -- Name: Level.RestoreWorldObject()
  -- Desc:
  --------------------------------------------------------
  function Level.ShowWorldObject( objectId )
     if (Level.WorldObjectRemoved[objectId] == nil) then
        return;
     end
     
     local object = Level.FindWorldObject(objectId);
     if (object == nil) then
        print("Warning: Can't find object: " .. objectId);
        return;
     end

     local px,py,pz = Level.GetWorldObjectPos( object );
     Level.SetWorldObjectPos( object, px, Level.WorldObjectRemoved[objectId].oldpos, pz );     
     
     Level.WorldObjectRemoved[objectId] = nil;
  end
  
  --------------------------------------------------------
  -- Name: Level.SaveRemovedObject()
  -- Desc:
  --------------------------------------------------------
  function Level.SaveRemovedObject( object )
     if (object == nil) then
        return;
     end
     
     Stream.WriteString( object.id );
     Stream.WriteFloat ( object.oldpos );
     Stream.WriteFloat ( object.newpos );
  end

  --------------------------------------------------------
  -- Name: Level.LoadRemovedObject()
  -- Desc:
  --------------------------------------------------------
  function Level.LoadRemovedObject()
     
     local object = {};
     
     object.id     = Stream.ReadString(  );
     object.oldpos = Stream.ReadFloat ( );
     object.newpos = Stream.ReadFloat ( );
  
     return object;
  end  

  --------------------------------------------------------
  -- Name: Level.LoadRemovedObject()
  -- Desc:
  --------------------------------------------------------
  function Level.UpdateRemovedObjects()
  
     for i in Level.WorldObjectRemoved do
        local object = Level.FindWorldObject(i);
        if ( object != nil ) then
           local px,py,pz = Level.GetWorldObjectPos( object );
           Level.SetWorldObjectPos( object, px, Level.WorldObjectRemoved[i].newpos, pz );
        end;
     end
  end

  --------------------------------------------------------
  -- Name: Level.DebugPrintRemovedObjects()
  -- Desc:
  --------------------------------------------------------
  function Level.DebugPrintRemovedObjects()
     for i in Level.WorldObjectRemoved do
        print("Object[" .. i .. "].id = " .. Level.WorldObjectRemoved[i].id);
        print("Object[" .. i .. "].oldpos = " .. tostring(Level.WorldObjectRemoved[i].oldpos));
        print("Object[" .. i .. "].newpos = " .. tostring(Level.WorldObjectRemoved[i].newpos));
     end
  end

  --------------------------------------------------------
  -- Name: Level.OnExecuteSubordinate()
  -- Desc:
  --------------------------------------------------------
  function Level.OnExecuteSubordinate( npc, wait )
  
     local player = Level.GetPlayer();
     
     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "DistanceRun", false);
     Level.SetValue(properties, "ParentPolicy", true);
     Level.SetValue(properties, "IdlePolicy", true);
     Level.SetValue(properties, "FollowActorPause", wait);
     Level.SetValue(properties, "CriticPathDistance", 150.0);
     
     local waitLimit = 15.0;
     if (Level.GetDifficulty() == 0) then
        waitLimit = 25.0;
     end
     
     Level.SetValue(properties, "WaitLimit", waitLimit);

     AI.FollowActor( npc, player, 0.0, -20.0, properties );
     
     AI.HandleVoice(npc, "@v_military_yes");
  end

  --------------------------------------------------------
  -- Name: Level.PlayCustomAnimSound()
  -- Desc:
  --------------------------------------------------------
  function Level.PlayCustomAnimSound( soundName )
      
     local n = table.getn( Level.PlayerAnimSounds );
     local s = Level.PlayCustomSound( soundName );
     if ( s == nil ) then
       return;
     end;
     
     Level.PlayerAnimSounds[ n + 1 ] = s;
     
  end;

  --------------------------------------------------------
  -- Name: Level.StopAllCustomAnimSounds()
  -- Desc:
  --------------------------------------------------------
  function Level.StopAllCustomAnimSounds()
  
     for i in Level.PlayerAnimSounds do
       Level.StopCustomSound( Level.PlayerAnimSounds[i] );          
     end
     
     Level.PlayerAnimSounds = {};
     
  end;

  --------------------------------------------------------
  -- Name: Level.PrintVector()
  -- Desc:
  --------------------------------------------------------
  function Level.PrintVector( v )
     print("[" .. tostring(v.x) .. ", " .. tostring(v.y) .. ", " .. tostring(v.z) .. "]");
  end

--------------------------------------------------------
-- Name: Level.OnCheckCloseDoor()
-- Desc:
--------------------------------------------------------
function Level.OnCheckCloseDoor( doorId, botId )
   local door = Level.FindDoor( doorId );
   if ( door == nil ) then
     return false;
   end;

   if ( Level.IsDoorOpened(door) == false ) then
     return false;
   end;
      
   local actor = Level.FindActor( botId );
   if ( actor == nil ) then
     return false;   
   end;
      
   Level.CloseDoor( door, true, actor );
   
   return true;     
end;

--------------------------------------------------------
-- Name: Level.MoveItem()
-- Desc:
--------------------------------------------------------
function Level.MoveItem( object, translation )
   local objectNode  = Entity.GetNode( object );
   local x, y, z = node.GetPosition( objectNode );

   x = x + translation.x;
   y = y + translation.y;
   z = z + translation.z;
      
   node.SetPosition( objectNode, x, y, z );
   node.InvalidateTransforms( objectNode );
end

--------------------------------------------------------
-- Name: Level.SetEntityPosition()
-- Desc:
--------------------------------------------------------
function Level.SetEntityPosition( entity, pos )
   local objectNode  = Entity.GetNode( entity );
      
   node.SetPosition( objectNode, pos.x, pos.y, pos.z );
   node.InvalidateTransforms( objectNode );
end

--------------------------------------------------------
-- Name: Level.CanStartSpyResqueScript()
-- Desc:
--------------------------------------------------------
function Level.SwitchModel(model1, model2, state)
   if (state == 1) then 
      Level.HideWorldObject( model1 );
      Level.ShowWorldObject( model2 );
   else
      Level.HideWorldObject( model2 );
      Level.ShowWorldObject( model1 );
   end
end

--------------------------------------------------------
-- Name: Level.GetAnchorConfig()
-- Desc:
--------------------------------------------------------
function Level.GetAnchorConfig( anchorId )
   local conf = {};
   conf.pos = {};
   conf.dir = {};
   
   local anchor = AI.FindAnchor( anchorId );
   if (anchor == nil) then
      return nil;
   end
   
   conf.pos.x, conf.pos.y, conf.pos.z = AI.GetAnchorPosition( anchor );
   conf.dir.x, conf.dir.y, conf.dir.z = AI.GetAnchorDirection( anchor );
   
   return conf;
end

--------------------------------------------------------
-- Name: Level.StopCutscene()
-- Desc:
--------------------------------------------------------
function Level.StopCutscene( cutsceneId )
   local ns = Level.FindCutScene(cutsceneId);
   if (ns == nil) then
      return;
   end
   
   CutScene.Stop(ns);
   CutScene.Activate(nil);
end

--------------------------------------------------------
-- Name: Level.NpcDistanceCheck()
-- Desc:
--------------------------------------------------------
function Level.Callback_NpcDistanceCheck( targetNpcId )
   local target = AI.FindNPC(targetNpcId);
   
   if (target == nil) then
      Level.SetCallbackResult( false );
      return;
   end
   
   local npc = Level.GetCallbackArgv( 1 );
   if (npc == nil) then
      Level.SetCallbackResult( false );
      return;
   end
   
   local distance = Level.BalanceDistance( Level.GetNpcPosition(npc), 
                                           Level.GetNpcPosition(target) );

   Level.SetCallbackResult(distance < 100.0);
end

--------------------------------------------------------
-- Name: Level.DebugPrintObjects()
-- Desc:
--------------------------------------------------------
function Level.DebugPrintObjects( objectId )
   local obj = Level.FindWorldObject(objectId);
   if (obj != nil) then
      local x, y, z    = Level.GetWorldObjectPos( obj );
      local px, py, pz = Level.GetWorldObjectRot( obj );
      
      print(tostring(objectId) .. " pos: (" .. tostring(x) .. ", " .. tostring(y) .. ", " .. tostring(z) .. ")");
      print(tostring(objectId) .. " rot: (" .. tostring(px) .. ", " .. tostring(py) .. ", " .. tostring(pz) .. ")");
   end
end

--------------------------------------------------------
-- Name: Level.SetHiGitlerAnim()
-- Desc:
--------------------------------------------------------
function Level.SetHiGitlerAnim(anim, time, sound)
   if (sound == nil) then
      Level.HiGitlerAnim = anim .. ":^@v_hi_gitler";
   else
      Level.HiGitlerAnim = anim .. ":^" .. sound;
   end
   
   if (time != nil) then
      Level.HiGitlerTime = tostring(time);
   end
end

--------------------------------------------------------
-- Name: Level.SafeAddLevelPlayerAction()
-- Desc:
--------------------------------------------------------
function Level.SafeAddLevelPlayerAction(id, text)
   if (Level.HasPlayerAction(id) == false) then
      Level.AddPlayerAction(id, text, "Level", false );
   end
   
   for i in Level.PlayerActionsArray do
      if (Level.PlayerActionsArray[i].uses == true and
          Level.PlayerActionsArray[i].id == id) then
          
          return;
      end
   end
   
   for i in Level.PlayerActionsArray do
      if (Level.PlayerActionsArray[i].uses == false) then
         Level.PlayerActionsArray[i].uses = true;
         Level.PlayerActionsArray[i].id   = id;
         Level.PlayerActionsArray[i].text = text;
      end
   end
end

--------------------------------------------------------
-- Name: Level.SafeRemoveLevelPlayerAction()
-- Desc:
--------------------------------------------------------
function Level.SafeRemoveLevelPlayerAction(id)
   if (Level.HasPlayerAction(id) == true) then
      Level.RemovePlayerAction(id);
   end

   for i in Level.PlayerActionsArray do
      if (Level.PlayerActionsArray[i].uses == true and
          Level.PlayerActionsArray[i].id == id) then
         Level.PlayerActionsArray[i].uses = false;
      end
   end
end

--------------------------------------------------------
-- Name: Level.OnHelpForm()
-- Desc:
--------------------------------------------------------
function Level.OnHelpForm()
   if (Level.GetDifficulty() != 0) then
      return;
   end
   
   local form = AI.GetPlayerForm();
   
   if (form == nil) then
      return;
   end

   if (Level.FormHelp[form] != nil) then

      Level.HelpMessage( Level.FormHelp[form] );
         
      Level.FormHelp[form] = nil;
   end
   
end

--------------------------------------------------------
-- Name: Level.SetFormHelp()
-- Desc:
--------------------------------------------------------
function Level.SetFormHelp( form, msg )
   Level.FormHelp[form] = msg;
end

--------------------------------------------------------
-- Name: Level.LockDoor()
-- Desc:
--------------------------------------------------------
function Level.LockDoor( doorId, locked )
   local door = Level.FindDoor(doorId);
   if (door != nil) then
      Level.SetDoorLocked( door, locked, true );
   else
      print("Warning! Can't find door: " .. doorId );
   end
end

--------------------------------------------------------
-- Name: Level.IsScriptNpcSeePlayerAtRoom()
-- Desc:
--------------------------------------------------------
function Level.IsScriptNpcSeePlayerAtRoom(npcId, roomId)
   local npc = AI.FindNPC(npcId);
   
   if (npc == nil) then
      return true;
   end

   if (AI.HasTask(npc, AI.TASK_SCRIPT_DEFAULT) == false and
       AI.IsScriptTask(npc) == false) then
      return true; 
   end
   
   if (AI.HasPlayerInfo(npc, "see") == false) then
       return false;
   end
   
   local room = Level.GetRoom(roomId);
   local playerRoom = AI.GetPlayerRoom();
   
   if (playerRoom == room) then
      return true;               
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.SetHelpMessageInterval()
-- Desc:
--------------------------------------------------------
function Level.SetHelpMessageInterval( interval )
   Level.ShowTestHelpInterval = interval;
   
   if (interval > 0.0) then
      Level.RemoveTimer( 'SHTM' );
      Level.AddTimer( 'SHTM', "OnShowTestHelp", Level.ShowTestHelpInterval, true );
   else
      Level.RemoveTimer( 'SHTM' );
   end
end

--------------------------------------------------------
-- Name: Level.HelpMessage()
-- Desc:
--------------------------------------------------------
function Level.HelpMessage( msg )
   Level.AddSmallMessage( "? " .. msg, 10.0, 255, 255, 255 );
end

--------------------------------------------------------
-- Name: Level.AlarmMessage()
-- Desc:
--------------------------------------------------------
function Level.AlarmMessage( msg )
   Level.AddSmallMessage( "!&" .. msg, 10.0, 255, 0, 0);
end

--------------------------------------------------------
-- Name: Level.DecrementLevelStats()
-- Desc:
--------------------------------------------------------
function Level.DecrementLevelStats(levelStats, id)
   local val = Level.GetLevelStats(levelStats, id);
   if (val >= 0) then
      Level.SetLevelStats(levelStats, id, val - 1);
   end
end

--------------------------------------------------------
-- Name: Level.DecrementLevelStats()
-- Desc:
--------------------------------------------------------
function Level.IncrementLevelStats(levelStats, id)
   local val = Level.GetLevelStats(levelStats, id);
   if (val >= 0) then
      Level.SetLevelStats(levelStats, id, val + 1);
   end
end

--------------------------------------------------------
-- Name: Level.DefaultCalcProf()
-- Desc:
--------------------------------------------------------
function Level.DefaultCalcProf(c, n, acc)

    local p = saturate(saturate(1.0 - c) * 
                       saturate(1.0 - 1.2 * n) * 
                       (1.0 + acc * 0.1) );
	return p;
end

--------------------------------------------------------
-- Name: Level.SetSoundSystemFadeFactor()
-- Desc:
--------------------------------------------------------
function Level.SetSoundSystemFadeFactor( src, dst, fade )
   local roomSource = Level.GetRoom(src);
   local roomDest   = Level.GetRoom(dst);
   
   if (roomSource == nil or roomSource == 0) then
      print("Can't find room " .. src);
      return;
   end
   
   if (roomDest == nil or roomDest == 0) then
      print("Can't find room " .. dst);
      return;
   end   

   AI.SetSoundSystemFadeFactor( roomSource, roomDest, fade );
end

--------------------------------------------------------
-- Name: Level.IsAccidentBody()
-- Desc:
--------------------------------------------------------
function Level.IsAccidentBody(actorId)
   local info = Level.GetDeadBodyInfo(Level.FindActor(actorId));
   if (info != nil) then
      if (info.accident == true) then
         return true;
      end
   end
   
   return false;
end

--------------------------------------------------------
-- Name: Level.ChangeLevelStats()
-- Desc:
--------------------------------------------------------
function Level.ChangeLevelStats(levelStats, id, value)
   local val = Level.GetLevelStats(levelStats, id);
   Level.SetLevelStats(levelStats, id, val + value);
end

--------------------------------------------------------
-- Name: Level.HideItem()
-- Desc:
--------------------------------------------------------
function Level.HideItem( itemId )
   local item = Level.FindItem( itemId );
   if (item != nil) then
      Entity.SetHidden( item, true );           
      Level.EnableItemPickup( item, false );
   else
      print("Can't find item: " .. itemId);
   end
end

--------------------------------------------------------
-- Name: Level.DebugJobsTest()
-- Desc:
--------------------------------------------------------
function Level.DebugJobsTest()
   local jobList = { "easy", "normal", "hard", "expert", 
                     "hardexpert", "easyexpert", "easynormal", "alert" };
   local time = 0.0;
   for i in jobList do
      Level.InstallDpc("AI.SetJob('alive', '" .. jobList[i] .. "') ", time);
      time = time + 0.5;
   end
end

-------------------------------------------------------------------------------
-- Level.OnEnableHiArmyMMTrigger()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnEnableHiArmyMMTrigger()
  Level.HiArmyMMTriggerEnabled = true;
end

-------------------------------------------------------------------------------
-- Level.OnHiArmyMM()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.OnHiArmyMM()
  Level.HiArmyMMTriggerEnabled = false;
  Level.AddTimer('HGTT', "OnEnableHiArmyMMTrigger", 5.0, false);
end

-------------------------------------------------------------------------------
-- Level.SetHiArmyMMAnim()
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------
function Level.SetHiArmyMMAnim(anim, time, sound)
  if (sound == nil) then
    Level.HiArmyMMAnim = anim .. ":^@v_hi_gitler";
  else
    Level.HiArmyMMAnim = anim .. ":^" .. sound;
  end
  if (time != nil) then
    Level.HiArmyMMTime = tostring(time);
  end
end
