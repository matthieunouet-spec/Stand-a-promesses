if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, id)) {
		if (global.euros>=global.ad_price) {
			instance_destroy(self.window.btn_cross.pop_up)
			instance_destroy(self.window.btn_cross)
			global.ad_price*=1.05
		}
		instance_destroy(self.window.btn_nevermind)
		instance_destroy(self.window)
		instance_destroy(self)
		global.ad_menu_open=false
	}
}
