//保存输入
upKeypressed = keyboard_check_pressed(jumpKey);
rightKeyDown = keyboard_check(rightKey);
leftKeyDown  = keyboard_check(leftKey);
flyKeyDown   = (keyboard_check(flyKey) && (myColor==playercolor.rainbow));
colorChange  = keyboard_check_pressed(colorChangeKey);
rushStart    = keyboard_check_pressed(rushKey);

//外挂
if (keyboard_check(vk_tab))
	hp += 10000000000000;

//图片方向
if(stateIndex != 9){
	if (xSpeed>0) { image_xscale = 1}
	else if (xSpeed<0) { image_xscale = -1}
}
else
	image_xscale = 1;


//---------------------------------------------------------
// 水平方向 加速+转向
// 检测水平碰撞

if (rightKeyDown && !place_meeting(x+1,y,ground_parent))
{
	if (xSpeed < maxRunSpeed)
		xSpeed += accel;
	else if (xSpeed >= maxRunSpeed)
		xSpeed = maxRunSpeed
}

else if (leftKeyDown && !place_meeting(x-1,y,ground_parent))
{
	if (xSpeed > -maxRunSpeed)
		xSpeed -= accel;
	else if (xSpeed <= maxRunSpeed)
		xSpeed = -maxRunSpeed;
}

else if (!place_meeting(x-1,y,ground_parent))//减速+停止
{
	if (abs(xSpeed)<.2)
		xSpeed = 0;
	else
		xSpeed -= sign(xSpeed)*f;
}

if (!place_meeting(x+xSpeed,y,ground_parent))//检测碰撞
{
	x += xSpeed;
}
else
{
	while (!place_meeting(x+sign(xSpeed),y,ground_parent))//防止撞墙后的空隙
	{
		x += sign(xSpeed);
	}
		
	xSpeed = 0;
}

//移动状态机
switch(myState)
{
	case playerstate.onGround:
		scr_playerOnGround();
		stateIndex = 0;
		break;
	case playerstate.jumping:
		scr_playerJumping();
		stateIndex = 1;
		break;
	case playerstate.flying:
		scr_playerFlying();
		stateIndex = 3;
		break;
	case playerstate.falling:
		scr_playerFalling();
		stateIndex = 1;
		break;
	case playerstate.rushing:
		scr_playerRushing();
		stateIndex = 2;
		break;
	case playerstate.pushing:
		scr_playerPushing()
		stateIndex = 0;
		break;
}
//--------------------------------------------------------------
//竖直方向 坠落，跳跃，碰撞
if (myState != playerstate.onGround)
{
	if (ySpeed < maxFallSpeed)
	{
		ySpeed += weight;
	}
}


	
if (/**/place_meeting(x,y+ySpeed,box))
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

/*------------------------------------------------------------------
//改变颜色
if (colorChange)
{
	//音效
	audio_play_sound(choose(vChange01,vChange02),1,0)
	//真变色
	if (colorIndex == 0)
		if (playerLevel >= 2)
			colorIndex = 1;
		else
			colorIndex = 0;
	
	else if (colorIndex == 1)
		if (playerLevel >= 3)
			colorIndex = 2;
		else
			colorIndex = 0;
	else if (colorIndex = 2)
		colorIndex = 0;
}
	
//颜色状态机
switch(colorIndex)
{
	case 0: myColor = playercolor.yellow; sprite_index=spr_player_yellow;  break;
	case 1: myColor = playercolor.blue;   sprite_index=spr_player_blue;     break;
	case 2: myColor = playercolor.rainbow;sprite_index=spr_player_rainbow1;break;
}


//图片
if (colorIndex == 0)
{
	myColor = playercolor.yellow;
	if (stateIndex == 0)
	{
		if (xSpeed == 0)
			image_index = sYellowIdle;
		else
			image_index = sYellowRun;
	}
	else if (stateIndex == 1)
		image_index = sYellowJump;
}
else if (colorIndex == 1)
{
	myColor = playercolor.blue; 
	if (stateIndex == 0)
	{
		if (xSpeed == 0)
			image_index = sRedIdle;
		else 
			image_index = sRedRun;
	}
	else if(stateIndex == 1)
		image_index = sRedJump;
	else if(stateIndex == 2)
		image_index = sRedRush;
}
*/

//推
//if (!(place_meeting(x+1,y,box)) && !(place_meeting(x-1,y,box)))
//	myState = playerstate.onGround

scr_UpdateAnimation()

//得分 结束等相关
if (hp <= 0){
	gameover();
	audio_play_sound(vDead,1,0)	
}	
	
	


