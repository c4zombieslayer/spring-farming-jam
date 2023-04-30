function truck_state_event(){
	switch(state){
		case truck_states.stay:
			x = lerp(x, stayX, 0.1);
		break;
		case truck_states.leave:
			x = lerp(x, -128, 0.1);
			if( value > 0 && x < -127){
				global.coins += value;
				change_value(-value);
				obj_sound.play_cha_ching();
			}
		break;
	}
}

function set_truck_state(_state){
	state = _state;
	switch(_state){
		case truck_states.stay:
			obj_sound.play_horn();
			x = room_width;
		break;
		case truck_states.leave:
			obj_sound.play_truck_driving();
			x = stayX;
		break;
	}
}

function change_value(_amt){
	value += _amt;
	
	if(value > 1000)
		image_index = 5;
	else if(value > 700)
		image_index = 4;
	else if(value > 500)
		image_index = 3;
	else if(value > 300)
		image_index = 2;
	else if(value > 100)
		image_index = 1;
	else
		image_index = 0;
}

stayX = x;
x = -128;
state = truck_states.leave;
value = 0;

light = instance_create_layer(x, y, layer, obj_lightup, {lightTo: 128});