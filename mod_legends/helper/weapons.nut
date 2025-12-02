if (!("Weapons" in ::Legends)) {
   ::Legends.Weapons <- {};
}

::Legends.Weapons.findPrimaryAttackSkill <- function (_actor, _weapon) {
    if (_actor == null || _weapon == null) {
        return null;
    }

    local skills = _actor.getSkills();
    local bestSkill = null;
    local bestAPCost = 9999;

    foreach (skill in skills.m.Skills) {
        if (skill.m.Item != null && skill.m.Item.getID() == _weapon.getID()) {

            // Use same validation code as Attack of Opportunity
            if (!skill.isActive()
                || !skill.isAttack()
                || !skill.isTargeted()
                || skill.isIgnoredAsAOO()
                || skill.isDisabled()
                || !skill.isUsable()
                || skill.getMinRange() > 1
                || skill.isRanged())
            {
                continue;
            }

            local apCost = skill.getActionPointCost();
            if (apCost < bestAPCost) {
                bestSkill = skill;
                bestAPCost = apCost;
            }
        }
    }

    if (bestSkill == null) {
       ::logWarning("findPrimaryAttackSkill: no valid primary attack skill found for weapon: " + _weapon.getID());
    }

    return bestSkill;
}
