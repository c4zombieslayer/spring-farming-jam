function store_update_cost(){
	storeSlots = [
		[store_slots.plot_plant, 25 * costMulti],
		[store_slots.plot_assisted, 50 * costMulti],
		[store_slots.plot_tree, 100 * costMulti],
	];
}
costMulti = 1;

/* Store Args
[0] = item purchasing
[1] = cost
*/
storeSlots = [
	[store_slots.plot_plant, 25 * costMulti],
	[store_slots.plot_assisted, 50 * costMulti],
	[store_slots.plot_tree, 100 * costMulti],
];

slotSize = sprite_get_width(spr_store_slot);
itemOffset = slotSize / 2;
hovered = true;

textOff = 4;