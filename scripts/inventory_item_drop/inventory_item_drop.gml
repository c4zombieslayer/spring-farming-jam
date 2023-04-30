/// @param item the item to drop
function inventory_item_drop(_item){
	switch(_item){
		case store_slots.plot_plant:
			var plotStruct = {
				plotType: plot.plant, 
			};
			obj_sound.play_item_drop();
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
		case store_slots.plot_assisted:
			var plotStruct = {
				plotType: plot.assisted, 
			};
			obj_sound.play_item_drop();
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
		case store_slots.plot_tree:
			var plotStruct = {
				plotType: plot.tree, 
			};
			obj_sound.play_item_drop();
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Instances", obj_plant_plot, plotStruct);
		break;
		case store_slots.day_orb:
			global.time = obj_time_cycle.daySwitch;
			obj_time_cycle.timeType = time_type.day;
			obj_time_cycle.setLightAlpha = 0;
			obj_sound.stop_night();
			obj_sound.play_glass_crash();
			obj_selling_truck.set_truck_state(truck_states.leave);
			obj_time_cycle.next_day();
			global.growSpd = 1;
		break;
		case store_slots.night_orb:
			global.time = obj_time_cycle.nightSwitch;
			obj_time_cycle.timeType = time_type.night;
			obj_time_cycle.setLightAlpha = 0.5;
			obj_sound.play_night();
			obj_sound.play_glass_crash();
			obj_selling_truck.set_truck_state(truck_states.stay);
			global.growSpd = 0;
		break;
		case store_slots.fertilizer:
			if(instance_exists(obj_layerer.hovering) && obj_layerer.hovering.object_index == obj_plant_plot){
				obj_layerer.hovering.grow = obj_layerer.hovering.growTime;
				obj_sound.play_bag_shake();
			}
		break;
		case plant.apple: 
		case plant.apricot:
		case plant.blueberry: 
		case plant.blackberry: 
		case plant.cherry:
		case plant.grape:
		case plant.kiwi:
		case plant.mango:
		case plant.orange:
		case plant.plum:
		case plant.strawberry:
		case plant.watermelon:
			if(instance_exists(obj_layerer.hovering) && obj_layerer.hovering.object_index == obj_selling_truck){
				obj_layerer.hovering.change_value(get_plant_sell_price(_item));
				obj_sound.play_thud();
				break;
			}
			var pickupStruct = {
				item: _item,
				sprite_index: get_plant_sprite(_item),
				image_index: get_plant_max_stage(_item) - 1,
				image_speed: 0,
			};
			obj_sound.play_item_drop();
			instance_create_layer(obj_mouse.x, obj_mouse.y, "Pickup", obj_fruit_pickup, pickupStruct);
		break;
	}
}
