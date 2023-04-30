function store_update_cost(){
	storeSlots = [
		[store_slots.day_orb, 200],
		[store_slots.night_orb, 200],
	];
}

/* Store Args
[0] = item purchasing
[1] = cost
*/
storeSlots = [
	[store_slots.day_orb, 200],
	[store_slots.night_orb, 200],
];

slotSize = sprite_get_width(spr_store_slot);
itemOffset = slotSize / 2;
hovered = true;

itemHover = "";
showName = false;

textOff = 4;