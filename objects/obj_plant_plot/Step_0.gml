grow += global.growSpd;
if(grow > growTime)
	grow = growTime;

stage = floor((grow / growTime) * maxStage);

if(stage == maxStage){
	create_plant_pickup(myPlant);
	set_my_plant(0);
}

if(selected){
	if(!mstart){
		mstartX = obj_mouse.x - x;
		mstartY = obj_mouse.y - y;
		mstart = true;
	}
	
	x = obj_mouse.x - mstartX;
	y = obj_mouse.y - mstartY;
	
	if(instance_exists(light)){
		light.x = x;
		light.y = y;
	}
} else {
	mstart = false;
}

depth = -y + room_height + 400;