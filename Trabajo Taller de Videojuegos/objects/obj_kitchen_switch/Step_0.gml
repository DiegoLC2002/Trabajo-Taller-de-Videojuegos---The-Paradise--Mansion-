
if(instance_number(obj_beer) == 0)
{
	layer_set_visible("Effect_1", false);
	instance_destroy(obj_kitchen_block);
	instance_destroy(obj_kitchen_switch);	
}
