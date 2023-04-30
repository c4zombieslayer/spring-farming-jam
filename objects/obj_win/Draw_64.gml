draw_set_alpha(image_alpha);
draw_text_transformed(64, camH / 2 - 64, "AWESOME!", 3, 3, 0);
draw_text_transformed(64, camH / 2, "You finished the game in " + string(daysToWin) + " days!", 2, 2, 0);
draw_set_alpha(1);