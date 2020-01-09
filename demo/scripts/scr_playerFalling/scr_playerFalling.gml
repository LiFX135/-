//坠落状态
maxRunSpeed = 5;
if (place_meeting(x,y+1,ground_parent) || place_meeting(x,y+1,box))
{
	myState = playerstate.onGround
}

if (flyKeyDown)
	myState = playerstate.flying
	
f = .3;
