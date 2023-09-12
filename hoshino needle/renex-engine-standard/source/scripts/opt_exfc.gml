//snap-in for animation toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("exfc",!settings("exfc"))
        }
    }break
    case opt_text: {
        return "Low Latency"
    }break
    case opt_value: {
        return pick(settings("exfc"),"No", "Yes (Buggy!!)")
    }break
    case opt_end:{
        sprite=sprPlayerIdle
        image_speed=0.2
    }break
}
