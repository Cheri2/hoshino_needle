#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sf_mask=surface_create(800,608);
sf_mask1=surface_create(800,608);
sf_inline=surface_create(800,608);
with(Block) if(object_index=Block) sprite_index=sprite391
with(PlayerKiller) visible=false
if(settings("waterdepth")==2) depth=-15
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(sf_mask)
surface_free(sf_mask1)
surface_free(sf_inline)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if !surface_exists(sf_mask){
sf_mask=surface_create(800,608);
}
if !surface_exists(sf_mask1){
sf_mask1=surface_create(800,608);
}
if !surface_exists(sf_inline){
sf_inline=surface_create(800,608);
}

surface_set_target(sf_mask)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

with Block{
if(object_index=Block)
draw_self();
}
with SlopeParent{
draw_self()
}
with PlayerKiller{
draw_self()
}

draw_set_blend_mode(bm_normal);

surface_reset_target();

var r_,i,j;
r_=1;


surface_set_target(sf_mask1)

draw_clear_alpha(0,1);
draw_set_blend_mode(bm_subtract);

for(j=-r_; j<=r_; j+=1){
    for(i=-r_; i<=r_; i+=1){
        draw_surface_ext(sf_mask,i,j,1,1,0,c_white,1);
    }
}
draw_set_alpha(1)

draw_set_blend_mode(bm_normal);

surface_reset_target();


surface_set_target(sf_inline)

draw_clear_alpha(c_white,1)
draw_set_blend_mode(bm_subtract);

draw_surface(sf_mask,0,0);

draw_surface_ext(sf_mask1,0,0,1,1,0,c_white,0.3);

draw_set_blend_mode(bm_normal);

surface_reset_target();



draw_set_blend_mode(bm_normal);
surface_set_target(application_surface)

var r_1;
r_1=3;
draw_surface(sf_inline,0,0);
