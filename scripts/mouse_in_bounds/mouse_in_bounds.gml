/// @param leftBound the left bound of which to check for inside
/// @param rightBound the right bound of which to check for inside
/// @param topBound the top bound of which to check for inside
/// @param bottomBound the bottom bound of which to check for inside
///
/// @return boolean of whether mouse is in the bbox of object
///
function mouse_in_bounds(_left_bound, _right_bound, _top_bound, _bottom_bound){
	if(!(obj_mouse.x > _left_bound)) return false;
	if(!(obj_mouse.x < _right_bound)) return false;
	if(!(obj_mouse.y > _top_bound)) return false;
	if(!(obj_mouse.y < _bottom_bound)) return false;
	return true;
}