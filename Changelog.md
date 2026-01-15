## Favoured enemy rework

Perks were condensed into a few:
Favoured Enemy - Beasts
Favoured Enemy - Occult
Favoured Enemy - Greenskin
Favoured Enemy - Undead
Favoured Enemy - Civilization
Favoured Enemy - Outlaw
Favoured Enemy - Sword Master

## New Runes

- Weapon Fire rune - sets tile on fire on hit
- Helmet Patience rune - initiative bonus, hit chance on wait
- Shield Durability rune - additional durability to shields, a chance to ignore shield damage

## Integrated mods

- Integrated Better Obituary v3, thanks to Allania

## Item Changes

### Helmets
- merged the two fencer hats
	
### Weapons

#### New Weapon Abilities

**Throwing**
- `Throw Backup Spear` - each one handed spear has 1 stack of a throwable ability
- `Throw Backup Axe` - each one handed axe has 1 stack of a throwable ability
- `Throw Backup Daggers` - each puncture dagger (daggers that don't have deathblow innately) has 8 stacks of a throwable ability
> attacks twice if you have a free offhand, 4 ap cost, 12 fatigue, 3 maximum range
> headshots will apply Distracted

**Warbrand and Rhompaias**
- `Into The Fray` - 2 tile charge and attack with `Breach`
- `Breach` - `Slash` which will deal an additional 15% damage vs enemies armed with polearms and melee weapons with range

**One Handed Straight Swords**
* Ancient sword, Arming Sword, Gladius, Short Sword, Named Sword, Noble Sword - `Mordhau` while double gripping
* `Halfsword` - puncture
> 5 ap cost and requires double grip to be usable
* `Mordhau` - batter (hammer)
> 5 ap cost, doubles your armor damage with this skill and always deals at least 10 hp

**Falchions**
- `Breach` - `Slash` which will deal an additional 15% damage vs enemies armed with polearms and melee weapons with range

**Various**
* `Haftstrike` - a weak but quick attack with the haft - added to 2h axes and 2h maces, 
> costs 4 ap and 15 fatigue, the ap cost reduces by 1 with each successful attack this turn by **other** skills 
* `Obliterate` - exceptionally strong slow hammer attack - added to 2h hammer
> 6 ap, 30 fatigue, -75% chance to hit increased to -50% with mastery and further increased to normal hitchance when striking enemies that are stunned or rooted
> staggers on hit and hitting already staggered enemies will stun them

### For modders:

- `Knifeplay` perk has been deleted

Following trees were removed, refer to `z_perks_tree_enemy.nut` for replacements:
```
::Const.Perks.GhoulTree
::Const.Perks.DirewolfTree
::Const.Perks.SpiderTree
::Const.Perks.LindwurmTree
::Const.Perks.SchratTree
::Const.Perks.HexenTree
::Const.Perks.AlpTree
::Const.Perks.SkeletonTree
::Const.Perks.ZombieTree
::Const.Perks.VampireTree
::Const.Perks.OrcsTree
::Const.Perks.OrcTree
::Const.Perks.GoblinTree
::Const.Perks.UnholdTree
::Const.Perks.CaravanTree
::Const.Perks.MercenaryTree
::Const.Perks.NoblesTree
::Const.Perks.OutlandersTree
::Const.Perks.BanditTree
::Const.Perks.BarbarianTree
::Const.Perks.ArchersTree
::Const.Perks.ArcherTree
::Const.Perks.SouthernersTree
::Const.Perks.NomadsTree
::Const.Perks.MysticTree
```