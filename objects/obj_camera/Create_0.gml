function goto_place(){
	switch(curPlace){
		case place.none:
			x = lerp(x, none.x, 0.1);
			y = lerp(y, none.y, 0.1);
		break;
		case place.plots:
			x = lerp(x, plots.x, 0.1);
			y = lerp(y, plots.y, 0.1);
		break;
		case place.store:
			x = lerp(x, store.x, 0.1);
			y = lerp(y, store.y, 0.1);
		break;
		case place.skyStore:
			x = lerp(x, skyStore.x, 0.1);
			y = lerp(y, skyStore.y, 0.1);
		break;
	}
}

function camera_start_game(){
	curPlace = place.store;
	x = plots.x;
	y = plots.y;
}


none = {
	x: 0,
	y: 0,
}
plots = {
	x: 0,
	y: 360,
};
store = {
	x: 640,
	y: 360,
};
skyStore = {
	x: 0,
	y: 0,
};

x = 0;
y = 0;
curPlace = place.none;