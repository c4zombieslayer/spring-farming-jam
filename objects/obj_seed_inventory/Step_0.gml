showDesc = false;
for(var i = 1; i < 13 && !movePacket; i++){
	var xPos = x + i * slotSize;
	var inBounds = mouse_in_bounds(xPos, xPos + edge, y, y + edge);
	if(hovered && !obj_layerer.selected && !obj_layerer.movingInventory && inBounds && mouse_check_button(mb_left) && global.seeds[i] > 0){
		movePacket = i;
		obj_sound.play_bag();
		global.seeds[i]--;
		break;
	} else if (hovered && inBounds){
		itemHover = i;
		showDesc = true;
	}
}

if(movePacket && !mouse_check_button(mb_left)){
	var tempPacket = movePacket;
	movePacket = 0;
	
	var colPlot = obj_layerer.hovering;
	if(colPlot && colPlot.object_index == obj_plant_plot && plantable_in_plot(tempPacket, colPlot.plotType) && colPlot.myPlant == 0){
		colPlot.set_my_plant(tempPacket);
	} else
		global.seeds[tempPacket]++;
}

if(movePacket){
	obj_layerer.movingPacket = true;
} else
	obj_layerer.movingPacket = false;