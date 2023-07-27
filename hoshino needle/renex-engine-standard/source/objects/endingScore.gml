#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
k=savedatap("cleard")
draw_set_halign(0)
draw_set_valign(0)
draw_set_font(fntFileSmall)
draw_set_color(c_white)
draw_text(40,240,"Attempts : "+string(k))
if(difficulty==2) {
 rank = "Wow, you're a needle god. [SS Rank]"
 berries =6
}
else if(k<5000) {
 rank = "You arrived even before sunset! You're fast. [S+ Rank]"
 berries=6
}
else if(k<11000) {
 rank = "First shooting star is falling. Let's go. [S Rank]"
 berries=5
}
else if(k<18000) {
 rank = "It's midnight? We still have much time from dawn. [A Rank]"
 berries=4
}
else if(k<26000) {
 rank = "It's a bit late, but meteor stream won't end today so it's fine. [B Rank]"
 berries=3
}
else if(k<36000) {
 rank = "Was it a tough journey? Please take care of yourself. [C Rank]"
 berries=2
}
else {
 rank = "You're at least really persistent. Thank you. [D Rank]"
 berries=1
}
settings("stellaberry",berries)
draw_text(40,270,rank)
draw_text(40,300,string(berries)+" Stella Berries as the reward :3")
