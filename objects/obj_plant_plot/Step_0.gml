grow += growSpd;
if(grow > growTime)
	grow = growTime;

stage = floor((grow / growTime) * maxStage);

if(stage == maxStage){
	create_plant_pickup(myPlant);
	set_my_plant(0);
}