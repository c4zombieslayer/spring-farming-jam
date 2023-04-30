/// @param item the item to check if whether or not it can be added to inventory
///
/// @return boolean of whether item can be added to inventory or not
///
function inventory_addable(_item){
	if(_item <= 0)
		return false;
	
	if(inventory_contains(_item))
		return true;
	for(var i = 0, len = array_length(global.inventory); i < len; i++){
		for(var j = 0, len2 = array_length(global.inventory[i]); j < len2; j++){
			var curItem = global.inventory[i][j][0];
			if(curItem == 0)
				return true;
		}
	}
	return false;
}

