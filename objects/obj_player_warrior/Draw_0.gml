/// @description draw shadow
draw_sprite_ext(spr_player_shadow,0,self.x,self.y+5,1,1,0,c_white,.8)
draw_self()
if(view_current=1)
{
	spr=self.sprite_index
	draw_sprite_ext(spr,0,self.x,self.y+5,3,3,0,c_white,1)
}