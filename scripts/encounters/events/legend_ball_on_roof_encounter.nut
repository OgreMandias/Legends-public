this.legend_ball_on_roof_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_ball_on_roof";
        this.m.Name = ::Const.Strings.RandomCityEncounterNames;
		this.m.Event = "event.ball_on_roof";
    }
})
