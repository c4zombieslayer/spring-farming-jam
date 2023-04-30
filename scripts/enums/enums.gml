enum plant {
	strawberry			= 1,
	blueberry			= 2,
	blackberry			= 3,
	watermelon			= 4,
	kiwi				= 5,
	grape				= 6,
	apple				= 7,
	plum				= 8,
	mango				= 9,
	cherry				= 10,
	apricot				= 11,
	orange				= 12,
} enum store_slots {
	plot_plant			= 13,
	plot_assisted		= 14,
	plot_tree			= 15,
	day_orb				= 16,
	night_orb			= 17,
	fertilizer			= 18,
	trophy				= 19,
}

enum plot {
	plant				= 0,
	assisted			= 1,
	tree				= 2,
}

enum time_type {
	day					= 1,
	sunset				= 2,
	night				= 3,
	sunrise				= 4,
}

enum place {
	none				= 0,
	plots				= 1,
	store				= 2,
	skyStore			= 3,
}

enum inventory_states {
	idle				= 0,
	moving				= 1,
}

enum truck_states {
	stay			= 0,
	leave			= 1,
}