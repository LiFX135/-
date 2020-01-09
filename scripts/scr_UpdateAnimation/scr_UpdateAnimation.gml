//动画脚本

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
/*switch(colorIndex)
{
	case 0: myColor = playercolor.yellow; sprite_index=spr_player_yellow;  break;
	case 1: myColor = playercolor.blue;   sprite_index=spr_player_blue;     break;
	case 2: myColor = playercolor.rainbow;sprite_index=spr_player_rainbow1;break;
}*/


//图片
if (colorIndex == 0)
{
	myColor = playercolor.yellow;
	if (stateIndex == 0)
	{
		if (xSpeed == 0)
			sprite_index = sYellowIdle;
		else
			sprite_index = sYellowRun;
	}
	else if (stateIndex == 1)
		sprite_index = sYellowJump;
}
else if (colorIndex == 1)
{
	myColor = playercolor.blue; 
	if (stateIndex == 0)
	{
		if (xSpeed == 0)
			sprite_index = sRedIdle;
		else 
			sprite_index = sRedRun;
	}
	else if(stateIndex == 1)
	{
		sprite_index = sRedJump;
		image_index = 0;
	}
	else if(stateIndex == 2)
		image_index = 1;
}

if (stateIndex = 9)
	sprite_index = passaction;
