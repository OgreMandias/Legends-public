this.legends_risen_legion_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
	m = {},
	function create()
	{
		this.m.ID = "scenario.legend_risen_legion";
		this.m.Name = "Risen Legion";
		this.m.Description = "[p=c][img]gfx/ui/events/event_73.png[/img][/p]An ancient legion risen from the dead to reclaim the world.\n\n[color=#bcad8c]Dreaded:[/color] All towns will begin hostile to you.\n[color=#bcad8c]Beyond death:[/color] Every character in your party has a 66% chance to survive death\n[color=#bcad8c]Dead walking:[/color] You cannot hire in towns, but you may find recruits by patrolling near mass graves and sunken castles.\n"; //On the march: all recuits have higher aveage terrain advantages on the world map
		this.m.Difficulty = 4;
		this.m.Order = 140;
		this.m.IsFixedLook = true;
		this.m.StartingRosterTier = this.Const.Roster.getTierForSize(27);
		this.m.RosterTierMax = this.Const.Roster.getTierForSize(27);
	}

	// function onSpawnAssets()
	// {

	// 	for( local i = 0; i < partysize; i = i )
	// 	{
	// 		local broLevel = this.Math.rand(1, broLevelMax);
	// 		local broPerks = broLevel - 1;
	// 		local bro;
	// 		bro = roster.create("scripts/entity/tactical/player");
	// 		bro.m.HireTime = this.Time.getVirtualTimeF();
	// 		bro.m.Level = broLevel;
	// 		bro.m.LevelUps = broPerks;
	// 		bro.m.PerkPoints = broPerks;
	// 		bro.setVeteranPerks(3);
	// 		local items = bro.getItems();
	// 		local r = this.Math.rand(1, 8);

	// 		if (r <= 3)
	// 		{
	// 			bro.setStartValuesEx([
	// 				"militia_background"
	// 			]);
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
	// 			items.equip(this.Const.World.Common.pickHelmet([
	// 				[1, ::Legends.Helmet.Ancient.legend_ancient_legionary_helmet_restored],
	// 				[1, ::Legends.Helmet.Ancient.ancient_legionary_helmet]
	// 			]));
	// 			items.equip(this.new("scripts/items/weapons/ancient/ancient_spear"));
	// 			items.equip(this.new("scripts/items/shields/ancient/tower_shield"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 		}

	// 		if (r == 4)
	// 		{
	// 			bro.setStartValuesEx(this.Const.CharacterBackgroundsAnimated);
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
	// 			items.equip(this.Const.World.Common.pickHelmet([
	// 				[1, ::Legends.Helmet.Ancient.legend_ancient_legionary_helmet_restored],
	// 				[1, ::Legends.Helmet.Ancient.ancient_legionary_helmet]
	// 			]));
	// 			items.equip(this.new("scripts/items/weapons/ancient/ancient_spear"));
	// 			items.equip(this.new("scripts/items/shields/ancient/tower_shield"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 		}

	// 		if (r == 5)
	// 		{
	// 			bro.setStartValuesEx([
	// 				"beast_hunter_background"
	// 			]);
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
	// 			items.equip(this.Const.World.Common.pickHelmet([[1, ::Legends.Helmet.Ancient.ancient_gladiator_helmet]]));
	// 			items.equip(this.new("scripts/items/weapons/ancient/legend_gladius"));
	// 			items.equip(this.new("scripts/items/tools/throwing_net"));
	// 			items.addToBag(this.new("scripts/items/tools/throwing_net"));
	// 			items.addToBag(this.new("scripts/items/tools/throwing_net"));
	// 		}

	// 		if (r == 6)
	// 		{
	// 			bro.setStartValuesEx([
	// 				"swordmaster_background"
	// 			]);
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
	// 			items.equip(this.Const.World.Common.pickHelmet([[1, ::Legends.Helmet.Ancient.ancient_honorguard_helmet]]));
	// 			items.equip(this.new("scripts/items/weapons/ancient/rhomphaia"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 		}

	// 		if (r >= 7)
	// 		{
	// 			bro.setStartValuesEx([
	// 				"retired_soldier_background"
	// 			]);
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
	// 			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Ammo));
	// 			items.equip(this.Const.World.Common.pickHelmet([[1, ::Legends.Helmet.Ancient.ancient_household_helmet]]));
	// 			items.equip(this.new("scripts/items/weapons/ancient/bladed_pike"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 			items.addToBag(this.new("scripts/items/weapons/javelin"));
	// 		}


	o.onSpawnAssets = function ()
	{
		local roster = this.World.getPlayerRoster();
		local names = [];

		for( local i = 0; i < 8; i = ++i )
		{
			local bro;
			bro = roster.create("scripts/entity/tactical/player");
			::Legends.Traits.grant(bro, ::Legends.Trait.LegendFleshless); //IMPORTANT
			bro.setVeteranPerks(3);
			///---
			bro.getSprite("socket").setBrush("bust_base_undead"); //change
			///---
			bro.m.HireTime = this.Time.getVirtualTimeF();

			while (names.find(bro.getNameOnly()) != null)
			{
				bro.setName(this.Const.Strings.CharacterNames[this.Math.rand(0, this.Const.Strings.CharacterNames.len() - 1)]);
			}

			names.push(bro.getNameOnly());
		}

		local bros = roster.getAll(); //this will please the romeaboos

		bros[0].setStartValuesEx([
			"legend_legion_slave_background"
		]);
		local items = bros[0].getItems();
		items.addToBag(this.new("scripts/items/weapons/javelin"));




		bros[1].setStartValuesEx(this.Const.CharacterVillageBackgrounds);
		bros[1].getBackground().m.RawDescription = "%name% owned a farmstead that has long since gone underfoot of countless passing armies, including the very ones they\'ve fought for. Their \'allegiance\' to you is arguably the result of an empty belly more than anything.";
		bros[1].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[1].worsenMood(0.5, "Was involved in a brawl");
		bros[1].addLightInjury();
		::Legends.Traits.grant(bros[1], ::Legends.Trait.LegendHateNobles);
		local items = bros[1].getItems();
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
		items.equip(this.new("scripts/items/weapons/warfork"));

		bros[2].setStartValuesEx([
			"poacher_background"
		]);
		bros[2].getBackground().m.RawDescription = "It is a common joke that %name% is in fact a noble hiding away from the world, but to the best of your knowledge they were a simple poacher. The grind of the world got them to where they are today, not much else need be said other than you hope they gets back on their feet.";
		bros[2].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[2].worsenMood(0.5, "Was involved in a brawl");
		bros[2].addLightInjury();
		::Legends.Traits.grant(bros[2], ::Legends.Trait.LegendHateNobles);
		local items = bros[2].getItems();
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
		items.equip(this.new("scripts/items/weapons/legend_sling"));

		bros[3].setStartValuesEx([
			"vagabond_background",
			"thief_background",
			"gambler_background"
		]);
		bros[3].getBackground().m.RawDescription = "You notice that %name% hides from certain noblemen. It is likely that they are a common criminal at large for some petty crime, but so long as they fight well it is no business to you.";
		bros[3].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[3].improveMood(1.5, "Stole someone\'s scramasax");
		::Legends.Traits.grant(bros[3], ::Legends.Trait.LegendHateNobles);
		items = bros[3].getItems();
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
		items.equip(this.new("scripts/items/weapons/scramasax"));

		bros[4].setStartValuesEx([
			"daytaler_background",
			"vagabond_background",
			"legend_leech_peddler_background"
		]);
		bros[4].getBackground().m.RawDescription = "A daytaler and common laborer, %name% would rather join your outfit than go back to wasting their body building some nobleman\'s new fancy foyer.";
		bros[4].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[4].worsenMood(0.5, "Was involved in a brawl");
		bros[4].addLightInjury();
		::Legends.Traits.grant(bros[4], ::Legends.Trait.LegendHateNobles);

		bros[5].setStartValuesEx(this.Const.CharacterVillageBackgrounds);
		bros[5].getBackground().m.RawDescription = "Seeking riches, %name% has come to the right place in your newfound mercenary band. Unfortunately, their background is in farming, milling, and laying stone, particularly none of which they were any good at.";
		bros[5].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[5].improveMood(1.0, "Looks forward to becoming rich as a sellsword");
		::Legends.Traits.grant(bros[5], ::Legends.Trait.LegendHateNobles);
		local items = bros[5].getItems();
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
		items.equip(this.new("scripts/items/weapons/pitchfork"));

		bros[6].setStartValuesEx([
			"fisherman_background"
		]);
		bros[6].getBackground().m.RawDescription = "%name% states they were a sailor prior to coming inland and falling in with the militia and now your mercenary band. They hope to eventually own a boat and put its sails to the open ocean. You hope they can do that someday, truly.";
		bros[6].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[6].worsenMood(0.25, "Feels somewhat sickly of late");
		::Legends.Traits.grant(bros[6], ::Legends.Trait.LegendHateNobles);

		bros[7].setStartValuesEx([
			"militia_background"
		]);
		bros[7].getBackground().m.RawDescription = "%name% has apparently been in many militias, all of which eventually dissolved for one reason or another. At no point have they made any money in any of them, so they hope to changes that with this whole new sellswording schtick.";
		bros[7].getSprite("accessory_special").setBrush("bust_militia_band_01");
		bros[7].improveMood(3.0, "Has recently become a parent");
		bros[7].m.PerkPoints = 0;
		bros[7].m.LevelUps = 0;
		bros[7].m.Level = 1;
		::Legends.Traits.grant(bros[7], ::Legends.Trait.LegendHateNobles);

		this.World.Assets.addBusinessReputation(this.m.StartingBusinessReputation);
		this.World.Assets.getStash().add(this.new("scripts/items/supplies/wine_item"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_train"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_repair"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_scout"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_heal"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_scrap"));
		this.World.Assets.getStash().add(this.new("scripts/items/tents/legend_tent_fletcher"));
		this.World.Assets.getStash().resize(this.World.Assets.getStash().getCapacity() + 9);

	}

	function onSpawnPlayer()
	{
		local spawnTile;
		local settlements = this.World.EntityManager.getSettlements();
		local nearestVillage;
		local navSettings = this.World.getNavigator().createSettings();
		navSettings.ActionPointCosts = this.Const.World.TerrainTypeNavCost_Flat;

		do
		{
			local x = this.Math.rand(5, this.Const.World.Settings.SizeX - 5);
			local y = this.Math.rand(5, this.Const.World.Settings.SizeY - 5);

			if (!this.World.isValidTileSquare(x, y))
			{
			}
			else
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.IsOccupied)
				{
				}		//&& tile.Type != this.Const.World.TerrainType.Steppe
				else if (tile.Type != this.Const.World.TerrainType.Desert)
				{
				}
				else
				{
					local next = true;

					foreach( s in settlements )
					{
						local d = s.getTile().getDistanceTo(tile);

						if (d > 6 && d < 15)
						{
							local path = this.World.getNavigator().findPath(tile, s.getTile(), navSettings, 0);

							if (!path.isEmpty())
							{
								next = false;
								nearestVillage = s;
								break;
							}
						}
					}

					if (next)
					{
					}
					else
					{
						spawnTile = tile;
						break;
					}
				}
			}
		}
		while (1);

		local attachedLocations = randomVillage.getAttachedLocations();
		local closest;
		local dist = 99999;

		foreach( a in attachedLocations )
		{
			if (a.getTile().getDistanceTo(randomVillageTile) < dist)
			{
				dist = a.getTile().getDistanceTo(randomVillageTile);
				closest = a;
			}
		}

		if (closest != null)
		{
			closest.setActive(false);
			closest.spawnFireAndSmoke();
		}

		local nobles = this.World.FactionManager.getFactionsOfType(this.Const.FactionType.NobleHouse);

		foreach( n in nobles )
		{
			n.addPlayerRelation(-400.0, "You are the undead, to be despised");
		}

		local oriental = this.World.FactionManager.getFactionsOfType(this.Const.FactionType.OrientalCityState);

		foreach( n in oriental )
		{
			n.addPlayerRelation(-400.0, "You are the undead, to be despised");
		}

		local skellies = this.World.FactionManager.getFactionsOfType(this.Const.FactionType.Undead);

		foreach( n in skellies )
		{
			n.addPlayerRelation(400.0, "For the empire!");
		}

		this.m.StaticRelationsToFaction[this.Const.FactionType.NobleHouse] = true;
		this.m.StaticRelationsToFaction[this.Const.FactionType.OrientalCityState] = true;
		this.m.StaticRelationsToFaction[this.Const.FactionType.Undead] = true;
		this.World.State.m.Player = this.World.spawnEntity("scripts/entity/world/player_party", randomVillageTile.Coords.X, randomVillageTile.Coords.Y);
		this.World.Assets.updateLook(112);
		this.World.getCamera().setPos(this.World.State.m.Player.getPos());
		this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function ( _tag )
		{
			this.Music.setTrackList([
				"music/undead_01.ogg"
			], this.Const.Music.CrossFadeTime);
			this.World.Events.fire("event.legend_risen_legion_intro");
		}, null);
		this.World.Flags.set("HasLegendCampGathering", true);
		this.World.Flags.set("HasLegendCampCrafting", true);
		this.World.Flags.set("HasLegendCampFletching", true);
		this.World.Flags.set("HasLegendCampHealing", true);
		this.World.Flags.set("HasLegendCampHunting", true);
		this.World.Flags.set("HasLegendCampScouting", true);
		this.World.Flags.set("HasLegendCampScraping", true);
		this.World.Flags.set("HasLegendCampTraining", true);
	}

	function onUpdateHiringRoster( _roster )
	{
		local garbage = [];
		local bros = _roster.getAll();

		foreach( i, bro in bros )
		{
			if (bro.isStabled())
			{
				continue;
			}

			if (!bro.isStabled())
			{
				garbage.push(bro);
			}
		}

		foreach( g in garbage )
		{
			_roster.remove(g);
		}
	}

	function onHiredByScenario( bro )
	{
		// bro.getSkills().add(this.new("scripts/skills/traits/legend_deathly_spectre_trait"));
		if (!bro.getSkills().hasTrait(::Legends.Trait.RacialSkeleton) && bro.getFlags().has("skeleton"))
		{
			::Legends.Traits.grant(bro, ::Legends.Trait.RacialSkeleton);
			::Legends.Traits.grant(bro, ::Legends.Trait.LegendFleshless);
		}

		local r = this.Math.rand(0, 2);

		if (bro.getBackground().isBackgroundType(this.Const.BackgroundType.Outlaw))
		{
			bro.improveMood(0.5, "Finds perverse joy in your actions");

			if (r == 0)
			{
				::Legends.Traits.grant(bro, ::Legends.Trait.Paranoid);
			}
		}
		else if (bro.getBackground().isBackgroundType(this.Const.BackgroundType.Crusader))
		{
			bro.worsenMood(1.5, "Is deeply disturbed by you");

			if (r == 0)
			{
				::Legends.Traits.grant(bro, ::Legends.Trait.Superstitious);
			}

			if (r == 1)
			{
				::Legends.Traits.grant(bro, ::Legends.Trait.Paranoid);
			}
		}
	}

	function onInit()
	{
		this.starting_scenario.onInit();
	}

});

