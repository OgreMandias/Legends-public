this.legend_graverobber_heist_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_graverobber_heist";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.robber_heist_encounter";
    }
})
