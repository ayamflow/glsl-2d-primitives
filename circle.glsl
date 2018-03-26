#pragma glslify: aastep = require(glsl-aastep)

float circle(vec2 st, float radius) {
    return aastep(radius, length(st - vec2(0.5)));
}

#pragma glslify: export(circle);
