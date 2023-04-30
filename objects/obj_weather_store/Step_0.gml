var mbDown = mouse_check_button_pressed(mb_left);

showName = false;
for(var i = 0, len = array_length(storeSlots), ii = 0; i < len; i++){
	
	var inBounds = mouse_in_bounds(x + ii, x + ii + slotSize, y, y + slotSize);
	if(hovered && inBounds && mbDown && global.coins >= storeSlots[i][1] && inventory_addable(storeSlots[i][0])){
		global.coins -= storeSlots[i][1];
		add_item_to_inv(storeSlots[i][0]);
		obj_sound.play_click();
		break;
	} else if (hovered && inBounds){
		itemHover = storeSlots[i][0];
		showName = true;
	}
	
	
	ii += slotSize;
}