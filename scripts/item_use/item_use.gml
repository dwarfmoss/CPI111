///@arg item
///@arg inventory_index
var item = argument0
var index = argument1
if(obj_player.inventory.ItemArray[index] != noone){
	//consumables get "destroyed" (set to noone in inventory)
	if(object_is_ancestor(item.object_index,obj_consumable)){
		if(item.object_index == obj_potion1 && floor(obj_player.hp) < obj_player.max_hp){
			audio_play_sound(swallowPotion,50,0)
			obj_player.hp += item.health_restore
			if(obj_player.hp > obj_player.max_hp)
				obj_player.hp = obj_player.max_hp
			obj_player.inventory.ItemArray[index] = noone //"uses up" the item
			obj_player.inventory.curr_size--
		}
	}
	//non-consumables
	else{
		
	}
}