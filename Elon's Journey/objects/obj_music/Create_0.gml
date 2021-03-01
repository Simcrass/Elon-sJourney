

switch(room) {
	case rm_start:
	audio_stop_all();
	audio_play_sound(m_start,1000,true);
	break;
	
	case rm_lvl1:
	audio_stop_sound(themeSong);
	audio_stop_sound(m_start);
	audio_stop_sound(rocketSound);
	audio_stop_sound(m_win);
	audio_stop_sound(m_gameOver);
	audio_play_sound(themeSong,1000,true);
	break;
	
	case rm_spaceInfo:
	audio_stop_sound(themeSong);
	audio_stop_sound(m_win);
	audio_stop_sound(m_gameOver);
	audio_stop_sound(m_start);
	audio_play_sound(themeSong,1000,true);
	break;
	
	case rm_space:
	audio_stop_sound(themeSong);
	audio_stop_sound(m_win);
	audio_stop_sound(m_gameOver);
	audio_stop_sound(m_start);
	audio_play_sound(themeSong,1000,true);
	break;
	
	case rm_marsInfo:
	audio_stop_sound(themeSong);
	audio_stop_sound(m_win);
	audio_stop_sound(m_gameOver);
	audio_stop_sound(m_start);
	audio_play_sound(themeSong,1000,true);
	break;
	
	case rm_mars:
	audio_stop_sound(themeSong);
	audio_stop_sound(m_win);
	audio_stop_sound(m_gameOver);
	audio_stop_sound(m_start);
	audio_play_sound(themeSong,1000,true);
	break;
	
	case rm_win:
	audio_stop_all();
	audio_play_sound(m_win,1000,true);
	break;
	
	case rm_loose:
	audio_stop_all();
	audio_play_sound(m_gameOver,1000,true);
	break;
	
}