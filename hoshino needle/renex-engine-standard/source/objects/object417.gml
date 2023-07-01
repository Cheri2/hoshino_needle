#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
amount=0
k=surface_create(800,608)
surface_set_target(k)
with(Block) { if(object_index=Block)
draw_sprite_ext(sprite391,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
surface_set_target(application_surface)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(k)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_surface(k,0,0)
