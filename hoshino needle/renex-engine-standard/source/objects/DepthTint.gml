#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
color=$ff00ff
amount=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
color=make_color_hsv(120+60*sin(current_time/6000),254,254)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field depth: number
//field color: color
//field amount: number(0,100)
/*desc
    Applies a tint effect to a desired color.
*/
/*preview
    depth=Field("depth")
    shader_pixel_set(ShaderFromPack("ps2_tint"))
    shader_pixel_uniform_color("colorto",Field("color"))
    shader_pixel_uniform_f("amount",median(0,Field("amount"),100)/100)
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_tint(color,amount)
