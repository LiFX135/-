file = file_text_open_write("score.txt");
file_text_write_real(file,global.death);
file_text_close(file);
	
audio_play_sound(vDead,1,false);
room_goto(fall)

