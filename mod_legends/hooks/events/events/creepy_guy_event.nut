::mods_hookExactClass("events/events/creepy_guy_event", function(o) {
	local create = o.create;
	o.create = function() {
		create();
		foreach (s in this.m.Screens) {
			if (s.ID == "Good") {
				s.Text = "[img]gfx/ui/events/event_43.png[/img]You muscle your way into the crowd, looking for fingers and toes or bloodied pockets. One man\'s got a good, lumpy sag in his pocket. You drive him into a corner and shake him down with a dagger to his throat.\n\n After him, you see a woman with a sickly grin on her face prancing along the cobbled stones. That\'s a scornful wench if you\'ve ever seen one. Pulling her aside, you quickly find a finger and a toe in the linens of her frock. She lies and says they\'re just cooking ingredients. You tell her if that\'s the case then you\'ll report her to the guards for cannibalism. She gives them up.\n\n Returning the grossly extremities to the old man, you are promptly paid the five hundred crowns. He hardly even thanks you for your \'work\' before rushing away. He never did explain what, exactly, such things were for. You don\'t care. Five hundred crowns is five hundred crowns.";
			}
			if (s.ID == "Thief") {
				local start = s.start;
				s.start <- function (_event) {
					start(_event);
					this.List.push({
						id = 10,
						icon = "ui/icons/asset_moral_reputation.png",
						text = "The company\'s moral reputation increases slightly"
					});
				}
			}
			if (s.ID == "") {

			}
		}
	}
})
	
	
	if(_event.m.Shieldmaiden != null)
								{
									Options.push({
													Text = "Our shieldmaiden seems interested, how about she take the lead?"
													function getResult(_event) { return "Shieldmaiden"; }
												});

		m.Screens.push({
							ID = "Shieldmaiden"
							Text		= "[img]gfx/ui/events/event_50.png[/img]As though waiting to be called forward, %Shieldmaiden% steps before the old man and grimaces. She doesn’t try to hide the blatant disgust she has for this connoisseur of loose limbs, but nevertheless invites him forward.%SPEECH_ON%You want the fingers of a violent, dangerous person? Take mine.%SPEECH_OFF%She offers her sword hand out to the creep who\’s almost as confused as you are by the offer. After sizing her up and perhaps satisfied to the malice of the hand offered to him, he produces a rust-mottled knife and reaches for the shieldmaiden\’s outstretched hand, eyes glazed over in a disturbing, hungry trance. In an instant, %Shieldmaiden% pulls back and uses her shield to smash the outstretched arm of the old fool- a disgusting snap at the elbow and immediate wail of agony confirms your shieldmaiden struck true. Without relenting, the shield coils back for another strike, this time on the flapping jaw of the hollering creep, and one crunch later, his screams are notably muffled as he falls to the dirt. %Shieldmaiden% stands proud over the crumpled mess of a man, notices his coin purse that now furnishes the floor, and soundly grabs it. She pockets some of it, then throws the rest back to you.%SPEECH_ON%Aww, tough luck old man. You\’ll have to be quicker than that.%SPEECH_OFF%Your shock at the swift and brutal violence is quickly dispelled as you see the digit-hungry crowd start to turn to investigate the commotion. Grabbing your shieldmaiden by the shoulder, you decide it’s best if you get out of there."
							Image		= ""
							List		= [ ]
							Characters	= [ ]
							Options		= [
											{
												Text = "Well, can’t say that’s what I would have done."
												function getResult(_event)
												{ 
													return 0;
												}
											}
										  ]
							
							function start(_event)
							{
								Characters.push(_event.m.Shieldmaiden.getImagePath());

								World.Assets.addMoney(200);
								List.push( { id = 10, icon = "ui/icons/asset_money.png", text = "You gain [color=" + Const.UI.Color.PositiveEventValue + "]200[/color] Crowns" } );

								_event.m.Shieldmaiden.improveMood(1.0, "Enjoyed beating some old creep to the ground");
								local MeleeAttack = Math.rand(1, 2);
								local MeleeDefence = Math.rand(1, 2);
								local resolve = (2);

								//Intended rewards, +1/2 MATK (random), +1/2 MDEF (random), +2 Resolve (fixed)
								//200 Gold.
