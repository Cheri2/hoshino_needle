//snap-in for animation toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("anim",(settings("anim")+1) mod 2)
        }
        if (settings("anim")) sprite=sprPlayerRunning
        else sprite=sprPlayerRunningOld
        image_speed=0.5*50/room_speed
    }break
    case opt_text: {
        return "Player"
    }break
    case opt_value: {
        return pick(settings("anim"),"Kid","??? (After Clear)")
    }break
    case opt_end:{
        sprite=sprPlayerIdle
        image_speed=0.2
    }break
}
