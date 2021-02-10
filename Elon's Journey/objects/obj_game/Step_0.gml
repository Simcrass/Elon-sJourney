if(keyboard_check_released(vk_enter)){
		switch(room){
		case rm_start:
			room_goto(rm_lvl1);		
			break;
			
		case rm_win:
		//case rm_gameover:
			game_restart();		
		break;
	}
}
