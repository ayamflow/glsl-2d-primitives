# glsl-2d-primitives

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

SDF functions to draw 2d shapes in glsl.
Antialiased using [glsl-aastep](https://github.com/glslify/glsl-aastep).

![glsl-2d-primitives](https://i.imgur.com/qJmmSxA.jpg)

### Installation :package:

```bash
npm i glsl-2d-primitives -S
```

### Usagez :book:

#### circle(vec2 st, float radius)
#### rectangle(vec2 st, vec2 size)
#### polygon(vec2 st, float radius, float sides)

### Example :floppy_disk:

```glsl
#pragma glslify: circle = require(glsl-2d-primitives/circle)
#pragma glslify: rectangle = require(glsl-2d-primitives/rectangle)
#pragma glslify: polygon = require(glsl-2d-primitives/polygon)

attribute vec2 vUv;
uniform sampler2D map;

void main() {
    gl_FragColor = texture2D(map, vUv);
    // Mask the image with a centered rectangle
    gl_FragColor.a = rectangle(vUv, vec2(0.4, 0.6));

    // Draw a pentagon, without alpha masking
    gl.FragColor = vec4(vec3(polygon(vUv, 0.4, 5.0)), 1.0);

    // Mask the image with a ring, combining 2 circles
    float ring = circle(vUv, 0.5) * (1.0 - circle(vUv, 0.52));
    gl_FragColor.a = ring;
}
```

[Demo](http://thebookofshaders.com/edit.php?log=180326195904)

### See also
- https://thebookofshaders.com/07/
- https://github.com/glslify/glsl-aastep
- https://github.com/marklundin/glsl-sdf-primitives

### License :pencil:

MIT. See [LICENSE](http://github.com/ayamflow/glsl-layer/blob/master/LICENSE) for details.