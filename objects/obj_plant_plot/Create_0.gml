function set_my_plant(_plant){
	myPlant = _plant;
	
	stage = 1;
	maxStage = get_plant_max_stage(myPlant);
	sprite = get_plant_sprite(myPlant);
	grow = 0;
	growTime = get_plant_grow_time(myPlant);
	if(myPlant != 0 && !instance_exists(light)){
		light = instance_create_depth(x, y, layer_get_depth(layer), obj_lightup);
		obj_sound.play_rustle();
	} else if (myPlant == 0 && instance_exists(light)){
		instance_destroy(light);
		light = noone;
	}
		
}

function create_plant_pickup(_plant){
	var pickupStruct = {
		item: myPlant,
		sprite_index: sprite,
		image_index: maxStage - 1,
		image_speed: 0,
	};
	obj_sound.play_crunch();
	instance_create_layer(x, y, "Pickup", obj_fruit_pickup, pickupStruct);
}

myPlant = 0;
stage = 0;
maxStage = 0;
sprite = spr_test;
grow = 0;
growTime = 0;
selected = false;

moveable = false;
mdist = 32;
mstart = false;
mstartX = 0;
mstartY = 0;

light = noone;
set_my_plant(0);

