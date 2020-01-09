//变色
if ((place_meeting(x,y+1,obj_player) || place_meeting(x,y-1,obj_player)) &&
		obj_player.myColor==playercolor.blue && myColor == brickcolor.grey)
{
	sprite_index = spr_red;
	myColor = brickcolor.blue;
	obj_player.maxRunSpeed = 6;
}

else if ((place_meeting(x,y+1,obj_player) || place_meeting(x,y-1,obj_player)) && 
		obj_player.myColor==playercolor.yellow && myColor == brickcolor.grey) 
{
	sprite_index = spr_yellow;
	myColor = brickcolor.yellow;
	obj_player.maxRunSpeed = 4;
}

//移动速度相关

if (place_meeting(x,y-1,obj_player) && myColor == brickcolor.yellow 
	&& obj_player.myState !=playerstate.pushing)
{
	obj_player.maxRunSpeed = 4;
}

if (place_meeting(x,y-1,obj_player) && myColor == brickcolor.blue 
	&& obj_player.myState !=playerstate.pushing)
{
	obj_player.maxRunSpeed = 6;
}



//杀人代码
if (place_meeting(x,y-1,obj_player) && myColor == brickcolor.yellow && obj_player.myColor == playercolor.blue)
	obj_player.hp -= 100;
	
if (place_meeting(x,y-1,obj_player) && myColor == brickcolor.blue && obj_player.myColor == playercolor.yellow)
	obj_player.hp -= 100;

