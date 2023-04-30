/// @param plant the plant to get the grow conditions of
///
/// @return the growing conditions of the plant in string form
///
function get_plant_grow_condition(_plant){
	switch(_plant){
		case plant.strawberry: return "Medium Pot";
		case plant.blueberry: return "Medium Pot";
		case plant.blackberry: return "Medium Pot";
		case plant.watermelon: return "Medium Pot";
		case plant.kiwi: return "Assisted Pot";
		case plant.grape: return "Assisted Pot";
		case plant.apple: return "Tree Pot";
		case plant.plum: return "Tree Pot";
		case plant.mango: return "Tree Pot";
		case plant.cherry: return "Tree Pot";
		case plant.apricot: return "Tree Pot";
		case plant.orange: return "Tree Pot";
		//add other plants here
		
		default: return "";
	}
}