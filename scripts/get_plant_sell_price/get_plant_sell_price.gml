/// @param plant the plant to get the sell price of
///
/// @return the sell price of plant
///
function get_plant_sell_price(_plant){
	switch(_plant){									// profit calculations
		case plant.strawberry:	return 80;	// 40	-> 40
		case plant.blueberry:	return 100;	// 55	-> 45
		case plant.blackberry:	return 120;	// 65	-> 55
		case plant.watermelon:	return 720;	// 500	-> 220
		case plant.kiwi:		return 220;	// 150	-> 70
		case plant.grape:		return 255; // 175	-> 80
		case plant.apple:		return 240;	// 150	-> 90
		case plant.plum:		return 320;	// 200	-> 120
		case plant.mango:		return 340;	// 225	-> 125
		case plant.cherry:		return 460;	// 300	-> 160
		case plant.apricot:		return 495;	// 325	-> 170
		case plant.orange:		return 600;	// 400	-> 200
		//add other plants here
		
		default: return 0;
	}
}
/*
		case plant.strawberry: return irandom_range(30, 50);
		case plant.blueberry: return irandom_range(40, 70);
		case plant.blackberry: return irandom_range(50, 80);
		case plant.watermelon: return irandom_range(400, 600);
		case plant.kiwi: return irandom_range(100, 200);
		case plant.grape: return irandom_range(100, 250);
		case plant.apple: return irandom_range(50, 250);
		case plant.plum: return irandom_range(100, 300);
		case plant.mango: return irandom_range(100, 350);
		case plant.cherry: return irandom_range(200, 400);
		case plant.apricot: return irandom_range(200, 450);
		case plant.orange: return irandom_range(300, 500);
*/