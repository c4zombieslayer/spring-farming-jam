draw_sprite_ext(spr_inventory, 0, bgX, bgY, bgXScale, bgYScale, 0, c_white, 1);
for(var i = 0, ii = 0; i < invH; i++){
	for(var j = 0, jj = 0; j < invW; j++){
		//draw slot
		draw_sprite_ext(spr_inventory_slot, 0, slotX + jj, slotY + ii, scale, scale, 0, c_white, 1);
		
		//draw item
		draw_sprite_ext(global.inventory[i][j][2], global.inventory[i][j][3], itemX + jj, itemY + ii, scale, scale, 0, c_white, 1);
		
		//draw amount
		if(global.inventory[i][j][1] > 0)
			draw_text_transformed(numX + jj, numY + ii, global.inventory[i][j][1], scale, scale, 0);
		jj += multiplier;
	}
	ii += multiplier;
}

if(invState == inventory_states.moving)
	draw_sprite_ext(global.inventory[imx][imy][2], global.inventory[imx][imy][3], obj_mouse.x, obj_mouse.y, 1, 1, 0, c_white, 1);