animTime += animSpd;
if(animTime > 1)
	animTime = 0;

var yPos = animcurve_channel_evaluate(yPosAnim, animTime) * 8;
var rot = animcurve_channel_evaluate(rotAnim, animTime) * 8;

y = trueY + yPos;
image_angle = rot;