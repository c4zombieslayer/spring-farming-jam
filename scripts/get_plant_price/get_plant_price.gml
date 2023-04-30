/// @param plant the plant to get the buy price of
///
/// @return the price of plant
///
function get_plant_price(_plant){
	switch(_plant){
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
		//add other plants here
		
		default: return 0;
	}
}