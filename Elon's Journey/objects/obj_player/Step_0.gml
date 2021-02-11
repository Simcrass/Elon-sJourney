/// @description Movements and what not

key_d = keyboard_check(ord ("D"));
key_a = keyboard_check(ord ("A"));
key_jump = keyboard_check_pressed(vk_space);

var _move = key_d - key_a;

hsp = _move * walksp;

//vsp = vsp + grv;

//if (place_meeting(x,y+1,obj_wall)) && (key_jump){
if (key_jump){
	vsp = -jumpsp;
}
//}

/*if (place_meeting(x+hsp,y,obj_block2)) {
	
	while (!place_meeting(x+sign(hsp),y,obj_block2)) {
		x = x + sign(hsp);
	}
	hsp = 0;
	
}*/

x = x + hsp;

/*if (place_meeting(x,y+vsp,obj_block2)) {
	
	while (!place_meeting(x,y+sign(vsp),obj_block2)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	
}*/

y = y + vsp;