costMulti = instance_number(obj_plant_plot);

store_update_cost();

var mbDown = mouse_check_button_pressed(mb_left);

for(var i = 0, len = array_length(storeSlots), ii = 0; i < len; i++){
	
	var inBounds = mouse_in_bounds(x + ii, x + ii + slotSize, y, y + slotSize);
	if(hovered && inBounds && mbDown && global.coins >= storeSlots[i][1] && inventory_addable(storeSlots[i][1])){
		global.coins -= storeSlots[i][1];
		add_item_to_inv(storeSlots[i][0]);
		break;
	} else if (hovered && inBounds){
		//itemName = get_store_item(storeSlots[i][0]);
		//showName = true;
	}
	
	
	ii += slotSize;
}