/// @param plant the plant to get the max stage number of
///
/// @return the max stage of plant
///
function get_plant_max_stage(_plant){
	switch(_plant){
		case plant.strawberry: return 4;
		case plant.blueberry: return 4;
		case plant.blackberry: return 4;
		case plant.watermelon: return 4;
		case plant.kiwi: return 4;
		case plant.grape: return 4;
		case plant.apple: return 5;
		case plant.plum: return 5;
		case plant.mango: return 5;
		case plant.cherry: return 5;
		case plant.apricot: return 5;
		case plant.orange: return 5;
		//add other plants here
		
		default: return 0;
	}
}