#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sf_mask=surface_create(800,608);
sf_mask1=surface_create(800,608);
sf_inline=surface_create(800,608);
sf_spike=surface_create(800,608);
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
surface_free(sf_spike)
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
if !surface_exists(sf_spike){
sf_spike=surface_create(800,608);
}


surface_set_target(sf_mask)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

with Block{
if(object_index=Block)
draw_self();
}


draw_set_blend_mode(bm_normal);

surface_reset_target();

var r_,i,j;
r_=4;


surface_set_target(sf_mask1)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

for(j=-r_; j<=r_; j+=4){
    for(i=-r_; i<=r_; i+=4){
        draw_surface(sf_mask,i,j);
    }
}


draw_set_blend_mode(bm_normal);

surface_reset_target();


surface_set_target(sf_inline)

draw_clear_alpha(c_white,0.8)
draw_set_blend_mode(bm_subtract);

draw_surface(sf_mask,0,0);

draw_surface(sf_mask1,0,0);

draw_set_blend_mode(bm_normal);

surface_reset_target();



surface_set_target(sf_spike)

draw_clear_alpha(c_black,0);

with(PlayerKiller) draw_self()

draw_set_blend_mode(bm_subtract);

with(Block) if(object_index=Block) draw_self()


with(Block) if(object_index=Block) draw_self()
draw_set_blend_mode(bm_normal);
surface_set_target(application_surface)

var r_1;
r_1=3;
draw_surface(sf_spike,0,0);
draw_surface(sf_inline,0,0);
