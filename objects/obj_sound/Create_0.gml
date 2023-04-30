musicHigh = 0.30;
musicLow = 0.10;

function volume_activate(){
	for( var i = 0, sounds = audio_get_listener_count(); i < sounds; i++){
	    var cur = audio_get_listener_info(i);
	    audio_set_master_gain(cur[? "index"], 1);
	    ds_map_destroy(cur);
	}
}

function volume_deactivate(){
	for( var i = 0, sounds = audio_get_listener_count(); i < sounds; i++){
	    var cur = audio_get_listener_info(i);
	    audio_set_master_gain(cur[? "index"], 0);
	    ds_map_destroy(cur);
	}
}

function play_background(){
	audio_play_sound(snd_music, 1, true, musicHigh);
	audio_play_sound(snd_wind, 1, true);
}

function play_click(){
	audio_play_sound(snd_click, 1, false);
}

function play_cha_ching(){
	audio_play_sound(snd_cha_ching, 1, false, 0.25);
}

function play_coin(){
	audio_play_sound(snd_coin, 1, false);
}

function play_horn(){
	audio_play_sound(snd_horn, 1, false, 0.15);
}

function play_rustle(){
	audio_play_sound(snd_rustle, 1, false);
}

function play_pop(){
	audio_play_sound(snd_pop, 1, false, 0.3);
}

function play_thud(){
	audio_play_sound(snd_thud, 1, false);
}

function play_click_on(){
	audio_play_sound(snd_click_on, 1, false);
}

function play_item_drop(){
	audio_play_sound(snd_item_drop, 1, false);
}

function play_bag(){
	audio_play_sound(snd_bag, 1, false);
}

function play_ding(){
	audio_play_sound(snd_ding, 1, false, 0.2, 0, 3);
}

function play_night(){
	audio_sound_gain(snd_night, 1, 2000);
	audio_sound_gain(snd_music, musicLow, 2000);
	audio_play_sound(snd_night, 1, false);
}

function stop_night(){
	audio_sound_gain(snd_night, 0, 2000);
	audio_sound_gain(snd_music, musicHigh, 2000);
}

function play_bag_shake(){
	audio_play_sound(snd_bag_shake, 1, false);
}

function play_crunch(){
	audio_play_sound(snd_crunch, 1, false, 0.2);
}

function play_whoosh(){
	audio_play_sound(snd_whoosh, 1, false, 0.3);
}

function play_glass_crash(){
	audio_play_sound(snd_glass_crash, 1, false);
}

function play_brick_slide(){
	audio_play_sound(snd_brick_slide, 1, false);
}

function play_truck_driving(){
	audio_play_sound(snd_truck_driving, 1, false);
}

function play_grass_slide(){
	audio_play_sound(snd_grass_slide, 1, false);
}