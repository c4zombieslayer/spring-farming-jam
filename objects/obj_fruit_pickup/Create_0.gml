function clicked(){
	if(!hovered)
		return;
	var click = mouse_check_button_released(mb_left);
	//add item to inv func
	if(click){
		var added = add_item_to_inv(item, 1);
		if(added)
			instance_destroy(id);
	}
}

yPosAnim = animcurve_get_channel(ac_pickup, "y_pos");

animSpd = 1 / 120;
animTime = 0;

setY = y;

scale = 1;
hoverScale = 1.25;
hovered = true;