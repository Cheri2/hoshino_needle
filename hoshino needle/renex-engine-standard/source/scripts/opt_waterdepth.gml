//snap-in for valign save toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        if (global.key_pressed[key_jump] || global.key_pressed[key_left] || global.key_pressed[key_right]) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("waterdepth",(settings("waterdepth")+1) mod 4)
        }
    }break
    case opt_text: {
        return "Water Layer"
    }break
    case opt_value: {
        return pick(settings("waterdepth"),"Behind Both","Behind Player", "Behind Spike", "Above Both")
    }break
    case opt_end:{
    }break
}
