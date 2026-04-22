if invincible == 0 && other.from_player == true {
    instance_destroy(other)
    
    with(player_obj) {
        ammo = min(ammo + 1, max_ammo)
        if is_reloading && ammo == max_ammo {
            is_reloading = false
            reload_tr = 0
        }
        score = score + 10
    }
    
    invincible = 20
    show_debug_message("Balle attrapée ! +10 points")
}