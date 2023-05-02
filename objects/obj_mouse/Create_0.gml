window_set_cursor(cr_none);

x = mouse_x;
y = mouse_y;

spd = 0.3;

light = instance_create_layer(x, y, layer, obj_lightup, {lightTo: 24});