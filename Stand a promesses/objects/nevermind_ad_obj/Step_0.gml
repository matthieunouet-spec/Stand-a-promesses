if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, id)) {
		instance_destroy(id.window.btn_yes)
		instance_destroy(id.window)
		instance_destroy(id)
		global.ad_menu_open=false
	}
}
