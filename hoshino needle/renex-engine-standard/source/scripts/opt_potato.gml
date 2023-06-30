//snap-in for animation toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("potato",!settings("potato"))
        }
    }break
    case opt_text: {
        return "Graphics"
    }break
    case opt_value: {
        return pick(settings("potato"),"Fancy","Fast")
    }break
    case opt_end:{
        sprite=sprPlayerIdle
        image_speed=0.2
    }break
}
