::Legends.addFallen <- function(_bro, _cause) {
	local fallen = {
		Name = _bro.getName(),
		Time = this.World.getTime().Days,
		TimeWithCompany = this.Math.max(1, _bro.getDaysWithCompany()),
		Kills = _bro.getLifetimeStats().Kills,
		Battles = _bro.getLifetimeStats().Battles,
		KilledBy = _cause,
		Expendable = _bro.getBackground().getID() == "background.slave"
	};

	::World.Statistics.addFallen(_bro.finalizeFallen(fallen));
}



::Legends.Obituary <- {
	getColoredKeybindText = function(_keybindId) {
		local HexString = ::Legends.Mod.ModSettings.getSetting("obituary_hotkey_text_colour").getValueAsHexString();
		return "[color=#" + HexString.slice(0, 6) + "]" + ::Legends.Mod.Keybinds.getKeybind(_keybindId).getKeyCombinationsCapitalized() + "[/color]";
	}
};
::Legends.Obituary.Tooltip <- {};

::Legends.Obituary.Tooltip["world-screen.obituary.Level"] <- [
	"Level",
	"The level the character was upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.Traits"] <- [
	"Traits",
	"The background and traits the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.PermInjuries"] <- [
	"Permanent Injuries",
	"The permanent injuries the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.Perks"] <- [
	"Perks",
	"The perks the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.HP"] <- [
	"Hitpoints",
	"The base hitpoints the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.FT"] <- [
	"Fatigue",
	"The base fatigue the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.BR"] <- [
	"Resolve",
	"The base resolve the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.IT"] <- [
	"Initiative",
	"The base initiative the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.MA"] <- [
	"Melee Skill",
	"The base melee skill the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.RA"] <- [
	"Ranged Skill",
	"The base ranged skill the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.MD"] <- [
	"Melee Defense",
	"The base melee defense the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.RD"] <- [
	"Ranged Defense",
	"The base ranged defense the character had upon meeting their fate."
];
::Legends.Obituary.Tooltip["world-screen.obituary.swapperks"] <- [
	"Show Perks",
	@() "Swap the trait/permanent injuries columns for perks.\nHotkey: " + ::Legends.Obituary.getColoredKeybindText("toggle_perks")
];
::Legends.Obituary.Tooltip["world-screen.obituary.swapstats"] <- [
	"Swap Stat Order",
	@() "Swaps the position of first 4 stats (hp, fatigue, initiative, bravery) with the last 4 (attack / defense).\nHotkey: " + ::Legends.Obituary.getColoredKeybindText("toggle_stat_order")
];
::Legends.Obituary.Tooltip["world-screen.obituary.stackedstars"] <- [
	"Stacked Talent Stars",
	@() "Replace the 3 star talent icon (row of 3) with a triangle of stars.\nHotkey: " + ::Legends.Obituary.getColoredKeybindText("stacked_talent_stars")
];
