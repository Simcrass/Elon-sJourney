  
if(keyboard_check(ord("A"))) {
	image_angle = image_angle + 5;
	
}

if(keyboard_check(ord("D"))) {
	image_angle = image_angle - 5;
}

if(keyboard_check(ord("W"))) {
	motion_add(image_angle + 90, 0.1);
	sprite_index = spr_rocketFire;
	gravity = 0;
}

if(keyboard_check_released(ord("W"))) {
	sprite_index = spr_spaceship;
	
}

if(!keyboard_check(ord("W"))) {
	gravity = 0.05;
	
}

if (y > 900) {
	room_goto(rm_loose);
}

//move_wrap(true,true,sprite_width/2);

if(keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x,y, "instances", obj_bullet);
	inst.direction = image_angle + 90;
	
}
//y += grav;

if (place_meeting(x,y+5,obj_landing)) {
	if (image_angle < 45 && image_angle > -45) {
		room_goto(rm_win);
	} else {
		room_goto(rm_loose);
	}
}

