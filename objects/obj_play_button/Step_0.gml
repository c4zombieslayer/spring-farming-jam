
if(mouse_in_bounds(bbox_left, bbox_right, bbox_top, bbox_bottom)){
	if(mouse_check_button_released(mb_left))
		room_goto(rm_game);
	y = lerp(y, highlightYPos, 0.1);
} else
	y = lerp(y, yPos, 0.1);