if(keyboard_check(vk_up)) scale += 0.01;
if(keyboard_check(vk_down)) scale -= 0.01;

invH = array_length(global.inventory);
invW = array_length(global.inventory[0]);
bgXScale = (invW + (padding / slotSize)) * scale;
bgYScale = (invH + (padding / slotSize)) * scale;
multiplier = slotSize * scale;
bgX = x  - (bgXScale * slotSize / 2);
bgY = y  - (bgYScale * slotSize / 2);
slotX = x - (invW * scale * slotSize / 2);
slotY = y - (invH * scale * slotSize / 2);
itemX = slotX + (slotSize * scale / 2);
itemY = slotY + (slotSize * scale / 2);
numX = slotX + (4 * scale);
numY = slotY + (4 * scale);