//if(keyboard_check(vk_up)) scale += 0.01;
//if(keyboard_check(vk_down)) scale -= 0.01;

invH = array_length(global.inventory);
invW = array_length(global.inventory[0]);
bgXScale = (invW + (padding / slotSize)) * scale;
bgYScale = (invH + (padding / slotSize)) * scale;
multiplier = slotSize * scale;
bgX = x  - (bgXScale * slotSize / 2);
bgY = y  - (bgYScale * slotSize / 2);
slotX = x - (invW * scale * slotSize / 2);
slotY = y - (invH * scale * slotSize / 2);
edgeX = (slotSize * scale);
edgeY = (slotSize * scale);
itemX = slotX + (slotSize * scale / 2);
itemY = slotY + (slotSize * scale / 2);
numX = slotX + (4 * scale);
numY = slotY + (4 * scale);

var inBackBounds = mouse_in_bounds(bgX, bgX + (slotSize * bgXScale), bgY, bgY + (slotSize * bgYScale));
if(invState == inventory_states.moving && !mouse_check_button(mb_left) && !inBackBounds){
	inventory_item_drop(global.inventory[imx][imy][0]);
	inventory_remove_item(imx, imy, 1);
	invState = inventory_states.idle;
	obj_layerer.movingInventory = false;
	imx = 0;
	imy = 0;
} else if(invState == inventory_states.moving && !mouse_check_button(mb_left)){
	invState = inventory_states.idle;
	obj_layerer.movingInventory = false;
	imx = 0;
	imy = 0;
}

for(var i = 0, ii = 0; i < invH; i++){
	for(var j = 0, jj = 0; j < invW; j++){
		//draw slot
		var inBounds = mouse_in_bounds(slotX + jj, slotX + jj + edgeX, slotY + ii, slotY + ii + edgeY);
		if(hovered && 
		!obj_layerer.movingPacket && 
		!obj_layerer.selected &&
		invState == inventory_states.idle && 
		inBounds && 
		mouse_check_button(mb_left) && 
		global.inventory[i][j][0] != 0){
			obj_sound.play_click_on();
			invState = inventory_states.moving;
			obj_layerer.movingInventory = true;  
			imx = i;
			imy = j;
			break;
		}
		
		jj += multiplier;
	}
	ii += multiplier;
}