var mouseInX = (mouse_x > bbox_left && mouse_x < bbox_right);
var mouseInY = (mouse_y > bbox_top && mouse_y < bbox_bottom);
var inBounds = mouseInX && mouseInY;
if(inBounds){
	if(mouse_check_button_released(mb_left))
		room_goto(rm_game);
	y = lerp(y, highlightYPos, 0.1);
} else
	y = lerp(y, yPos, 0.1);