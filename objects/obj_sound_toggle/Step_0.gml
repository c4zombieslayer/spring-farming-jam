if(mouse_in_bounds(bbox_left, bbox_right, bbox_top, bbox_bottom)){
	if(mouse_check_button_released(mb_left)){
		toggled = !toggled;
		
		if(toggled){
			obj_sound.volume_activate();
			image_index = 0;
		} else {
			obj_sound.volume_deactivate();
			image_index = 1;
		}
		
	}
		
	y = lerp(y, highlightYPos, 0.1);
} else
	y = lerp(y, yPos, 0.1);