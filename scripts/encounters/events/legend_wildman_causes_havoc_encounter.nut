this.legend_wildman_causes_havoc_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_wildman_causes_havoc";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.wildman_causes_havoc";
    }
})
