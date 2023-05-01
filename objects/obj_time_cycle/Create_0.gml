function set_time_color(_rgba){
	cycleR = lerp(cycleR, _rgba.cycleR, cycleSpd * timeSpd);
	cycleG = lerp(cycleG, _rgba.cycleG, cycleSpd * timeSpd);
	cycleB = lerp(cycleB, _rgba.cycleB, cycleSpd * timeSpd);
	cycleAlpha = lerp(cycleAlpha, _rgba.cycleAlpha, cycleSpd * timeSpd);
}

function next_day(){
	global.day++;
	global.time = 0;
	obj_daily_market.store_update_day();
}

/*
function get_day_type(_type){
	switch(_type){
		case time_type.day: return "day";
		case time_type.sunset: return "sunset";
		case time_type.night: return "night";
		case time_type.sunrise: return "sunrise";
		default: return "none";
	}
}
*/


lightSurf = surface_create(room_width, room_height);
softLight = surface_create(room_width, room_height);
cycleSpd = 0.02;
daySwitch =		200;
sunsetSwitch =	900;
nightSwitch =	1200;
cycleSwitch =	2100;

timeSpd = 1;
timeType = time_type.day;
global.time = daySwitch;

setLightAlpha = 0;
lightAlpha = setLightAlpha;

cycleR = 255;
cycleG = 255;
cycleB = 255;
cycleAlpha = 0;

dayRGBA = {
	cycleR: 220,
	cycleG: 245,
	cycleB: 255,
	cycleAlpha: 0.2,
};

sunsetRGBA = {
	cycleR: 255,
	cycleG: 85,
	cycleB: 0,
	cycleAlpha: 0.35,
};

nightRGBA = {
	cycleR: 15,
	cycleG: 5,
	cycleB: 25,
	cycleAlpha: 0.9,
};