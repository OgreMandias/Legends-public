this.legend_lend_men_to_build_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_lend_men_to_build";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.lend_men_to_build";
    }
})
