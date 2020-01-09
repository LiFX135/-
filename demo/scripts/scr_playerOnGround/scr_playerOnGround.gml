// 在地面
if (place_meeting(x,y+1,box))
	myState = playerstate.onGround;
else if(!place_meeting(x,y+1,ground_parent))
	myState = playerstate.falling;
	
//推动检测


/*if (!place_meeting(x,y+1,ground_parent))
	myState = playerstate.falling;
*/
jumptime = 2;//充值跳跃次数
rushcharge = 1;


if (upKeypressed)//跳跃
{
	ySpeed -= jumpPower;
	myState = playerstate.jumping;
	jumptime -= 1;
	audio_play_sound(vJump,1,0);
}
f = 0.3;