room_goto(rm_start_menu);
window_set_fullscreen(true);

camera = instance_create_layer(x, y, layer, obj_camera);
mouse = instance_create_layer(x, y, "Mouse", obj_mouse);
