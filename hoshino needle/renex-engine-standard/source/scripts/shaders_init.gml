global.lighting_vshader=unpack_shader(vs2_shadow)
global.lighting_pshader=unpack_shader(ps3_light)
global.lighting_blur_pshader=unpack_shader(ps2_blur)

var m;m=d3d_model_create()
d3d_model_primitive_begin(m,pr_trianglestrip)
    d3d_model_vertex_color(m,0,0,0,0,1)
    d3d_model_vertex_color(m,0,0,0,0,0)
    d3d_model_vertex_color(m,1,0,0,0,1)
    d3d_model_vertex_color(m,1,0,0,0,0)
    d3d_model_vertex_color(m,1,1,0,0,1)
    d3d_model_vertex_color(m,1,1,0,0,0)
    d3d_model_vertex_color(m,0,1,0,0,1)
    d3d_model_vertex_color(m,0,1,0,0,0)
    d3d_model_vertex_color(m,0,0,0,0,1)
    d3d_model_vertex_color(m,0,0,0,0,0)
d3d_model_primitive_end(m)
d3d_model_primitive_begin(m,pr_trianglestrip)
    d3d_model_vertex_color(m,0,0,0,0,0)
    d3d_model_vertex_color(m,1,0,0,0,0)
    d3d_model_vertex_color(m,1,1,0,0,0)
    d3d_model_vertex_color(m,0,1,0,0,0)
    d3d_model_vertex_color(m,0,0,0,0,0)
d3d_model_primitive_end(m)

global.shadowcastmodel=m