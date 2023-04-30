animTime += animSpd;
if(animTime > 1)
	animTime = 0;

var yPos = animcurve_channel_evaluate(yPosAnim, animTime) * 4;
var rot = animcurve_channel_evaluate(rotAnim, animTime) * 4;

y = trueY + yPos;
image_angle = rot;