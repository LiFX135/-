/// @description Insert description here
/*
//改变状态
if (obj_player.myState == playerstate.onGround)
{
	obj_player.myState = playerstate.pushing;
}
	
//推动
if (obj_player.myState == playerstate.pushing && 
	(place_meeting(x+1,y,obj_player) || place_meeting(x-1,y,obj_player)))
{
	x += obj_player.xSpeed;
}

else if (obj_player.myState == playerstate.pushing && 
	(place_meeting(x+1,y,box) || place_meeting(x-1,y,box)))
{
	x += obj_player.xSpeed;
}









//与物理状态相关
if (!place_meeting(x,y+1,ground_parent))
	myState = playerstate.falling

if (place_meeting(x,y+1,ground_parent))
	myState = playerstate.onGround
	
//坠落
	
if (myState != playerstate.onGround)
{
	if (ySpeed < maxFallSpeed)
	{
		ySpeed += weight;
	}
}

if (!place_meeting(x,y+ySpeed,ground_parent))
	y += ySpeed;
	

else
{
	move_contact_solid(point_direction(x,y,x,y+ySpeed),maxFallSpeed);
	ySpeed = 0;
}
*/