costMulti = instance_number(obj_plant_plot);
costMulti += inventory_item_amount(store_slots.plot_plant);
costMulti += inventory_item_amount(store_slots.plot_assisted);
costMulti += inventory_item_amount(store_slots.plot_tree);


store_update_cost();

var mbDown = mouse_check_button_pressed(mb_left);

showName = false;
for(var i = 0, len = array_length(storeSlots), ii = 0; i < len; i++){
	
	var inBounds = mouse_in_bounds(x + ii, x + ii + slotSize, y, y + slotSize);
	if(hovered && inBounds && mbDown && global.coins >= storeSlots[i][1] && inventory_addable(storeSlots[i][0])){
		global.coins -= storeSlots[i][1];
		add_item_to_inv(storeSlots[i][0]);
		if(storeSlots[i][0] == store_slots.trophy && !global.win){
			instance_create_layer(x, y, "GUI", obj_win);
			obj_sound.play_coin();
			global.win = true;
		}
			
		obj_sound.play_click();
		break;
	} else if (hovered && inBounds){
		itemHover = storeSlots[i][0];
		showName = true;
	}
	
	
	ii += slotSize;
}