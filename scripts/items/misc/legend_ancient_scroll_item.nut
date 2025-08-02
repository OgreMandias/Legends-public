this.legend_ancient_scroll_item <- ::inherit("scripts/items/misc/legend_skill_book", {
	m = {
		PerkGroups = ::Const.Perks.MagicTrees.Tree,
		Cooldown = 100,
		HasToBeIdentified = true,
	},
	function create()
	{
		this.legend_skill_book.create();
		this.m.ID = "misc.legend_ancient_scroll";
		this.m.Name = "Ancient Scroll";
		this.m.Description = "A torn-up scroll with knowledge unseen for centuries. It can be translated by a character with the interpretation perk in the crafting tent. Highly valuable to some historians, although it is useless to many. They can, however, be studied with effort and a high chance of headache. Every brother may use up to 1 scroll. Being bright increases this to 2 scrolls, and being dumb decreases this to 0 scrolls.";
		this.m.Icon = "trade/scroll.png";
		this.m.SlotType = ::Const.ItemSlot.None;
		this.m.ItemType = ::Const.Items.ItemType.Usable;
		this.m.IsDroppedAsLoot = true;
		this.m.IsUsable = true;
		this.m.Value = 5000;
	}
});

