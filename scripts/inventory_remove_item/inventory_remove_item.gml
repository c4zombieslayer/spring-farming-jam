/// @param x the x position from inventory to remove from
/// @param y the y position from inventory to remove from
/// @param amount the amount of item to remove from inventory
///
/// @return whether or not the removal was sucessful
///
function inventory_remove_item(_x, _y, _amt){
	if(global.inventory[_x][_y][1] <= 0)//for future: add inv bounds checks to guard clause
		return false;
	
	global.inventory[_x][_y][1] -= _amt;
	if(global.inventory[_x][_y][1] <= 0){
		//set inv pos to empty
		global.inventory[_x][_y][0] = 0;
		global.inventory[_x][_y][1] = 0;
		global.inventory[_x][_y][2] = spr_empty;
		global.inventory[_x][_y][3] = 0;
	}
	return true;
}