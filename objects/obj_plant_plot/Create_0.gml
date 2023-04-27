function set_my_plant(_plant){
	myPlant = _plant;
	
	stage = 1;
	maxStage = get_plant_max_stage(myPlant);
	sprite = get_plant_sprite(myPlant);
	grow = 0;
	growTime = get_plant_grow_time(myPlant);
}


myPlant = 0;
stage = 0;
maxStage = 0;
sprite = spr_test;
growSpd = 1;//for pause menu
grow = 0;
growTime = 0; 

set_my_plant(choose(plant.watermelon, plant.strawberry));