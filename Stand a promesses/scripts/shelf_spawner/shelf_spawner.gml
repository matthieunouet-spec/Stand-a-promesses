function shelf_spawner(_x, _y){
	//Ini of the shelf
	var inst_shelf = instance_create_layer(_x, _y, "Instances", phantom_shelf_obj);

    var sup1 = instance_create_layer(inst_shelf.x+12,inst_shelf.y+96, "Instances", phantom_support_obj);
    var sup2 = instance_create_layer(inst_shelf.x+180,inst_shelf.y+96, "Instances", phantom_support_obj);
        
    sup1.shelf = inst_shelf;
    sup2.shelf = inst_shelf;
}