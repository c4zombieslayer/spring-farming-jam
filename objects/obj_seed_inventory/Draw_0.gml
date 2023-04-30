for(var i = 1; i < 13; i++){
	var xPos = x + i * slotSize;
	var packetXPos = xPos + (slotSize / 2);
	var packetYPos = y + (slotSize / 2);
	var packetAlpha = (global.seeds[i] > 0) ? 1 : 0.25;
	
	//draw slot
	draw_sprite_ext(spr_seed_slot, 0, xPos, y, 0.5, 0.5, 0, c_white, 1);
	
	//draw packet
	
	draw_sprite_ext(get_plant_packet_sprite(i), 0, packetXPos, packetYPos, 0.5, 0.5, 0, c_white, packetAlpha);
	
	//draw amount
	if(global.seeds[i] > 0)
		draw_text(xPos, y, global.seeds[i]);
	
}

if(movePacket){
	draw_sprite_ext(get_plant_packet_sprite(movePacket), 0, obj_mouse.x, obj_mouse.y, 1, 1, 0, c_white, 1);
} else if(showDesc){
	draw_text(obj_mouse.x, obj_mouse.y - 64, get_plant_name(itemHover) + " Seeds");
	draw_text(obj_mouse.x, obj_mouse.y - 48, "Pot Type = " + string(get_plant_grow_condition(itemHover)));
	draw_text(obj_mouse.x, obj_mouse.y - 32, "Sell Value = " + string(get_plant_sell_price(itemHover)));
}