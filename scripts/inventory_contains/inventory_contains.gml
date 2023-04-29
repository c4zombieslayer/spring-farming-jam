/// @param item the item to check inventory for
///
/// @return boolean of whether or not the item is contained in inventory
///
function inventory_contains(_item){
	for(var i = 0, len = array_length(global.inventory); i < len; i++){
		for(var j = 0, len2 = array_length(global.inventory[i]); j < len2; j++){
			var curItem = global.inventory[i][j][0];
			if(_item == curItem)
				return true;
		}
	}
	return false;
}