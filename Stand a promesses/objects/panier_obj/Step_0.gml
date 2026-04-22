x += hspeed

if x <= min_x {
    x = min_x
    hspeed = move_speed
}

if x >= max_x {
    x = max_x
    hspeed = -move_speed
}

if invincible > 0 {
    invincible--
    hit_flash = hit_flash + 1
    if hit_flash > 3 {
        image_blend = c_white
        hit_flash = 0
    } else {
        image_blend = c_red
    }
} else {
    image_blend = c_white
}