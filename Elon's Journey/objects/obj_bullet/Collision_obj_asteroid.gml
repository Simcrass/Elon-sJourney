score += 1;
instance_destroy();

with(other) {
	instance_destroy();
	
	if(sprite_index == spr_asteroidBig) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y, "instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroidMedium;
		}
	} else if(sprite_index == spr_asteroidMedium) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y, "instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroidSmall;
		}
	}
}
