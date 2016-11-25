-------------------------------------------------------------------------------
-- Nod anchor
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
  return true;
end


function Anchor:Notify(uid, npc, time)
  return true;
end

function Anchor:Stop(uid, npc)
  NPC.Stand(npc);
  NPC.SetStandPolicy(npc, NPC.STAND_POLICY_NORMAL);
  NPC.SetHeadPolicy(npc, NPC.HEAD_POLICY_DEFAULT);
  NPC.SetBodyPolicy(npc, NPC.BODY_POLICY_SIMPLE_STANDING);
  return true;
end

function Anchor:Execute(uid, npc)
  AI.DoCustomAnimationEx(npc, "Act_Stand_ArmyHi:male_ger_script_script_40:8");
  return true;
end
