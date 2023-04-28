/// @param item the item to add to inventory
/// @param [amount] the amount of specified item to add to inventory
///
/// @return boolean of whether item was added to inventory or not
///
function add_item_to_inv(_item, _amount = 1){
	if(_item <= 0 || _amount <= 0)
		return false;
	var itemContained = inventory_contains(_item);
	for(var i = 0, len = array_length(global.inventory); i < len; i++){
		for(var j = 0, len2 = array_length(global.inventory[i]); j < len2; j++){
			var curItem = global.inventory[i][j][0];
			if(itemContained && _item == curItem){
				global.inventory[i][j][1] += _amount;
				return true;
			} else if(!itemContained && curItem = 0){
				global.inventory[i][j][0] = _item;
				global.inventory[i][j][1] = _amount;
				global.inventory[i][j][2] = get_plant_sprite(_item);
				global.inventory[i][j][3] = get_plant_max_stage(_item) - 1;
				return true;
			}
		}
	}
	return false;
}

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