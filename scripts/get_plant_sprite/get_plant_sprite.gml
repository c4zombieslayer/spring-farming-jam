/// @param plant the plant to get the sprite of
///
/// @return the sprite index of plant
///
function get_plant_sprite(_plant){
	switch(_plant){
		case plant.strawberry: return spr_strawberry;
		case plant.blueberry: return spr_blueberry;
		case plant.blackberry: return spr_blackberry;
		case plant.watermelon: return spr_watermelon;
		case plant.kiwi: return spr_kiwi;
		case plant.grape: return spr_grape;
		case plant.apple: return spr_apple;
		case plant.plum: return spr_plum;
		case plant.mango: return spr_mango;
		case plant.cherry: return spr_cherry;
		case plant.apricot: return spr_apricot;
		//add other plants here
		
		default: return spr_empty;
	}
}