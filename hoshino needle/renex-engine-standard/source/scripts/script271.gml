//shader uniforms
shader_vertex_set_passthrough()
shader_pixel_set(unpack_shader(script270))
//shader uniforms
shader_pixel_uniform_f("_iTime",1+current_time/400000)
shader_pixel_uniform_f("_iResolution",400,304,1)
