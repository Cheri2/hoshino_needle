//snap-in for left+right input options

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            var h; if (global.key_pressed[key_jump]) h=1
            else h=global.key_pressed[key_right]-global.key_pressed[key_left]
            settings("bowclr",modwrap(settings("bowclr")+h,0,6))
        }
    }break
    case opt_text: {
        return "Bow Color"
    }break
    case opt_value: {
        return pick(settings("bowclr"),"Classic","Dichotomy","Dichotomy (Celeste)","Trichotomy","Tetrachotomy","No Bow")
    }break
}
