/// @description Insert description here
// You can write your code in this editor
if (mouse_x<bbox_right && mouse_x > bbox_left && mouse_y < bbox_bottom && mouse_y > bbox_top)
{
	room_goto(Mainroom);
	audio_stop_all();
}