#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
k=surface_create(800,608)
antik=surface_create(800,608)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(k)
surface_free(antik)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_set_target(k)
with(Block) {
    draw_set_color(c_white)
    if(object_index=Block) draw_rectangle(x,y,x+32*image_xscale,y+32*image_yscale,0)
}
surface_set_target(antik)
draw_rectangle(0,0,800,608,c_black)
draw_set_blend_mode(bm_subtract)
draw_surface(k,0,0)
draw_set_blend_mode(bm_normal)
surface_set_target(application_surface)
