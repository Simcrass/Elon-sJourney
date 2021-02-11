/// @description Movements and what not
move_wrap(true,true,sprite_width/12);
key_d = keyboard_check(ord ("D"));
key_a = keyboard_check(ord ("A"));
key_jump = keyboard_check_pressed(vk_space);

var _move = key_d - key_a;

hsp = _move * walksp;

vsp = vsp + grv;



//jumping mechanics

if (place_meeting(x,y+1,obj_grass)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
}

if (place_meeting(x,y+1,obj_tree)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
}

if (place_meeting(x,y+1,obj_cloudSmall)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
}

if (place_meeting(x,y+1,obj_cloudMedium)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
}

if (place_meeting(x,y+1,obj_cloudBig)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
}

//vertical mechanics

if (place_meeting(x+hsp,y,obj_tree)) {
	
	while (!place_meeting(x+sign(hsp),y,obj_tree)) {
		x = x + sign(hsp);
	}
	hsp = 0;
	
}

if (place_meeting(x+hsp,y,obj_cloudSmall)) {
	hsp = 0;
	
}

if (place_meeting(x+hsp,y,obj_cloudMedium)) {
	hsp = 0;
	
}

if (place_meeting(x+hsp,y,obj_cloudBig)) {
	hsp = 0;
	
}

x = x + hsp;

//vertical mechanics

if (place_meeting(x,y+vsp,obj_grass)) {
	
	while (!place_meeting(x,y+sign(vsp),obj_grass)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	
}

if (place_meeting(x,y+vsp,obj_tree)) {
	
	while (!place_meeting(x,y+sign(vsp),obj_tree)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	
}

if (place_meeting(x,y+vsp,obj_cloudSmall)) {
	vsp = 0;
	
}

if (place_meeting(x,y+vsp,obj_cloudMedium)) {
	vsp = 0;
	
}

if (place_meeting(x,y+vsp,obj_cloudBig)) {
	vsp = 0;
	
}

y = y + vsp;

//animation

if(hsp > 0) {
	image_xscale = 0.3;
} else if(hsp < 0) {
	image_xscale = -0.3;
}


if(!place_meeting(x,y+1,obj_grass)){
	
	if(!place_meeting(x,y+1,obj_cloudBig) ){	
		
			if(!place_meeting(x,y+1,obj_cloudSmall) ){
				
				if(!place_meeting(x,y+1,obj_cloudMedium) ){
					if(!place_meeting(x,y+1,obj_tree) ){
						sprite_index = spr_playerR;
					} else {
						image_speed = 1;
						if (hsp == 0){
							sprite_index = spr_player;
						} else {
							sprite_index = spr_playerR;	
						}
					}
				} else {
					image_speed = 1;
					if (hsp == 0){
						sprite_index = spr_player;
					} else {
						sprite_index = spr_playerR;	
					}
				}
				} else {
					image_speed = 1;
					if (hsp == 0){
						sprite_index = spr_player;
					} else {
						sprite_index = spr_playerR;	
					}
				}
				
		} else {
			image_speed = 1;
			if (hsp == 0){
				sprite_index = spr_player;
			} else {
				sprite_index = spr_playerR;	
			}
		}
	
} else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_playerR;	
	}
}

//change room

if(place_meeting(x,y,obj_shipGoal)) {
	room_goto(rm_space);
}