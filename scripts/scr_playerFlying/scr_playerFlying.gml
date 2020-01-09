//飞行
maxRunSpeed = 5;
jumptime = 0;//飞了还想跳，不存在的
if (ySpeed > -maxJetSpeed && place_meeting(x,y-1,ground_parent))
{
	ySpeed -= jetPower + weight + max(0,abs(ySpeed)/20);
	audio_play_sound(vJump,1,0);
}

else
{
	ySpeed -= jetPower;
}

if (keyboard_check_released(flyKey))
	myState = playerstate.falling

f = .3;