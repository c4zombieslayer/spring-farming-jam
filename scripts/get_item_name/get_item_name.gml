/// @param item the item to get the name of
///
/// @return the name of the item in string form
///
function get_item_name(_item){
	switch(_item){
		case store_slots.plot_plant: return "Medium Pot";
		case store_slots.plot_assisted: return "Assisted Pot";
		case store_slots.plot_tree: return "Tree Pot";
		case store_slots.day_orb: return "Day Orb";
		case store_slots.night_orb: return "Night Orb";
		case store_slots.fertilizer: return "Fertilizer";
		case store_slots.trophy: return "Trophy Of Congratulations";
		//add other items here
		
		default: return "";
	}
}