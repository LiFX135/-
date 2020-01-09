maxRunSpeed = 1;
f = 0.3;
if (!(place_meeting(x+1,y,box)) && !(place_meeting(x-1,y,box)))
	myState = playerstate.onGround;
	
if (upKeypressed)//跳跃
{
	ySpeed -= jumpPower;
	myState = playerstate.jumping;
	jumptime -= 1;
}
