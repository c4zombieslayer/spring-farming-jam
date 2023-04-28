/// @param plant the plant to place
/// @param plot the area to place the plant
///
/// @return the boolean of whether the plant can be placed into the plot
///
function plantable_in_plot(_plant, _plot){
	if(array_contains(global.plots[_plot], _plant))
		return true;
	return false;
}