#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
k=get_integer("1 - 100 (F12 to return here!)",-1)
if(k>0&&k<101) {
execute_string("warp_to(rm"+string(k)+")")
}
else kill_player()
