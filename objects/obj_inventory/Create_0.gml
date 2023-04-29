function inventory_item_drop(_item){
	switch(_item){
		case store_slots.plot_plant:
			var plotStruct = {
				plotType: plot.plant, 
			};
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
		case store_slots.plot_assisted:
			var plotStruct = {
				plotType: plot.assisted, 
			};
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
		case store_slots.plot_tree:
			var plotStruct = {
				plotType: plot.tree, 
			};
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
	}
}

depth = 1;

scale = 1;
padding = 32;

slotSize = sprite_get_width(spr_inventory_slot);
invState = inventory_states.idle;
imx = 0; //i (item moving x)
imy = 0; //j (item moving y)
hovered = true;

invH = 0;
invW = 0;
bgXScale = 0;
bgYScale = 0;
multiplier = 0;
bgX = 0;
bgY = 0;
slotX = 0;
slotY = 0;
edgeX = 0;
edgeY = 0;
itemX = 0;
itemY = 0;
numX = 0;
numY = 0;