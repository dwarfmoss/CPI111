/// @description Attack 1

if(!attack1_cd && !talking) {
	damage = 1
	instance_create_layer(x,y,"Instances",obj_player_attack1)
	attack1_cd = true
	alarm[1] = attack1_spd
}