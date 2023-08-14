#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
warpCoord[0]=noone
warpCoord[1]=noone
warpToPlayerstart=noone
warpid=""
warpsound=""
autosave=false
roomTo=room
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
input_clear()
kget=real(string_digits(room_get_name(room)))
if(difficulty>1) kget+=200
if(kget>0&&kget<=100) {settings("normalberry",max(kget,settings("normalberry")))}
else if(kget<=200&&kget>100) {
settings("bronzeberry",max(kget-100,settings("bronzeberry")))
}
else if(kget>200&&kget<=300) {settings("silverberry",max(kget-200,settings("silverberry")))}
else if(kget<=400&&kget>300) {
settings("goldberry",max(kget-300,settings("goldberry")))
}
if (warpToPlayerstart) {
    if (warpsound!="") sound_play(warpsound)
    move_player(warpToPlayerstart.x+17,warpToPlayerstart.y+23,0)
} else if (warpX==noone && warpY==noone && roomTo=room) {
    if (global.warping) exit
global.warping=true
if (argument_count>=2 && !Player.dead) {
    move_player(argument[1],argument[2],0)
} else Player.dead=1

    persistent=1
    room_goto_next()
    instance_destroy()
} else {
    collect_items()
    //input_clear()
    if (roomTo!=room) {
        if (warpsound!="") {
            persistent=1
        }
        if (warpX==noone && warpY==noone) {
            warp_to(roomTo)
        } else {
            warp_to(roomTo,warpX,warpY)
        }
        global.warp_id=warpid
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field roomTo: room
//field warpCoord: xy
//field warpid: string
//field warpToPlayerstart: instance - (pick a PlayerStart)
//field warpsound: string

if (persistent && warpsound!="") {
    //we are coming from a previous room, and we have to play a sound
    sound_play(warpsound)
    instance_destroy()
} else {
    warpX=warpCoord[0]
    warpY=warpCoord[1]
    if (warpToPlayerstart)
        if (warpToPlayerstart.object_index!=PlayerStart)
            warpToPlayerstart=noone
}
