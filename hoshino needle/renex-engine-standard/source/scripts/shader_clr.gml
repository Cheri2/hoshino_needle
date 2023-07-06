///shader_rainbow()
//applies an example rainbow effect

shader_vertex_set_passthrough()
shader_pixel_set(unpack_shader(ps3_clr))
//shader uniforms
shader_pixel_uniform_f("_iResolution",400,304)
shader_pixel_uniform_f("_iTime",current_time/2400)
