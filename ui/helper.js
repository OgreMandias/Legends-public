/*
 *  @Project:		Battle Brothers
 *	@Company:		Overhype Studios
 *
 *	@Copyright:		(c) Overhype Studios | 2013 - 2020
 * 
 *  @Author:		Overhype Studios
 *  @Date:			15.02.2017
 *  @Description:	Global Helper JS Stuff
 */


/*
	Helpers
 */
var Helper = {

	/**
	 * Formats the given number
	 */
	numberWithCommas: function(_number)
	{
		var parts = _number.toString().split(".");
		return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
	},

	getRandomInt: function(min, max) 
	{
		min = Math.ceil(min);
		max = Math.floor(max);
		return Math.floor(Math.random() * (max - min + 1)) + min;
	},

	weightedRandom: function(min, max, target, stddev) 
	{

		function normRand() {
			var x1, x2, rad;
		
			do {
				x1 = 2 * Math.random() - 1;
				x2 = 2 * Math.random() - 1;
				rad = x1 * x1 + x2 * x2;
			} while(rad >= 1 || rad == 0);
		
			var c = Math.sqrt(-2 * Math.log(rad) / rad);
		
			return x1 * c;
		}

		var range = [0, 10];
		var takeGauss = (Math.random() < 0.81546);
		if(takeGauss) {
		// perform gaussian sampling (normRand has mean 0), resample if outside range
		while(1) {
			var sample = ((normRand()*stddev) + target);
			if(sample >= min && sample <= max) 
			{
				return Math.round(sample);
			}
		}
		} else {
		// perform flat sampling
		return Math.round(min+(Math.random()*(max-min)));
		}
		//return Math.round(max / (Math.random() * max + min));
	},

	/**
     * Returns the order of helmet upgrades according to priority.push
     */
    getHelmetDrawOrder: function(_upgrades, _imagePaths) {
	if (!_upgrades) return [];

	// Vanilla helmets like Fangshire sneak in the base helmet into imagepaths, so check if there's one and add it later before everything else for upgrade drawing purposes
    var hasVanillaBase = 0;
    if (_imagePaths && _imagePaths.length)
    {
        for (var k = 0; k < _imagePaths.length; k++)
        {
            if (_imagePaths[k].indexOf("helmets/") === 0)
            {
                hasVanillaBase = 1;
                break;
            }
        }
    }
	console.error(hasVanillaBase)
	var priority = [];
	if (_upgrades[0] === 3) priority.push(2) 		// helm lower
	else if (_upgrades[0] === 1) priority.push(4) 	// helm
	if (_upgrades[1] === 3) priority.push(3) 		// top lower
	else if (_upgrades[1] === 1) priority.push(5) 	// top
	if (_upgrades[2] === 3) priority.push(0) 		// vanity1 lower
	else if (_upgrades[2] === 1) priority.push(6) 	// vanity1
	if (_upgrades[3] === 3) priority.push(1) 		// vanity2 lower
	else if (_upgrades[3] === 1) priority.push(7) 	// vanity2
	if (_upgrades[4] === 1) priority.push(8) 		// runes

	var sorted = priority.slice().sort(function (a, b) { return a - b; });
	var order = [];
	if(hasVanillaBase)
		order.push(0);
	for (var i = 0; i < priority.length; i++) { 
		order.push(sorted.indexOf(priority[i])+hasVanillaBase); 
	}
	return order;
	}
};

