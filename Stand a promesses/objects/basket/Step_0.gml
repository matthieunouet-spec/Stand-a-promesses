
phy_linear_velocity_x = (velocity * direction_mvt) * 60

if (x > max_distance - 32) {
    direction_mvt = -1
}
if (x < x_start_pos) {
    direction_mvt = 1
}

phy_linear_velocity_y = 0;