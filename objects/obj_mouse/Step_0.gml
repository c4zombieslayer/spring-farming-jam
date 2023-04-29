x = lerp(x, mouse_x, spd);
y = lerp(y, mouse_y, spd);

if(mouse_check_button(mb_left)){
	image_index = 1;
} else
	image_index = 0;
	
screenX = x - obj_camera.x;
screenY = y - obj_camera.y;