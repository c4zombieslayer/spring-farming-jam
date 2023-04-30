global.craft_level = 0;		//quality of seeds
global.harvest_level = 0;	//amount of produce

global.plots = [
	[// type: plant
		plant.strawberry,
		plant.blueberry,
		plant.blackberry,
		plant.watermelon,
	],
	[// type: assisted
		plant.kiwi,
		plant.grape,
	],
	[// type: tree
		plant.apple,
		plant.plum,
		plant.mango,
		plant.cherry,
		plant.apricot,
		plant.orange,
	],
];

/*inventory system values
[0] = item data
[1] = item amount
[2] = sprite index
[3] = image index
*/
global.inventory = [
	[[0, 0, spr_empty, 0], [0, 0, spr_empty, 0], [0, 0, spr_empty, 0]],
	[[0, 0, spr_empty, 0], [0, 0, spr_empty, 0], [0, 0, spr_empty, 0]],
];

//at pos enum plant is the amount of seed packets
//used for obj_seed_inventory
global.seeds = [];
global.seeds[plant.strawberry] = 2;
global.seeds[plant.blueberry] = 10;
global.seeds[plant.blackberry] = 10;
global.seeds[plant.watermelon] = 10;
global.seeds[plant.kiwi] = 10;
global.seeds[plant.grape] = 10;
global.seeds[plant.apple] = 10;
global.seeds[plant.plum] = 10;
global.seeds[plant.mango] = 10;
global.seeds[plant.cherry] = 10;
global.seeds[plant.apricot] = 10;
global.seeds[plant.orange] = 10;

global.time = 0;
global.day = 0;
global.growSpd = 1;

global.coins = 100000;
