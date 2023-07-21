#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_set_font(fntFileSmall)
draw_set_color(c_white)
switch(image_index) {
case 0:
draw_text(x+32,y,string(settings("normalberry")))
break;
case 1:
draw_text(x+32,y,string(settings("bronzeberry")))
break;
case 2:
draw_text(x+32,y,string(settings("silverberry")))
break;
case 3:
draw_text(x+32,y,string(settings("goldberry")))
break;
case 4:
draw_text(x+32,y,string(settings("stellaberry")))
break;
}
