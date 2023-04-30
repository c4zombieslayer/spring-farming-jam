/// @param plant the plant to get the grow time of
///
/// @return the grow time of plant
///
function get_plant_grow_time(_plant){
	switch(_plant){
		case plant.strawberry:	return irandom_range(200, 300);
		case plant.blueberry:	return irandom_range(300, 400);
		case plant.blackberry:	return irandom_range(500, 600);
		case plant.watermelon:	return irandom_range(1000, 1300);
		case plant.kiwi:		return irandom_range(500, 800);
		case plant.grape:		return irandom_range(600, 700);
		case plant.apple:		return irandom_range(500, 800);
		case plant.plum:		return irandom_range(600, 800);
		case plant.mango:		return irandom_range(700, 800);
		case plant.cherry:		return irandom_range(800, 900);
		case plant.apricot:		return irandom_range(800, 1000);
		case plant.orange:		return irandom_range(800, 1100);
		//add other plants here
		
		default: return 0;
	}
}