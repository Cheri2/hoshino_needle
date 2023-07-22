//snap-in for valign save toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("pform",!settings("pform"))
        }
    }break
    case opt_text: {
        return "Platforms"
    }break
    case opt_value: {
        return pick(settings("pform"),"Snapless","Classic (BAD!)")
    }break
    case opt_end:{
    }break
}
