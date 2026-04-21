if ammo > 0 && !is_reloading {
    ammo--
    
    var bullet = instance_create_layer(x, y, "Bullets", balles_obj)
    bullet.direction = point_direction(x, y, mouse_x, mouse_y)
    bullet.speed = 14
    bullet.from_player = true
    
    if ammo == 0 && !is_reloading {
        reload_tr = reload_duration
        is_reloading = true
        show_debug_message("Auto-rechargement")
    }
}