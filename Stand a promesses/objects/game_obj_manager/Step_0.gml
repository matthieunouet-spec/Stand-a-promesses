if (mouse_check_button_pressed(mb_left)) {
	if (global.ad_menu_open) exit;
	if (position_meeting(mouse_x, mouse_y, pop_up_cross_obj)) exit
    var mouse_gui_y = device_mouse_y_to_gui(0);
    var gui_hauteur = display_get_gui_height();

    if (mouse_gui_y > 100 && mouse_gui_y < gui_hauteur-140) {
        if (global.shot_left > 0) {
            global.shot_left -= 1;
        }
    }   
}
// Game logic //
switch (current_state) 
{
    case phase.menu:
        if (keyboard_check_pressed(vk_space)) {
            current_state = phase.game
			room_goto_next()
           
        }
        break;

    case phase.game:
        if (global.time <= 0) {
            current_state = phase.end_screen;
			room_goto_next()
        } else {
			global.time-=1
		}
        break;

    case phase.end_screen:
        if (keyboard_check_pressed(ord("R"))) {
            current_state = phase.menu;
        }
        break;
}