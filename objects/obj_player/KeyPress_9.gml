layerId=layer_get_id("Instances")
if(layer_get_visible(layerId) && room==rm_dungeon)
{
map_active=true
layer_set_visible(layerId,false)
if(helmet_equipped)instance_destroy(obj_helmet)
}
else
{
map_active=false
layer_set_visible(layerId,true)
}
