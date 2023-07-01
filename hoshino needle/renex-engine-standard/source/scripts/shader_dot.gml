///shader_rainbow()
//applies an example rainbow effect

shader_vertex_set_passthrough()
shader_pixel_set(unpack_shader(ps3_dot))
//shader uniforms
shader_pixel_uniform_f("_iResolution",200,102)
shader_pixel_uniform_f("_iTime",current_time/24000)
