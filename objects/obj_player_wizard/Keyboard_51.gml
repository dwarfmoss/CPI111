/// @description attack 4 - bubble shield

if(!dead && !attack4_cd && (mana >=attack4_cost) && !talking) {
	mana -= attack4_cost
	attack4_cd = true
	audio_play_sound(haloWiz,10,0)
	instance_create_layer(x,y,"Instances",obj_bubble_shield)
	alarm[4] = attack4_spd
}