#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Block) {
if(object_index=Block) { visible=false
sprite_index=sprite488
}
}
with(PlayerKiller) visible=false
surf1=surface_set("1surf1",800,608)
surf2=surface_set("1surf2",800,608)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_forget("1surf1")
surface_forget("1surf2")
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_set_target(surf1)
draw_clear_alpha(c_black,0)
with(PlayerKiller) draw_self()
draw_set_blend_mode_ext(bm_one,bm_one)
draw_set_blend_alphamode(true,bm_normal)
with(Block) {
if(object_index=Block) { draw_self()
}
}
draw_set_blend_mode(bm_normal)
draw_set_blend_alphamode(false)
surface_set_target(surf2)
draw_background(background135,0,0)
draw_set_blend_mode_ext(bm_zero,bm_src_color)
draw_surface(surf1,0,0)
surface_set_target(application_surface)
draw_set_blend_mode(bm_normal)
draw_surface(surf2,0,0)

draw_set_blend_mode(bm_normal)
draw_set_blend_alphamode(false)
