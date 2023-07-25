#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0

font=fntSignpost
color=$ffffff

active=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_set_font(fntFileSmall)
draw_set_color(c_black)
switch(image_index) {
case 0:
draw_text(x+32,y+10,string(settings("normalberry"))+"/100")
break;
case 1:
draw_text(x+32,y+10,string(settings("bronzeberry"))+"/20")
break;
case 2:
draw_text(x+32,y+10,string(settings("silverberry"))+"/100")
break;
case 3:
draw_text(x+32,y+10,string(settings("goldberry"))+"/20")
break;
case 4:
draw_text(x+32,y+10,string(settings("stellaberry"))+"/6")
break;
}
draw_set_color(c_white)
#define Trigger_Draw End
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(position_meeting(mouse_x,mouse_y,self)) {
switch(image_index) {
case 0:
draw_sign_text(x+16,y-10,font,color,"A-Side",true)
break;
case 1:
draw_sign_text(x+16,y-10,font,color,"B-Side",true)
break;
case 2:
draw_sign_text(x+16,y-10,font,color,"A-Side VeryHard",true)
break;
case 3:
draw_sign_text(x+16,y-10,font,color,"B-Side VeryHard",true)
break;
case 4:
draw_sign_text(x+16,y-10,font,color,"Stella's Gift",true)
break;
}
}
