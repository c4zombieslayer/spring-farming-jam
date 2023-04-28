animTime += animSpd;
if(animTime > 1)
	animTime = 0;

y = setY + (animcurve_channel_evaluate(yPosAnim, animTime) * 8);


if(mouse_in_bounds(bbox_left, bbox_right, bbox_top, bbox_bottom)){
	scale = lerp(scale, hoverScale, 0.1);
} else
	scale = lerp(scale, 1, 0.1);
	
image_xscale = scale;
image_yscale = scale;