/// @description Insert description here
// You can write your code in this editor
if (mouse_x<bbox_right && mouse_x > bbox_left && mouse_y < bbox_bottom && mouse_y > bbox_top){
	file = file_text_open_write("score.txt");
	file_text_write_real(file,global.death);
	file_text_close(file);
	
	game_end()
}