goto_place();

camera_set_view_pos(view_camera[0], x, y);

if(keyboard_check(vk_left))
	curPlace = place.plots;

if(keyboard_check(vk_right))
	curPlace = place.store;

if(keyboard_check(vk_up))
	curPlace = place.skyStore;
