/// @param plant the plant to get the sprite of
///
/// @return the sprite index of plant
function get_plant_sprite(_plant){
	switch(_plant){
		case plant.watermelon: return spr_watermelon;
		case plant.strawberry: return spr_strawberry;
		//add other plants here
		
		default: return spr_test;
	}
}