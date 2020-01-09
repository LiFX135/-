// comtral value set

global.mainLayer = "Instances";
global.moveRightKey = vk_right;
global.moveLeftKey = vk_left;
global.jet = vk_control;

//计死亡次数
global.death += 1;


//键位状态机

switch (global.controlMod)
{
	case 0: global.JumpKey = ord("C");
			global.ColorChangeKey = ord("Z");
			global.rush = ord("X");
			break;
			
	case 1:	global.JumpKey = ord("W");
			global.ColorChangeKey = ord("A");
			global.rush = ord("D");
			break;

	case 2:	global.JumpKey = ord("W");
			global.ColorChangeKey = vk_left;
			global.rush = vk_right;
			global.moveRightKey = ord("D");
			global.moveLeftKey = ord("A");
			break;
}
			

//global.JumpKey = ord("W");
//global.ColorChangeKey = ord("A");
//global.rush = ord("D");

global.trigger = 0;

enum playerstate
{
	onGround,
	jumping,
	falling,
	flying,
	rushing,
	pushing
}

enum playercolor
{
	yellow,//normal ability
	blue,//jump higher
	rainbow//fly and shot
}

enum brickcolor
{
	yellow,//normal ability
	blue,//jump higher
	grey//fly and shot
}
audio_play_sound(vBGM,1,1)


	
	
	