
if(instance_number(obj_pillow) == 0)
{
	instance_destroy(obj_bedroom_block);
	instance_destroy(obj_bedroom_switch);	
	layer_set_visible("Effect_1", false);
}
