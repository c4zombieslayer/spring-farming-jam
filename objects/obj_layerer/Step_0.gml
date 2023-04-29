ds_list_clear(layerList);

with(obj_hoverable)
	ds_list_add(other.layerList, id);

var foundHover = false;
for(var i = 0, len = ds_list_size(layerList); i < len; i++){
	var cur = ds_list_find_value(layerList, i);
	if(hovering == noone && mouse_in_bounds(cur.bbox_left, cur.bbox_right, cur.bbox_top, cur.bbox_bottom)){
		hovering = cur;
		foundHover = true;
	}
	if(instance_exists(hovering) && 
	cur.y > hovering.y && 
	mouse_in_bounds(cur.bbox_left, cur.bbox_right, cur.bbox_top, cur.bbox_bottom)){
		hovering = cur;
		foundHover = true;
	}
}

if(!foundHover)
	hovering = noone;

var mbDown = mouse_check_button(mb_left);
if(selected == noone && mbDown && foundHover){
	selected = hovering;
} else if(!mbDown){
	selected = noone;
}
if(!movingPacket && !movingInventory){
	for(var i = 0, len = instance_number(obj_hoverable); i < len; i++){
		var cur = instance_find(obj_hoverable, i);
		if(cur != selected){
			cur.selected = false;
		} else {
			cur.selected = true;
		}
	}
}



//get all objects with smaller y than obj_mouse.y
//keep track of lowest
//set all objects hoverable to false
//set tracked lowest hoverable to true