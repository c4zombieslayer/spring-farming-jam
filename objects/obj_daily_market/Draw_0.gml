for(var i = 0, len = array_length(storeSlots), ii = 0; i < len; i++){
	draw_sprite_ext(spr_store_slot, 0, x + ii, y, 1, 1, 0, c_white, 1);
	var curSpr = get_plant_packet_sprite(storeSlots[i][0]);
	draw_sprite_ext(curSpr, 0, x + ii + itemOffset, y + itemOffset, 1, 1, 0, c_white, 1);
	draw_text(x + ii + textOff, y + textOff, storeSlots[i][1]);
	ii += slotSize;
}

if(showName){
	draw_text(obj_mouse.x, obj_mouse.y + 32, get_plant_name(itemHover) + " Seeds");
	draw_text(obj_mouse.x, obj_mouse.y + 48, "Pot Type = " + string(get_plant_grow_condition(itemHover)));
	draw_text(obj_mouse.x, obj_mouse.y + 64, "Sell Value = " + string(get_plant_sell_price(itemHover)));
}