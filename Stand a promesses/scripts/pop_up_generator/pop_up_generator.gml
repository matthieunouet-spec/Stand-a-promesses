function pop_up_generator() {
	static last = -1
    randomise();
	var choice_list = [bard_spr, mel_spr, pout_spr, sarko_spr, vil_spr, pec_spr, kna_spr]
	if (last!=-1) {
		var to_delete = last
		var index = array_get_index(choice_list, to_delete)

		if (index != -1) {
			array_delete(choice_list, index, 1)
		}
	}
    var selected_sprite = choice_list[irandom(array_length(choice_list) - 1)]
	last = selected_sprite
    
    var sw = sprite_get_width(selected_sprite)
    var sh = sprite_get_height(selected_sprite)
    
    var inst = instance_create_layer(random_range(0, 1316 - sw), random_range(100, 768 - sh), "Instances", pop_up_obj)
    
    with(inst) {
        sprite_index = selected_sprite
        mask_index = sprite_index;
		depth = -instance_count
		var inst_cross= instance_create_layer(x, y, "Instances", pop_up_cross_obj)
		inst_cross.depth = depth-1
		inst_cross.pop_up = id
    }
}