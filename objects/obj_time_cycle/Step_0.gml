global.time += timeSpd;
switch(global.time){
	case daySwitch:
		timeType = time_type.day;
		setLightAlpha = 0;
		global.growSpd = 1;
		break;
	case sunsetSwitch:
		timeType = time_type.sunset;
		global.growSpd = 0.25;
		setLightAlpha = 0.5;
		break;
	case nightSwitch:
		timeType = time_type.night;
		setLightAlpha = 0.5;
		obj_sound.play_night();
		obj_selling_truck.set_truck_state(truck_states.stay);
		global.growSpd = 0;
		break;
	case cycleSwitch:
		timeType = time_type.sunrise;
		global.growSpd = 0.75;
		obj_selling_truck.set_truck_state(truck_states.leave);
		setLightAlpha = 0;
		obj_sound.stop_night();
		next_day();
		break;
}

lightAlpha = lerp(lightAlpha, setLightAlpha, cycleSpd);


switch(timeType){
	case time_type.day:
		set_time_color(dayRGBA);
		break;
	case time_type.sunset: case time_type.sunrise:
		set_time_color(sunsetRGBA);
		break;
	case time_type.night:
		set_time_color(nightRGBA);
		break;	
}
