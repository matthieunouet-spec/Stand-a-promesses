if reload_tr > 0 {
    reload_tr--
    if reload_tr <= 0 {
        ammo = max_ammo
        is_reloading = false
        show_debug_message("Recharge !")
    }
}

if keyboard_check_pressed(ord("R")) && !is_reloading && ammo < max_ammo {
    reload_tr = reload_duration
    is_reloading = true
    show_debug_message("Rechargement")
}

x = mouse_x
y = mouse_y

scr_update_difficulty()