global.time += timeSpd;
switch(global.time){
	case daySwitch:
		timeType = time_type.day;
		break;
	case sunsetSwitch:
		timeType = time_type.sunset;
		global.growSpd = 0.25;
		setLightAlpha = 0.5;
		break;
	case nightSwitch:
		timeType = time_type.night;
		global.growSpd = 0;
		break;
	case cycleSwitch:
		timeType = time_type.sunrise;
		global.growSpd = 0.75;
		setLightAlpha = 0;
		next_day();
		break;
}

lightAlpha = lerp(lightAlpha, setLightAlpha, cycleSpd);

//set soft light to a new surface that is not a temp var
//clear every time it is drawn
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
