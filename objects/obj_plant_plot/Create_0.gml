function set_my_plant(_plant){
	myPlant = _plant;
	
	stage = 1;
	maxStage = get_plant_max_stage(myPlant);
	sprite = get_plant_sprite(myPlant);
	grow = 0;
	growTime = get_plant_grow_time(myPlant);
}

function create_plant_pickup(_plant){
	var pickupStruct = {
		item: myPlant,
		sprite_index: sprite,
		image_index: maxStage - 1,
		image_speed: 0,
	};
	
	instance_create_layer(x, y, "Pickup", obj_fruit_pickup, pickupStruct);
}

myPlant = 0;
stage = 0;
maxStage = 0;
sprite = spr_test;
growSpd = 1; //for pause menu
grow = 0;
growTime = 0; 

plotType = plot.plant;

set_my_plant(0);