#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mydifficulty=2
event_inherited()
sprite_index=sprSaveVeryHard
if(difficulty>=2 && !place_meeting(x,y,AutoSaver)) {
    instance_destroy()
}
