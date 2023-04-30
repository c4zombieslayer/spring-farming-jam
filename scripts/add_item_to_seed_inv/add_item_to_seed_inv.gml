/// @param seed the seed to add to seed inventory
/// @param [amount] the amount of specified seed to add to seed inventory
///
/// @return boolean of whether the seed was added to inventory or not
///
function add_item_to_seed_inv(_seed, _amount = 1){
	if(_seed <= 0 || _amount <= 0)
		return false;
	global.seeds[_seed] += _amount;
	return true;
}

