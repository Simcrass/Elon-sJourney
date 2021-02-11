if(keyboard_check_released(vk_enter)){
		switch(room){
		case rm_start:
			room_goto(rm_lvl1);		
			break;
			
		case rm_win:
			game_restart();		
		break;
		case rm_loose:
			game_restart();		
		break;
	}
}

if(room_get_name != rm_start || room != rm_win) {
	if(keyboard_check(ord("R"))){
		room_goto(rm_lvl1);
	}
}


if(keyboard_check(ord("N"))){
	room_goto(rm_space);
}
if(keyboard_check(ord("M"))){
	room_goto(rm_mars);
}