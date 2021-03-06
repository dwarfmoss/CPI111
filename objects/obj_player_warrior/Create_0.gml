/// @description
//cheats
hp_cheat = false

//movement stuff
x_speed = 0
y_speed = 0
x_input = 0
y_input = 0
max_speed = 2
acceleration = 2

//attributes
level_ = 1
exp_ = 0
exp_to_level = level_ * 50 + 50
aggro_rad = (150) //aggro pixel radius

max_hp = 8
hp = max_hp
max_mana = 30
mana = max_mana
mana_regen = 2
souls = 0

roll_cd = false
roll_cd_time = 2
rollspeed = 2
rolling = false

//attack stats
//attack 1- basic attack
attack1_dmg = 1
attack1_cd = false
attack1_spd = room_speed * .8 //1 sec cooldown

//attack 2- whirlwind
attack2_dmg = 2
attack2_cd = false
attack2_spd = room_speed * 1.5
attack2_cost = 15

//attack 3- shockwave
attack3_dmg = 2 //per wave
attack3_cd = false
attack3_spd = room_speed * 3
attack3_cost = 20

//attack 4- shield block
attack4_dmg = 0
attack4_cd = false
attack4_spd = room_speed * 4
attack4_cost = 10

//attack 5- enrage
//attack5_dmg = 0
attack5_duration = 4 * room_speed //double damage for 4 sec
attack5_cd = false
attack5_spd = 0.5 * room_speed //.5 sec spacing
attack5_cost = ceil(0.25 * max_hp) //health cost

charge_cd = false
charge_cd_time = 4*room_speed
charge_speed = 3
charging = false
charge_cost = 10

//recoilSpeed=10;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;

//states
dead = false
talking = false
channeling = false
knocked_back = false
knock_time = 0.1 * room_speed
helmet_equipped = false
recently_created = true
channeling = false

//animation stuff
up = spr_warrior_up
down = spr_warrior_down
side = spr_warrior_side

//create a camera on player
camera = instance_create_layer(x, y, "Instances", obj_camera)
//change camera size for screen res optimization?
inventory = instance_create_layer(x, y, "Instances", obj_inventory)

//for non-random map collision
tilemap = layer_tilemap_get_id("Collision")