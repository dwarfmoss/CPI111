/// @description Animation

//need to change to be based on direction
//point distance because otherwise idle
if (!dead && point_distance(x, y, obj_player.x, obj_player.y) <= obj_player.aggro_rad+50 && line_of_sight(x,y,obj_player.x,obj_player.y)){
	var dir = point_direction(obj_player.x, obj_player.y, x, y)
	if(dir<45 || dir>315) sprite_index = spr_skeleton_mage_l
	else if(dir<135 && dir>45) sprite_index = spr_skeleton_mage_d
	else if(dir<225 && dir>135) sprite_index = spr_skeleton_mage_r
	else if(dir<315 && dir>225) sprite_index = spr_skeleton_mage_u
}