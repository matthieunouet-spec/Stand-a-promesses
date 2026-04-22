

//global stats//

if (current_state == phase.game) {
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(20, 0, "Macron credits : " + string(global.macron_credits));
//
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_text(20, 20, "Euros : " + string(global.euros));
//
draw_set_color(c_black);
draw_set_halign(fa_left); 
draw_set_valign(fa_bottom);

draw_text(20, 748, "Shot left : " + string(global.shot_left));
//
var real_seconds = ceil(global.time / game_get_speed(gamespeed_fps));

draw_set_color(c_black);
draw_set_halign(fa_left); 
draw_set_valign(fa_top);


draw_text(1200, 20, "Time left : " + string(real_seconds));
// ammo_price
if (buy_ammo_obj) {
	with(buy_ammo_obj) {
		draw_set_color(c_black);
		draw_set_halign(fa_left); 
		draw_set_valign(fa_top);
		draw_set_font(fnt_gui)

		draw_text(x+40, y+32,"(" + string(global.ammo_price) + "€)")
	}
	
}
// time_price
if (buy_time_obj) {
	with(buy_time_obj) {
		draw_set_color(c_black);
		draw_set_halign(fa_left); 
		draw_set_valign(fa_top);
		draw_set_font(fnt_gui)

		draw_text(x+40, y+32,"(" + string(global.time_price) + "€)")
	}
	
}
//ad window
if (global.ad_menu_open == true) {
	
		var ad_window = instance_find(ad_window_obj, 0)
		if (ad_window) {
			draw_set_color(c_black);
			draw_set_halign(fa_left); 
			draw_set_valign(fa_top);
			draw_set_font(fnt_gui)
			with (ad_window) {
				draw_text(ad_window.btn_yes.x-16, ad_window.btn_yes.y+10,"(" + string(global.ad_price) + "€)")
		
			}
		}
		
}



}