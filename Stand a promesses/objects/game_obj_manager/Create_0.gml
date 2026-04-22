// states //
enum phase {
    menu,
    game,
    end_screen
}
current_state = phase.menu;

//global variables//
global.macron_credits = 0
global.euros = 100
global.shot_left=5
global.time = 180 * game_get_speed(gamespeed_fps)
global.ammo_price=1
global.time_price=1
global.ad_price=1
global.ad_menu_open = false;
//