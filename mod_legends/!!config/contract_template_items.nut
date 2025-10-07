/**
* For item reward based contracts.
* This contract negotiation template requires `this.Contract.m.Payment.ItemPool` being not empty.
* Monetary compensation will be converted to items defined in that list.
* It does not support both money and items at once.
*/
::Const.Contracts.NegotiationItemsOnly <- @(_flavor = ::Legends.ContractTemplate.Items.FlavorCampHuman) [{
	ID = "Negotiation",
	Title = _flavor.Title,
	Text = "",
	Image = "",
	List = [],
	ShowEmployer = true,
	ShowDifficulty = true,
	Options = [],
	function start() {
		local payment = this.Contract.m.Payment;

		if (!payment.IsSingleItem && payment.ItemPool.len() > 0) {
			while (payment.Pool > 0) {
				local item = ::Const.World.Common.pickItem(payment.ItemPool, "scripts/items/");
				payment.Items.push(item);
				payment.Pool -= item.getValue();
			}
			payment.Pool = 0;
		}

		this.Options = [];
		this.Options.push({
			Text = _flavor.AcceptButton,
			function getResult() {
				this.Contract.m.BulletpointsPayment = [];

				if (payment.Items.len() != 0) {
					this.Contract.m.BulletpointsPayment.push("Get " + payment.Items.len() + " various items on completion");
				}

				return "Overview";
			}
		});
		if (payment.IsSingleItem) {
			this.Options.push({
				Text = _flavor.SomethingElseButton,
				function getResult() {
					if (payment.Annoyance > this.Const.Contracts.Settings.NegotiationMaxAnnoyance) {
						return "Negotiation.Fail";
					}

					if (this.Math.rand(1, 100) <= this.Const.Contracts.Settings.NegotiationRefuseChance * payment.Annoyance) {
						payment.IsFinal = true;
					} else {
						payment.IsFinal = false;
						payment.IsSingleItem = false;
						payment.Items = [];
					}
					return "Negotiation";
				}
			});
		} else {
			this.Options.push({
				Text = _flavor.MoreButton,
				function getResult() {
					if (!::World.Retinue.hasFollower("follower.negotiator")) {
						if (::Math.rand(1, 100) <= 66) {
							::World.FactionManager.getFaction(this.Contract.getFaction()).addPlayerRelationEx(-0.5);
						}
					} else {
						if (::Math.rand(1, 100) <= 10) {
							::World.FactionManager.getFaction(this.Contract.getFaction()).addPlayerRelationEx(-0.5);
						}
					}

					payment.Annoyance += this.Math.maxf(1.0, this.Math.rand(this.Const.Contracts.Settings.NegotiationAnnoyanceGainMin, this.Const.Contracts.Settings.NegotiationAnnoyanceGainMax) * this.World.Assets.m.NegotiationAnnoyanceMult);

					if (payment.Annoyance > this.Const.Contracts.Settings.NegotiationMaxAnnoyance) {
						return "Negotiation.Fail";
					}

					if (this.Math.rand(1, 100) <= this.Const.Contracts.Settings.NegotiationRefuseChance * payment.Annoyance) {
						payment.IsFinal = true;
					} else {
						payment.IsFinal = false;
						payment.Pool += 200;
					}

					return "Negotiation";
				}
			});
		}

		this.Options.push({
			Text = _flavor.DeclineButton,
			function getResult() {
				this.World.Contracts.removeContract(this.Contract);
				this.World.State.getTownScreen().updateContracts();
				return 0;
			}
		});

		if (!payment.IsNegotiating) {
			this.Text = _flavor.IsNegotiatingText;
			payment.IsNegotiating = true;
		} else if (payment.IsFinal) {
			this.Text = _flavor.FinalOfferText;
		} else {
			this.Text = _flavor.GiveMoreText;
		}

		if (payment.Items.len() != 0) {
			if (payment.Items.len() == 1) {
				this.Text += _flavor.SingleOfferAppendix;
			} else {
				this.Text += _flavor.MultipleOfferAppendix;
			}
			this.List = this.Contract.getPaymentItems();
		} else {
			this.Text += _flavor.NoOfferAppendix;
		}
	}
}, {
	ID = "Negotiation.Fail",
	Title = _flavor.Title,
	Text = _flavor.DeclineText,
	Image = "",
	List = [],
	ShowEmployer = true,
	ShowDifficulty = true,
	Options = [
		{
			Text = _flavor.FailedButton,
			function getResult() {
				::World.Contracts.removeContract(this.Contract);
				return 0;
			}

		}
	]
}];
