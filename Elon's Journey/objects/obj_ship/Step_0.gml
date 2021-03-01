 if(keyboard_check(ord("A"))) {
	image_angle = image_angle + 5;
}

if(keyboard_check(ord("D"))) {
	image_angle = image_angle - 5;
}

if(keyboard_check(ord("W"))) {
	motion_add(image_angle + 90, 0.05);
	sprite_index = spr_rocketFire;
}

if(keyboard_check_released(ord("W"))) {
	sprite_index = spr_spaceship;
}

move_wrap(true,true,sprite_width/2);

if(keyboard_check_pressed(vk_space)) {
	audio_play_sound(bullet,998,false);
	var inst = instance_create_layer(x,y, "instances", obj_bullet);
	inst.direction = image_angle + 90;
	
}