this.legend_enter_unfriendly_town_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_enter_unfriendly_town";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.enter_unfriendly_town";
    }
})
