/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y-1,obj_player) && obj_player.myColor == playercolor.yellow)
	obj_player.hp -= 100;
	
if (place_meeting(x,y-1,obj_player) && obj_player.myState !=playerstate.pushing)
{
	obj_player.maxRunSpeed = 6;
}