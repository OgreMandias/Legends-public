this.legend_juggler_entertains_townsfolk_encounter <- this.inherit("scripts/encounters/encounter_event", {
    m = {},
    function create() {
        this.m.Type = "encounter.legend_juggler_entertains_townsfolk_encounter";
        this.m.Name = "{While at %settlement... | Strolling through %settlement% | Something\'s up at %settlement}";
		this.m.Event = "event.juggler_entertains_townsfolk";
    }
})
