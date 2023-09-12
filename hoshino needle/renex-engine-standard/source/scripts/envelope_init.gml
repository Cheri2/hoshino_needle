//envelope renderer
//version 4
//renex 2021
//depends on: gm82core v1.4+
full=settings("fullscreen")
exfc=settings("exfc")
globalvar application_surface,dequanto_surface;
application_surface=noone
dequanto_surface=noone

global.dw=display_get_width()
global.dh=display_get_height()
global.dz=display_get_frequency()
global.rw=global.width
global.rh=global.height

//calculate max scaling according to screen size
global.dmaxscale=min(floorto((global.dw-100)/global.width,0.5),floorto((global.dh-100)/global.height,0.5))
settings("screenscale",min(settings("screenscale"),global.dmaxscale))
World.alarm[2]=1

global.deq_fac=2
global.APPwidth=global.width
global.APPheight=global.height
global.APPfilter=false

//we create this at runtime to make sure that its events will
//always execute last, which prevents "mystery issues".
o=object_add()
object_event_add(o,ev_step,ev_step_end,
    script_get_name(update_triggers)+"() with ("+string(World)+") {"+script_get_name(envelope_prepare)+"() "+script_get_name(fix_backgrounds)+"()}"
)
object_event_add(o,ev_other,ev_animation_end,
    "with ("+string(World)+") "+script_get_name(envelope_compose)+"()"
)
object_event_add(o,ev_other,ev_room_start,
    "set_automatic_draw(false) alarm[0]=1"
)
object_event_add(o,ev_alarm,0,
    "set_automatic_draw(true)"
)
object_event_add(o,ev_step,ev_step_normal,
    script_get_name(update_triggers)+"()"
)
object_set_persistent(o,1)
object_set_parent(o,ActiveParent)
object_set_depth(o,-10000001)
instance_create(0,0,o)
if(!exfc || !full) {    if(floor(display_get_height()*800/608)<display_get_width()) {
                _target_width = floor(display_get_height()*800/608);
    _target_height = floor(display_get_height());

    }
    else {
                _target_width = floor(display_get_width());
    _target_height = floor(display_get_width()/800/608);

    }
    global._width_diff=display_get_width()-_target_width
    global._height_diff=display_get_height()-_target_height}
else {
    if(floor(display_get_height()*800/608)<display_get_width()) {
                _target_width = floor(display_get_height()*800/608);
    _target_height = floor(display_get_height());

    }
    else {
                _target_width = floor(display_get_width());
    _target_height = floor(display_get_width()/800/608);

    }
    global._width_diff=display_get_width()-_target_width
    global._height_diff=display_get_height()-_target_height
    window_resize_buffer(display_get_width(),display_get_height())
}
global.screen_manager=o

instance_create(0,0,BackgroundDaemon)

envelope_prepare()
