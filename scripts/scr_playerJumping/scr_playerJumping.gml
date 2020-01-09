//跳跃
if (jumptime > 0 && upKeypressed && ySpeed <= 0)//实现二段跳
{
	ySpeed -= jumpPower*0.55;
	jumptime -= 1;
}

f = 0

if (place_meeting(x,y+1,ground_parent) || place_meeting(x,y+1,box))
	myState = playerstate.onGround;

else if (flyKeyDown)
{
	myState = playerstate.flying;
}

else if (rushStart && myColor == playercolor.blue && rushcharge > 0)//只有红色能冲刺
{
	audio_play_sound(vRush,1,0)
	maxRunSpeed = rushPower;
	xSpeed = rushPower*sign(xSpeed);
	weight = 0;
	ySpeed = 0;
	alarm[0] = rushtime;
	rushcharge = 0;
}

