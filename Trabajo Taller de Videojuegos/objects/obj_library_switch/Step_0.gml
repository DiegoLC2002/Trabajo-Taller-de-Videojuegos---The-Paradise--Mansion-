
if(instance_number(obj_bookpage) == 0)
{
	instance_destroy(obj_library_block);
	instance_destroy(obj_library_switch);	
	layer_set_visible("Effect_1", false);
}
