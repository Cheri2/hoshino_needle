#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=the player always single jumps
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=refreshes double jump
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface=false
event_inherited()
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field surface: bool - wavy water surface

if (surface) {
    with (instance_create(x,y,WaterSurface)) {
        find=other.id
        construct()
    }
}
