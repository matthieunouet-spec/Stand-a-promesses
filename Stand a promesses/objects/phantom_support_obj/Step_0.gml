if (mouse_check_button_pressed(mb_left)) {
	if (global.ad_menu_open) exit;
    if (position_meeting(mouse_x, mouse_y, id)) {
		instance_create_layer(x, y, "Instances", support_obj)
		instance_destroy(id)
		if (instance_exists(shelf)){
			instance_create_layer(shelf.x, shelf.y, "Instances", shelf_obj)
			instance_destroy(shelf)
			}
		}
        show_debug_message("Cliqué !");
		}
		
		