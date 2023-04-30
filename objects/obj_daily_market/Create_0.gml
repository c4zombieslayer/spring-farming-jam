function store_update_day(){
	var dailyPlant = get_random_plant(plot.plant);
	var dailyAssisted = get_random_plant(plot.assisted);
	var dailyTree = get_random_plant(plot.tree);
	storeSlots = [
		[dailyPlant, get_plant_price(dailyPlant)],
		[dailyAssisted, get_plant_price(dailyAssisted)],
		[dailyTree, get_plant_price(dailyTree)],
	];
}

costMulti = 1;

/* Store Args
[0] = item purchasing
[1] = cost
*/
storeSlots = [
	[plant.apple, 25],
	[plant.grape, 50],
	[plant.apple, 100],
];

slotSize = sprite_get_width(spr_store_slot);
itemOffset = slotSize / 2;
hovered = true;

textOff = 4;
itemHover = 0;
showName = false;

store_update_day();

//testTimer = 0;