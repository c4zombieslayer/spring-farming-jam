/// @param plant the plant to get the max stage number of
///
/// @return the max stage of plant
function get_plant_max_stage(_plant){
	switch(_plant){
		case plant.watermelon: return 4;
		case plant.strawberry: return 4;
		//add other plants here
		
		default: return 1;
	}
}