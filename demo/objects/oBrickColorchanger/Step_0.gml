/// @description Insert description here
// You can write your code in this editor
countdown -= 1;
if (countdown<0)
{
	countdown = 5;//room_speed*5;
	
	if(sprite_index == spr_yellow)
		sprite_index = spr_red
	else if (sprite_index == spr_red)
		sprite_index = spr_yellow
}

if (sprite_index == spr_yellow)
{
	if (place_meeting(x,y-1,obj_player) && obj_player.myState !=playerstate.pushing)
		obj_player.maxRunSpeed = 4;
	if (place_meeting(x,y-1,obj_player) && obj_player.myColor == playercolor.blue)
		obj_player.hp -= 100;
}

if (sprite_index == spr_red){
	if (place_meeting(x,y-1,obj_player) && obj_player.myColor == playercolor.yellow)
		obj_player.hp -= 100;

	if (place_meeting(x,y-1,obj_player) && obj_player.myState !=playerstate.pushing)
	{
		obj_player.maxRunSpeed = 6;
	}
}

