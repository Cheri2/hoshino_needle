var s,full;

full=settings("fullscreen")
exfc=settings("exfc")
if (full) {
    if(exfc) {
        window_set_fullscreen_ext(true)
    }
    else {
    window_set_fullscreen_ext(false)
    window_set_region_scale(-1,1)
    s=min(global.dw/global.width,global.dh/global.height)
    global.rw=round(global.width*s)
    global.rh=round(global.height*s)
    }
} else {
    window_set_cursor(cr_default)
    window_set_fullscreen_ext(false)
    window_set_region_scale(settings("screenscale"),1)
    global.rw=global.width*settings("screenscale")
    global.rh=global.height*settings("screenscale")
}

if(!exfc) window_set_fullscreen(full)

if (application_surface!=noone) surface_forget("application_surface") application_surface=noone
if (dequanto_surface!=noone) surface_forget("dequanto_surface") dequanto_surface=noone

if(!exfc || !full) window_resize_buffer(global.rw,global.rh)
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

global.deq_fac=median(2,round(max(global.rw/global.width,global.rh/global.height)),8)
