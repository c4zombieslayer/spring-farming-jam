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
	var curX = obj_mouse.x - mstartX;
	var curY = obj_mouse.y - mstartY;
	
	if(moveable){
		x = curX;
		y = curY;
	} else if(point_distance(mstartX + x, mstartY + y, curX, curY) > mdist){
		moveable = true;
		obj_sound.play_brick_slide();
		x = curX;
		y = curY;
	}
	
	if(instance_exists(light)){
		light.x = x;
		light.y = y;
	}
} else {
	mstart = false;
	moveable = false;
}

depth = -y + room_height + 400;