/// @param plant the plant to get the name of
///
/// @return the name of the plant in string form
///
function get_plant_name(_plant){
	switch(_plant){
		case plant.strawberry: return "Strawberry";
		case plant.blueberry: return "Blueberry";
		case plant.blackberry: return "Blackberry";
		case plant.watermelon: return "Watermelon";
		case plant.kiwi: return "Kiwi";
		case plant.grape: return "Grape";
		case plant.apple: return "Apple";
		case plant.plum: return "Plum";
		case plant.mango: return "Mango";
		case plant.cherry: return "Cherry";
		case plant.apricot: return "Apricot";
		case plant.orange: return "Orange";
		//add other plants here
		
		default: return "";
	}
}