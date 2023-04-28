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
global.seeds[plant.strawberry] = 1;
global.seeds[plant.blueberry] = 2;
global.seeds[plant.blackberry] = 4;
global.seeds[plant.watermelon] = 4;
global.seeds[plant.kiwi] = 5;
global.seeds[plant.grape] = 6;
global.seeds[plant.apple] = 4;
global.seeds[plant.plum] = 3;
global.seeds[plant.mango] = 6;
global.seeds[plant.cherry] = 4;
global.seeds[plant.apricot] = 4;
global.seeds[plant.orange] = 5;

global.time = 0;
global.day = 0;
global.growSpd = 1;


