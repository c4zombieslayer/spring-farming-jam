goto_place();

camera_set_view_pos(view_camera[0], x, y);

if(keyboard_check_pressed(vk_left)){
	obj_sound.play_whoosh();
	curPlace = place.plots;
}
if(keyboard_check_pressed(vk_right)){
	obj_sound.play_whoosh();
	curPlace = place.store;
}
if(keyboard_check_pressed(vk_up)){
	obj_sound.play_whoosh();
	curPlace = place.skyStore;
}
if(keyboard_check_pressed(vk_down)){
	obj_sound.play_whoosh();
	curPlace = place.plots;
}
