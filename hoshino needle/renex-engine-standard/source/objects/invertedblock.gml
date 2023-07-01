#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode_ext(10,1)
with(Block) {
if(object_index=Block) {
draw_rectangle_color(x,y,x+32*image_xscale-1,y+32*image_yscale-1,c_white,c_white,c_white,c_white,0)
}
}
draw_set_blend_mode(bm_normal)
