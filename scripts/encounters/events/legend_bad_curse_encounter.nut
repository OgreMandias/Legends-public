this.legend_bad_curse_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_bad_curse";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.bad_curse";
    }
})
