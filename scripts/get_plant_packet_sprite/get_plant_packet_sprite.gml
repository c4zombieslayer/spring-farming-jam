/// @param plant the plant to get the packet sprite of
///
/// @return the sprite index of plant packet
///
function get_plant_packet_sprite(_plant){
	switch(_plant){
		case plant.strawberry: return spr_strawberry_packet;
		case plant.blueberry: return spr_blueberry_packet;
		case plant.blackberry: return spr_blackberry_packet;
		case plant.watermelon: return spr_watermelon_packet;
		case plant.kiwi: return spr_kiwi_packet;
		case plant.grape: return spr_grape_packet;
		case plant.apple: return spr_apple_packet;
		case plant.plum: return spr_plum_packet;
		case plant.mango: return spr_mango_packet;
		case plant.cherry: return spr_cherry_packet;
		case plant.apricot: return spr_apricot_packet;
		case plant.orange: return spr_orange_packet;
		//add other plants here
		
		default: return spr_empty;
	}
}