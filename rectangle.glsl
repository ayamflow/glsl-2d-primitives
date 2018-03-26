#pragma glslify: aastep = require(glsl-aastep)

float rectangle(vec2 st, vec2 size) {
    size = vec2(0.5) - size * 0.5;
    vec2 uv = vec2(aastep(size.x, st.x), aastep(size.y, st.y));
    uv *= vec2(aastep(size.x, 1.0 - st.x), aastep(size.y, 1.0 - st.y));

    return uv.x * uv.y;
}

#pragma glslify: export(rectangle);
