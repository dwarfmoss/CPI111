///@arg item
///@arg inventory_index
var item = argument0
var index = argument1
if(obj_inventory.ItemArray[index] != noone){
	//consumables get "destroyed" (set to noone in inventory)
	if(object_is_ancestor(item.object_index,obj_consumable)){
		if(item.object_index == obj_potion1 && obj_player.hp < obj_player.max_hp){
			obj_player.hp += item.health_restore
			obj_inventory.ItemArray[index] = noone //"uses up" the item
		}
	}
	//non-consumables
	else{
		
	}
}