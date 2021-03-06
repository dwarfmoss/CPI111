/// @description UI, inventory, vendor

if(instance_exists(obj_player) && instance_exists(obj_game_control) && obj_game_control.game_state != 3){
	//top left corner stuff
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text(30,30,"Level: " + string(obj_player.level_))
	draw_text(30,55,"EXP: " + string(obj_player.exp_) + "/ " + string(obj_player.exp_to_level))
	draw_text(30,80,"Floor: " + string(obj_game_control.floor_))
	draw_text(30,105,"   x " + string(obj_player.souls))
	draw_sprite_ext(spr_soul,0,40,120,1.5,1.5,0,c_white,1)

	//the main player UI
	var height = view_hport[0]
	var width = view_wport[0]
	if(obj_game_control.game_state != -1){
		draw_healthbar(width/2-200,height-158,width/2-75,height-50,(obj_player.hp/obj_player.max_hp)*100,c_black,c_red,c_red,3,false,false) //hp
		draw_healthbar(width/2+75,height-158,width/2+200,height-50,(obj_player.mana/obj_player.max_mana)*100,c_black,c_teal,c_teal,3,false,false) //mana
		draw_sprite_ext(spr_gui,3,width/2,height - 100,2.2,2.1,0,c_white,1) //change subimage later depending on unlocked abilities? //main UI border
		draw_text(width/2-175,height-85,"HP: " + string(floor(obj_player.hp)) + "/" + string(obj_player.max_hp))
		draw_text(width/2+100,height-85,"MP: " + string(floor(obj_player.mana)) + "/" + string(obj_player.max_mana))
	}
	//inventory display
	var xoffset = width/2 + 320
	var yoffset = height/2 + 45
	if(object_get_visible(obj_inventory)){
		//var xslot = 5*16 //aprox size of inventory slot box
		draw_sprite_ext(obj_inventory.sprite_index,obj_inventory.image_index,width-220,yoffset,1.5,1.5,0,c_white,1)
		//draw 1st item, then 2nd...etc left to right top to bottom
		for(var col = -1; col < obj_inventory.max_size-1; col++){
			if((col+1) % 3 == 0 && (col+1) >0){
					yoffset += 100
			}
			if(obj_inventory.ItemArray[col+1] != noone){
				draw_sprite_ext(obj_inventory.ItemArray[col+1].sprite_index,0,x + xoffset+((col+1)%3)*108,yoffset+5,3,3,0,c_white,1)
			}
		}
	}
	
}