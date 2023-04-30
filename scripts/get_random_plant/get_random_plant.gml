/// @param type the type of plant to get (ie: plant, assisted, tree)
///
/// @return random plant of selected type
///
function get_random_plant(_type){
	var plantsAmt = array_length(global.plots[_type]) - 1;
	return global.plots[_type][irandom_range(0, plantsAmt)];
}