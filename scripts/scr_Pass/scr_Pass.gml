audio_play_sound(vPass,1,0)
with(obj_player)
{
	upKeypressed = 0
	rightKeyDown = 0
	leftKeyDown  = 0
	flyKeyDown   = 0
	colorChange  = 0
	rushStart    = 0
	
	weight = 0
	f = 0
	
	stateIndex = 9
	colorIndex = 9
	sprite_index = passaction;
	
	xSpeed = 0;
	ySpeed = 0;
	
	
	direction = point_direction(x,y,oSHIP.x,oSHIP.y);
	speed = 10;
}
	