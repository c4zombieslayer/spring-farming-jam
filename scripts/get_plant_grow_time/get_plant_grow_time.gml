/// @param plant the plant to get the grow time of
///
/// @return the grow time of plant
function get_plant_grow_time(_plant){
	switch(_plant){
		case plant.watermelon: return irandom_range(100, 500);
		case plant.strawberry: return irandom_range(300,600);
		//add other plants here
		
		default: return 1;
	}
}