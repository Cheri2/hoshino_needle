return shader_pixel_create_base64("
    eJx9kb1KA0EUhb/5CaQQFhSsBLfUJpCIYCoxaSy00CimW9Ss7oIhIVkh5aSztLTc
    wso8hC+T53DkbpZFIsrAcM6538zcmVHa+y9/RPfqpLMDLAClvTeAeBS8A31AMoUm
    kRyYAZoaim1eyuytyCyKzSqLHodR53YaX8Wz7HkSY9lAFaOsj9NZ/HQap49JxmKx
    kJN+12/SQZYwnkat6I7z9H4ymo4esnDvcj88Peudhb3kdhBPwu5oOE6f4knYbrTa
    jfZhq3HQbDa5gBoE+WpHdywTuM9daRdeqQe5KrRxQKEVytlK6yrXGKdYzkUbVJUb
    tKuV2mKcYTnvFM8WOFg66stcvCKQ9ZXXBE7/8IZA1lbeEjhb+j5Y6Qv8XM6F6zKT
    /ryDjxx8LhcRTnHtFLit8g4KP1/VREvNu79Yvcbqf1izxpp/WLvG2pKFesUWf1Ff
    vZv38A0qKHnq
")

/*
    //
    // Outline shader
    //
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    uniform float pixelWidth;
    uniform float pixelHeight;
    void main()
    {
      // Compute the textel offsets
      vec2 offsetX;
      offsetX.x = pixelWidth;
      vec2 offsetY;
      offsetY.y = pixelHeight;
      float originAlpha = sign(texture2D(gm_BaseTexture, v_vTexcoord).a);
      float alpha = originAlpha;
      // Combine the alpha from all surrounding textels.
      alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
      alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
      alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
      alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);
      // Only blend with the image_blend factor if the original alpha was 0.
      // That means the image_blend parameter is the outline color.
      gl_FragColor = (v_vColour * (1.0 - originAlpha)) +
                     texture2D(gm_BaseTexture, v_vTexcoord);
      // Use the computed alpha
      gl_FragColor.a = alpha;
    }
*/
