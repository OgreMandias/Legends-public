this.legion_origin_item_delivery_event <- this.inherit("scripts/events/event", {
	m = {},
	function create()
	{
		this.m.ID = "event.legion_origin_item_delivery"; //—
		this.m.Title = "Along the way...";
		this.m.Cooldown = 45.0 * this.World.getTime().SecondsPerDay; //cart arrives, delives 3 items chosen from an array. reoccours.
		this.m.Screens.push({
			ID = "A",
			Text = "[img]gfx/ui/events/event_55.png[/img]A creaking drone emerges in the distance. As you ready yourself and the legion for a battle, a cart makes it\'s way into your midst, driven by a single legionary hunched at the reigns. Their armour drapes their body, years of rain, snow and what else has stripped most of it away, the only remaining fragments held by the enduring posture of it's inhabitant. Arrows pock the cart, the legionary and the skeletal horse itself, none of these parties, especially the cart, seem fazed by this.\n\n without a word, the legionary dismounts, pulling a large crate from the back of the cart with an even more resounding thud. Without a word, the driver takes the helm once more back where they came as a leisurely pace.\n\n Looking at the crate, you find a piece of parchment nailed to the exterior — all traces of the origin and purpose of this shipment have faded, save for your name, which appears foreign even to you.\n Cracking open the casing, many of the weapons inside have eroded away from a lack of protection or care, except for a few items in the middle that were shielded by the unlucky many...",
			Image = "",
			List = [],
			Characters = [],
			Options = [
				{
					Text = "Strange, but welcome.",
					function getResult( _event )
					{
						return 0;
					}

				}
			],
			function start( _event )
			{
				local item;
				this.World.Assets.getStash().makeEmptySlots(3);
				r = this.Math.rand(1, 7); //can add more

				if (r == 1)
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_broad_warscythe");
					item2 = this.new("scripts/items/shields/ancient/auxiliary_shield");
					item3 = this.new("scripts/items/weapons/ancient/ancient_sword");
				}

				else if (r == 2)
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_broadhead_spear");
					item2 = this.new("scripts/items/weapons/ancient/legend_military_crypt_cleaver");
					item3 = this.new("scripts/items/weapons/ancient/falx");
				}

				else if (r == 3)
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_decorated_crypt_cleaver");
					item2 = this.new("scripts/items/weapons/ancient/legend_kopis");
					item3 = this.new("scripts/items/weapons/ancient/ancient_spear");
				}

				else if (r == 4) //fucking Amazon can't deliver shit right god damn
				{
					item1 = this.new("items/weapons/ancient/broken_bladed_pike");
					item2 = this.new("scripts/items/weapons/ancient/legend_broken_decorated_sword");
					item3 = this.new("scripts/items/weapons/ancient/legend_broken_spatha");
				}
				else if (r == 5) 
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_decorated_sword");
					item2 = this.new("scripts/items/weapons/ancient/legend_sica");
					item3 = this.new("scripts/items/shields/ancient/tower_shield");
				}
				else if (r == 6) 
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_honed_warscythe");
					item2 = this.new("scripts/items/weapons/ancient/legend_gladius");
					item3 = this.new("scripts/items/weapons/ancient/bladed_pike");
				}
				else if (r == 7) 
				{
					item1 = this.new("scripts/items/weapons/ancient/legend_oxtongue_spear");
					item2 = this.new("scripts/items/weapons/ancient/legend_spatha");
					item3 = this.new("scripts/items/weapons/ancient/legend_military_rhomphaia");
				}

				this.World.Assets.getStash().add(item1);
				this.List.push({
					id = 10,
					icon = "ui/items/" + item.getIcon(),
					text = "You gain " + this.Const.Strings.getArticle(item.getName()) + item.getName()
				});
				this.World.Assets.getStash().add(item2);
				this.List.push({
					id = 10,
					icon = "ui/items/" + item.getIcon(),
					text = "You gain " + this.Const.Strings.getArticle(item.getName()) + item.getName()
				});
				this.World.Assets.getStash().add(item3);
				this.List.push({
					id = 10,
					icon = "ui/items/" + item.getIcon(),
					text = "You gain " + this.Const.Strings.getArticle(item.getName()) + item.getName()
				});
			}
		});
	}

	function onUpdateScore()
	{
		if (this.World.Assets.getOrigin().getID() != "scenario.legend_risen_legion")
		{
			return;
		}

		this.m.Score = 5;
	}

	function onPrepare()
	{
	}

	function onPrepareVariables( _vars )
	{
	}

	function onClear()
	{
	}

});

