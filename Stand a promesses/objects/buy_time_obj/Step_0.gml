if (mouse_check_button_pressed(mb_left)) {
	if (global.ad_menu_open) exit;
    if (position_meeting(mouse_x, mouse_y, id)) {
		if (global.euros>=global.time_price) {
			global.euros-=global.time_price
			global.time+=30*game_get_speed(gamespeed_fps)
			global.time*=1.05
		}
	}
}