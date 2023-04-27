grow += growSpd;
if(grow > growTime)
	grow = growTime;

stage = floor((grow / growTime) * maxStage);
