///shader_rainbow()
//applies an example rainbow effect

shader_vertex_set_passthrough()
shader_pixel_set(unpack_shader(ps3_pink))
shader_pixel_uniform_f("_iTime",1+current_time/1300)
shader_pixel_uniform_f("_iResolution",400,304,1)
