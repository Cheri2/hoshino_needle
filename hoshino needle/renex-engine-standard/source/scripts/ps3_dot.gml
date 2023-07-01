return shader_pixel_create_base64("
    eJyVkjFrFEEUx38zu7c5RVhQsBJcBEEtDi9B5IqY1VyhEAuT28bmlOQOFy5euIud
    xUhA23yECVjdtWqRKq0Q8QOkvcLGD2DjytvZvexp5S4DM7/35r35/2fwsux31mC9
    8/DRNeAAwMsyDcgaBW+BNqDxUVymIxzYyVkNxVUGBeumm73xcPBmPx2+ZjqdKjzc
    KOOddLfHlJzJ7769cXele5en6fZoOB7296Nbm7ejxxtbG9HWq5c7vVG0PtzdSwe9
    UdRqLLcarXvLjZVms8kzqEFot999+HT0+fv9j5M7q2DWhCtCexZ+jc/CJyeuSxQL
    14T22+npKpVPuEdoZd7vB3G//z4+vvDlWHiQ85MYiA9+3XgArF0HXQMD3mEgNqCN
    T2JrIoxLxqdtoX1YrmFmArAuVxkfityLBl4Y+GEUaIU2AYn1wVcoA5lRJKYGc6bA
    BExsQGav5Hscq8YVWEVib4LW6HlcesPEAEaTVNhizZJV49Wack5hz+fxn/lQTKzo
    gLpRZPmZxRtIci2ljpIt9nSsGv9bh7ClyvlKP50e8dPNz/v8vzav0KaLeuK/V/FK
    fJNa5zlLeb7HrOgpa7nvak/HqvGyp3sHjpU5ar7GMn8P5b6Z8Qpvqwwm/7CA7Gix
    p+QV91J3TIOVkd9bvZ7Hswz+AOv6u14=
")

/*
    void mainImage( out vec4 fragColor, in vec2 fragCoord )
    {
        // normalized pixel coordinates
        vec2 p = 6.0*fragCoord/iResolution.xy;

        // pattern
        float f = sin(p.x + sin(2.0*p.y + iTime)) +
                  sin(length(p)+iTime) +
                  0.5*sin(p.x*2.5+iTime);

        // color
        vec3 col = 0.1 + 0.1*cos(f+vec3(0,2.1,4.2));

        // putput to screen
        fragColor = vec4(col,1.0);
    }
*/
