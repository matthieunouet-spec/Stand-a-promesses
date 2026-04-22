if (mouse_check_button_pressed(mb_left)) {
	if (global.ad_menu_open) exit;
    if (position_meeting(mouse_x, mouse_y, id)) {
		pop_up_generator()
		if (global.euros>=global.ammo_price) {
			global.euros-=global.ammo_price
			global.shot_left+=1
			global.ammo_price*=1.05
		}
	}
}