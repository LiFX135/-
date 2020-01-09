/// @description Insert description here
// You can write your code in this editor
if (draw == 0){
	time = ((get_timer() - global.time)/1000000);
	draw += 1;
}

draw_text(room_width/2 - 200,50,"Time:" + string(time) + " S");
draw_set_color(c_red);
draw_set_font(fTimer);

