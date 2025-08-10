this.legend_apprentice_learns_camp_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_apprentice_learns_camp";
        this.m.Name = ::Const.Strings.RandomCampEncounterNames;
		this.m.Event = "event.apprentice_learns";
    }
})
