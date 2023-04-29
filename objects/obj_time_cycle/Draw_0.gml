if(!surface_exists(lightSurf))
	lightSurf = surface_create(room_width, room_height);


var currentCol = make_color_rgb(cycleR, cycleG, cycleB);
#region draw event --------------

var softLight = 0;
if(lightAlpha > 0){
	softLight = surface_create(room_width, room_height);
	surface_set_target(softLight);
		draw_set_alpha(1);
		draw_set_color(c_black);
		for(var i = 0, len = instance_number(obj_lightup); i < len; i++){
			var cur = instance_find(obj_lightup, i);
			draw_circle(cur.x + round(random_range(-0.6, 0.6)), cur.y + round(random_range(-0.6, 0.6)), cur.lightLevel, false);
		}
	surface_reset_target();
}

surface_set_target(lightSurf);
	draw_clear(currentCol);
	draw_set_color(currentCol);
	
	gpu_set_blendmode(bm_subtract);
	draw_set_alpha(lightAlpha);
	if(surface_exists(softLight)){
		draw_surface(softLight, 0, 0);
	}
	gpu_set_blendmode(bm_normal);
	
surface_reset_target();



draw_set_alpha(1);
draw_set_color(c_white);

//add lighting system, to be able to light up any position with intensity and softness.
//will subtract the light from the surface layer

#endregion draw event end -------

draw_surface_ext(lightSurf, 0, 0, 1, 1, 0, c_white, cycleAlpha);
if(surface_exists(softLight))
	surface_free(softLight);
//draw_text(x,y,"time = " + string(global.time) + " : day = " + string(global.day) + " : time type = " + get_day_type(timeType));
//draw_text(x,y + 16 ,"grow spd = " + string(global.growSpd))