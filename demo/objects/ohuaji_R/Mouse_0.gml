/// @description Insert description here
// You can write your code in this editor
if (mouse_x<bbox_right && mouse_x > bbox_left && mouse_y < bbox_bottom && mouse_y > bbox_top && ohuaji_O.start==0)
{
	audio_play_sound(vBiginBotton,1,0);
	alarm[11] = 240;
	global.controlMod = 1;
	ohuaji_O.start += 1;
}