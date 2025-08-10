this.legend_strange_scribe_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_strange_scribe";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.strange_scribe";
    }
})
