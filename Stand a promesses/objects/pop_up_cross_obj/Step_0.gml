if (mouse_check_button_pressed(mb_left)) {
	if (global.ad_menu_open) exit;
    if (position_meeting(mouse_x, mouse_y, id)) {
		global.ad_menu_open = true
		ad_window_init(id)
	}
}