if(mouse_in_bounds(bbox_left, bbox_right, bbox_top, bbox_bottom)){
	if(mouse_check_button_released(mb_left)){
		
		obj_sound.play_whoosh();
		obj_camera.curPlace = place.plots;
	}
		
	y = lerp(y, highlightYPos, 0.1);
} else
	y = lerp(y, yPos, 0.1);