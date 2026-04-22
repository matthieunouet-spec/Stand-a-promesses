function ad_window_init(cross){
	var ad_window = instance_create_layer(room_width/2, room_height/2, "Instances", ad_window_obj)
	ad_window.depth = -10000
	ad_window.btn_cross = cross
	with (ad_window) {
		var yes = instance_create_layer(x-128, y+64, "Instances", yes_ad_obj)
		id.btn_yes=yes
		yes.window=id
		yes.depth=id.depth-1
		var nevermind = instance_create_layer(x+128, y+64, "Instances", nevermind_ad_obj)
		id.btn_nevermind=nevermind
		nevermind.window=id
		nevermind.depth=id.depth-1
		show_debug_message(cross.pop_up)
	}

}