/// @description Insert description here
// You can write your code in this editor
time = 10;
global.controlMod = 0;
start = 0;

//文件处理尝试
file = file_text_open_read("score.txt");
if (file_text_eof(file)){
	file_text_close(file);
	file = file_text_open_write("score.txt");
	file_text_write_real(file,0000);
	file_text_close(file);
}
else{
	file_text_close(file);
	file = file_text_open_read("score.txt");
	kill = file_text_read_real(file);
	global.death = kill;
	file_text_close(file);
}

