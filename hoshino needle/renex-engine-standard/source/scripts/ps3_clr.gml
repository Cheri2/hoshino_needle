return shader_pixel_create_base64("
    eJztWE1oXFUU/t59b2bSZJLXJEUQRIMiWBfBtlgMNslkZsAKI9qfAZFACW2CgdaU
    tuJCF3eoGyHQLgrS4uKmdvWydSGI2kYQhal0UeyidCG8haAMLixUEZ+cc+597804
    qVIKFWlC4N7v/Nxzzj3fffcGfpL8mUyidnCu+hiA0wDgJ4kCQHN4wHsA6gAUAngY
    w0HCARxhrAAPj+CoxQ4t7188uXL07VPLK29hfX3dgw/5c/KDy8cWsQ7G6Fd+jp88
    tOvQc3hl+fCJlZMrS6cmntm/fWJv40Bj4sCbC0cWT0zUVo4dXz66eGJianLn1OTU
    8zsnd+3YsQP7gAIQGgAVwNTb7fYX7XZjhnCPcT174fyjs1fbjVlg7wbhCqG52m5P
    k8yufoVwH6E5s3F7z9V2Y+b0b0/OAJglvIjQTH3/6lzjnY+qpH3h/Hn2X2L/CzXg
    hxqw8NVq59mXCB9AaD59vFm58fGdyrvbds5tn/9gjvAtrD9R/a7dmAF+mVtaWmL/
    gwjN4I2npg9/Nv45gMtApUL4EEJzM/y2cjN8+fInF0dfdPGU2U9QBYINoFUDjnNe
    wwjN9vkz07sX1B7SBb7hvEY438Y05Uaxu3VDWx9AfwnMV4HVGuFbGb9QBT6kvGqU
    M+GjjH9dBS524WNpHSqMUVyEj8u+4OzG7WlgdePnfS9w3bal+qtWf776BKAKgAb8
    swVqDvg6QGyA+KwHKA/DGohNAARAWQN17QE6QH2tyHJPB4ARW5LHLKe5gq+Bjgaa
    hnwpBFoBLRoDA1ohMYrtAg0kZGPXGdBApH3A+GjmsET7iIyPxIxbH4Tl5UOAGULT
    PA0on9dnv75CWSuc0z6arK9QJP9a4ZpWuKOzmKIef5EZsuv58BiTmF08aPXK3Jhk
    vbrkW+SR9jj/prVRHE8JMK9zfOxjleIlXOx8rfBjGpPYUV7vsx3FEcDXPmLrU8YB
    4tYbNieaFxGbIqJ7rmsAldaV5AGautTHNkDI4wHEhv4kvpDisfIRHm/Ba2YL7nAP
    FVAimR7HdZ5LDh3OmeyLffIrIrZ1lXkJzTWyyeuUEKX+AnSsncRL8TuZ1CLW+XrJ
    epEp5fJztr39oNBcy9fF1cn5HkTMXPAxyvs6Yv3QPjs78Z/w/lAfkN4gIjOIxOYg
    mOsL0lEybyk0zVjaYxwP9QnH60FRTJarvuWqy5X0Kc/YUK6y90MagPbQ0R4upVgB
    l3hty3WlmDdN3gOP/UZ6BPHaCDrGYbROvscclpf3cpfOEek3Gkt9SFfx/gmPPZQt
    j89pD3WLUX9GehyR8RDx/iiUtIdbumzPMtIh7uX5raB4HdL30nGz1SvLxs1Wry5x
    l85ED81VOkuo9mITag9tPYbYZHnEaV9LvtLXWb2kr92c+ppsZM+lDvmzINMTn3Lm
    1e36rN9Sdr+lZ7rPgqyPsn1yWF7evU9UR3feU19mZ0G3bcjj/FkgmMtnhMf5s8BH
    iW3G8UdaM6lRh/tZ/Gd9YevH+ckeSH877grmuCBjqZsbC3c969d9x8Q3Uu56GOU5
    cdftvejJOM9dr4e7bi35hkqcFLOX467YcT/RevYcHtI+LrEu8S6L6ycd2p6W722k
    hxGb4bvuqfSeyB0PurlH2GZ7XmB5vjYUT8ZHuk9I7bv5WEbyNz6G+P2B8nHbpnws
    c/zdfOz85/lY6OFj4T7ysZDy8cpDPtrv4GZ8zHMjyHEj2IQbw324sRXXHig3tmL3
    /4obQQ83gvvIjeAhN7q+VcG/5EbvPa4fN1QfboxabtDbsZcbmZ17W9JbS7iRl7kx
    yXp1HTeAqIsbnuXGqOWGSu+ud+9jxw1luZHdfcup/ebcoLm8Z5y+Qt2+6QKWdb/p
    JI/uN51geXmeG3ROECZvA6lpqY8t8YDG93aPu973HufWK1iZ7IF7l1B+3fc4F4+z
    7d3r7A0mfl1ezjfd4+TdRb75npfe6Zyd+Jd7nJyZ/3yPs7667nE2nowbAyX3ftXA
    r/J/hwF+P5kkAf4Cnvas8A==
")

/*
    const float MATH_PI    = float( 3.14159265359 );

    void Rotate( inout vec2 p, float a )
    {
        p = cos( a ) * p + sin( a ) * vec2( p.y, -p.x );
    }

    float Circle( vec2 p, float r )
    {
        return ( length( p / r ) - 1.0 ) * r;
    }

    float Rand( vec2 c )
    {
        return fract( sin( dot( c.xy, vec2( 12.9898, 78.233 ) ) ) * 43758.5453 );
    }

    float saturate( float x )
    {
        return clamp( x, 0.0, 1.0 );
    }

    void BokehLayer( inout vec3 color, vec2 p, vec3 c )
    {
        float wrap = 450.0;
        if ( mod( floor( p.y / wrap + 0.5 ), 1.0 ) == 0.0 )
        {
            p.x += wrap * 0.5;
        }

        vec2 p2 = mod( p + 0.5 * wrap, wrap ) - 0.5 * wrap;
        vec2 cell = floor( p / wrap + 0.5 );
        float cellR = Rand( cell );

        c *= fract( cellR * 3.33 + 3.33 );
        float radius = mix( 30.0, 70.0, fract( cellR * 7.77 + 7.77 ) );
        p2.x *= mix( 0.9, 1.1, fract( cellR * 11.13 + 11.13 ) );
        p2.y *= mix( 0.9, 1.1, fract( cellR * 17.17 + 17.17 ) );

        float sdf = Circle( p2, radius );
        float circle = 1.0 - smoothstep( 0.0, 1.0, sdf * 0.04 );
        float glow     = exp( -sdf * 0.025 ) * 0.3 * ( 1.0 - circle );
        color += c * 0.3 * ( circle + glow );
    }

    void mainImage( out vec4 fragColor, in vec2 fragCoord )
    {
        vec2 uv = fragCoord.xy / iResolution.xy;
        vec2 p = ( 2.0 * fragCoord - iResolution.xy ) / iResolution.x * 1280.0;

        // background
        vec3 color = mix( vec3( 1.0, 0.6, 0.8), vec3( 0.6, 0.8, 1.0 ), dot( uv, vec2( 0.1, 1.0) ) );

        float time = iTime - 15.0;

        Rotate( p, 0.2 + time * 0.03 );
        BokehLayer( color, p + vec2( -50.0 * time +  0.0, 0.0  ), 1.0 * vec3( 0.0, 0.4,0.4 ) );
        Rotate( p, 0.3 - time * 0.05 );
        BokehLayer( color, p + vec2( -70.0 * time + 33.0, -33.0 ), 1.5 * vec3( 0.0, 0.4, 0.4 ) );
        Rotate( p, 0.5 + time * 0.07 );
        BokehLayer( color, p + vec2( -60.0 * time + 55.0, 55.0 ), 1.0 * vec3( 0.4, 0.0, 0.0 ) );
        Rotate( p, 0.9 - time * 0.03 );
        BokehLayer( color, p + vec2( -25.0 * time + 77.0, 77.0 ), 1.0 * vec3( 0.4, 0.0, 0.0 ) );
        Rotate( p, 0.0 + time * 0.05 );
        BokehLayer( color, p + vec2( -15.0 * time + 99.0, 99.0 ), 1.0 * vec3( 0.0,0.4, 0.4 ) );

        fragColor = vec4( color, 1.0 );
    }
*/
