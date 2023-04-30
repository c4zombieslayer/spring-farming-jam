/// @param item the item to check inventory amount for
///
/// @return the amount of the item contained within inventory
///
function inventory_item_amount(_item){
	for(var i = 0, len = array_length(global.inventory); i < len; i++){
		for(var j = 0, len2 = array_length(global.inventory[i]); j < len2; j++){
			var curItem = global.inventory[i][j][0];
			if(_item == curItem)
				return global.inventory[i][j][1];
		}
	}
	return 0;
}