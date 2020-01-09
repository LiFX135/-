/// @description Insert description here
// You can write your code in this editor


//检测是否推

if (place_meeting(x+1,y,obj_player) || place_meeting(x-1,y,obj_player))
{
	obj_player.myState = playerstate.pushing;
}

//推动
if (obj_player.myState == playerstate.pushing &&
	(place_meeting(x+1,y,obj_player) || place_meeting(x-1,y,obj_player)))
{
	x += obj_player.xSpeed;
}

/*else if (obj_player.myState == playerstate.pushing &&
	(place_meeting(x+1,y,box) || place_meeting(x-1,y,box)))
{
	x += obj_player.xSpeed;
}*/

else if ((place_meeting(x+1,y,box) || place_meeting(x-1,y,box)))
{
	x += obj_player.xSpeed;
}

/*
if (place_meeting(x+1,y,obj_player))
	x -= 1;
if (place_meeting(x-1,y,obj_player))
{
	x += 1
}

if (!place_meeting(x+obj_player.xSpeed,y,obj_player) || !place_meeting(x-obj_player.xSpeed,y,obj_player))
;

else if (place_meeting(x+2,y,box))
	x -= 1;

else if (place_meeting(x-2,y,box))
	x += 1;
*/








//与物理状态相关
if (!place_meeting(x,y+1,ground_parent))
	myState = playerstate.falling

if (place_meeting(x,y+1,ground_parent) || place_meeting(x,y+1,box) || place_meeting(x,y+1,obj_player))
	myState = playerstate.onGround


//坠落
	
if (myState != playerstate.onGround)
{
	if (ySpeed < maxFallSpeed)
	{
		ySpeed += weight;
	}
}


	
//if (!place_meeting(x,y+ySpeed,ground_parent))
//	y += ySpeed;
if (/**/place_meeting(x,y+ySpeed,box) || place_meeting(x,y+ySpeed,obj_player))
{
	ySpeed = 0;

}
	
else if (!place_meeting(x,y+ySpeed,ground_parent))
	y += ySpeed;
	

else
{
	move_contact_solid(point_direction(x,y,x,y+ySpeed),maxFallSpeed);
	ySpeed = 0;
}


