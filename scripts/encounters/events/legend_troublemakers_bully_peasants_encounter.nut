this.legend_troublemakers_bully_peasants_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_troublemakers_bully_peasants";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.trouble_makers_bully_peasants";
    }
})
