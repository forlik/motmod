-------------------------------------------------------------------------------
-- HiArmyMoTmod trigger
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------

HiArmyMMTrigger =
{
};

function HiArmyMMTrigger:OnInit()
end

function HiArmyMMTrigger:OnEnterArea(sender)
  -- print("enter HiArmyTrigger");
  local botUid = self.ScriptCommand;
  if (Level.IsPlayerInVehicle() == true) then
    -- print("player at the vehicle");
    return;
  end

  local player = Level.GetPlayer();
  if (player != nil) then
    local type = Actor.GetActorType(player);
    if (type != Actor.ACTOR_TYPE_OFFICER) then
      -- print("type isn't officer");
      return;
    end
  end

  local npc = AI.FindNPC(botUid);
  if (npc == nil) then
    -- print("bad bot: " .. botUid);
    return;
  end

  if (AI.IsDefault(npc) == false) then
    -- print("bot is not default: " .. botUid);
    return;
  end

  if (AI.HasPlayerInfo(npc, "see") != true) then
    -- print("bot don't see player: " .. botUid);
    return;
  end

  -- Check distance...
  local playerPos = {};
  local botPos = {};
  playerPos.x, playerPos.y, playerPos.z = AI.GetPlayerPosition();
  botPos.x, botPos.y, botPos.z = NPC.GetPosition(npc);
  local distance = balance_distance(playerPos.x, playerPos.y, playerPos.z, botPos.x, botPos.y, botPos.z);
  if (distance > 50.0) then
    -- print("bad distance: " .. tostring(distance));
    return;
  end
        
  -- Initialize script task...
  local properties = Level.CreateCustomParams();
  Level.SetValue(properties, "CustomString_1", Level.HiArmyMMAnim);
  Level.SetValue(properties, "CustomString_2", Level.HiArmyMMTime);
  Level.SetValue(properties, "CustomString_3", "Level.OnHiGilter()");

  -- print("run HiArmyTrigger");
  AI.RunScriptTask(npc, "scripts:job\\PlayerAnimTask.lua", AI.LOGIC_DEFAULT, properties);
end

function HiArmyMMTrigger:OnLeaveArea(sender)
end
