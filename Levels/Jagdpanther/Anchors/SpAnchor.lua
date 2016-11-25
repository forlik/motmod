-------------------------------------------------------------------------------
-- SpeakWithSomebody anchor
-- MoTmod "Jagdpanther"
-- forlik
-------------------------------------------------------------------------------

Anchor = 
{
};

function Anchor:Setup(uid, npc)
  NPC.Stand(npc);
  NPC.SetStandPolicy(npc, NPC.STAND_POLICY_NORMAL);
  NPC.SetBodyPolicy(npc, NPC.BODY_POLICY_SIMPLE_STANDING);
  NPC.SetHeadPolicy(npc, NPC.HEAD_POLICY_DEFAULT);
  NPC.SetFirePolicy(npc, NPC.FIRE_POLICY_NEUTRAL);

  local soldierID = AI.GetAnchorCustomParam(uid, 1);
  local anchorID = AI.GetAnchorCustomParam(uid, 2);
  local animationType = AI.GetAnchorCustomParam(uid, 3);
  local animation1 = "";
  local animation2 = "";

  if (animationType == "LONG") then
    animation1 = "Relaxed_Talk_2:male_ger_script_script_38:0";
    animation2 = "Relaxed_Talk_Scratch1";
  elseif (animationType == "SHORT") then
    animation1 = "Relaxed_Talk_2:male_ger_script_script_43:10";
    animation2 = "Relaxed_Talk_Scratch2";
  else
    print("MoTmod.ERROR: SpAnchor:Setup() invalid animation type");
  end

  local soldier = AI.FindNPC(soldierID);
  if (AI.IsDefault(soldier)) then
     AI.DoCustomAnimationEx(npc, animation1);
     local properties = Level.CreateCustomParams();
     Level.SetValue(properties, "CustomString_1", anchorID);
     AI.RunScriptTask(soldier, "scripts:job\\AnchorJob.lua", AI.LOGIC_DEFAULT, properties);
  else
     AI.DoCustomAnimationEx(npc, animation2);
  end
  return true;
end

function Anchor:Notify(uid, npc, time)
  return true;
end

function Anchor:Stop(uid, npc)
  return true;
end

function Anchor:Execute(uid, npc)
  return true;
end
