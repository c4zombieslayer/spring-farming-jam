/// @param item the item to get the sprite of
///
/// @return {the sprite index of the item, the image index of the item}
///
function get_item_sprite(_item){
	switch(_item){
		//plants
		case plant.strawberry: 
			return {
				sprite_index: spr_strawberry,
				image_index: get_plant_max_stage(plant.strawberry) - 1,
			};
		case plant.blueberry:
			return {
				sprite_index: spr_blueberry,
				image_index: get_plant_max_stage(plant.blueberry) - 1,
			};
		case plant.blackberry:
			return {
				sprite_index: spr_blackberry,
				image_index: get_plant_max_stage(plant.blackberry) - 1,
			};
		case plant.watermelon:
			return {
				sprite_index: spr_watermelon,
				image_index: get_plant_max_stage(plant.watermelon) - 1,
			};
		case plant.kiwi:
			return {
				sprite_index: spr_kiwi,
				image_index: get_plant_max_stage(plant.kiwi) - 1,
			};
		case plant.grape:
			return {
				sprite_index: spr_grape,
				image_index: get_plant_max_stage(plant.grape) - 1,
			};
		case plant.apple:
			return {
				sprite_index: spr_apple,
				image_index: get_plant_max_stage(plant.apple) - 1,
			};
		case plant.plum:
			return {
				sprite_index: spr_plum,
				image_index: get_plant_max_stage(plant.plum) - 1,
			};
		case plant.mango:
			return {
				sprite_index: spr_mango,
				image_index: get_plant_max_stage(plant.mango) - 1,
			};
		case plant.cherry:
			return {
				sprite_index: spr_cherry,
				image_index: get_plant_max_stage(plant.cherry) - 1,
			};
		case plant.apricot:
			return {
				sprite_index: spr_apricot,
				image_index: get_plant_max_stage(plant.apricot) - 1,
			};
		case plant.orange:
			return {
				sprite_index: spr_orange,
				image_index: get_plant_max_stage(plant.orange) - 1,
			};
			
		// store items
		case store_slots.plot_plant:
			return {
				sprite_index: spr_plant_plot,
				image_index: 0,
			};
		case store_slots.plot_assisted:
			return {
				sprite_index: spr_plant_plot,
				image_index: 1,
			};
		case store_slots.plot_tree:
			return {
				sprite_index: spr_plant_plot,
				image_index: 2,
			};
		case store_slots.day_orb:
			return {
				sprite_index: spr_weather_orbs,
				image_index: 0,
			};
		case store_slots.night_orb:
			return {
				sprite_index: spr_weather_orbs,
				image_index: 1,
			};
		case store_slots.fertilizer:
			return {
				sprite_index: spr_fertilizer,
				image_index: 1,
			};
		case store_slots.trophy:
			return {
				sprite_index: spr_trophy,
				image_index: 0,
			};
	}
}