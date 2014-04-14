// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder30;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 VARt1;
    vec2 VARorig_tex;
};
out_vertex _co1;
orig _ORIG1;
vec4 _r0009;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 OrigTextureSize;
COMPAT_ATTRIBUTE vec2 OrigTexCoord;
void main()
{
    vec2 _ps;
    _r0009 = VertexCoord.x*MVPMatrix[0];
    _r0009 = _r0009 + VertexCoord.y*MVPMatrix[1];
    _r0009 = _r0009 + VertexCoord.z*MVPMatrix[2];
    _r0009 = _r0009 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0009;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/OrigTextureSize.x, 1.00000000E+00/OrigTextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    VARorig_tex = OrigTexCoord;
    VARt1 = vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    gl_Position = _r0009;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder34;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 VARt1;
    vec2 VARorig_tex;
};
vec4 _ret_0;
vec3 _TMP8;
float _TMP9;
float _TMP11;
float _TMP12;
float _TMP7;
vec4 _TMP6;
vec4 _TMP10;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
out_vertex _co1;
uniform sampler2D Texture;
orig _ORIG1;
input_dummy _IN1;
vec2 _x0023;
vec2 _val0025;
vec2 _c0027;
vec2 _c0029;
vec4 _r0033;
vec4 _TMP36;
vec4 _TMP42;
vec4 _x0045;
float _x0055;
float _x0059;
float _TMP62;
float _x0065;
float _t0069;
COMPAT_VARYING vec4 TEX0;
 
uniform sampler2D OrigTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    float _info1;
    vec3 _color;
    _x0023 = TEX0.xy*TextureSize;
    _TMP0 = fract(_x0023);
    _pos = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _val0025 = vec2(float((_pos.x > 0.00000000E+00)), float((_pos.y > 0.00000000E+00)));
    _dir = _val0025 - vec2(float((_pos.x < 0.00000000E+00)), float((_pos.y < 0.00000000E+00)));
    _g1 = _dir*VARt1.xy;
    _g2 = _dir*VARt1.zw;
    _c0027 = VARorig_tex + _g1;
    _TMP1 = COMPAT_TEXTURE(OrigTexture, _c0027);
    _c0029 = VARorig_tex + _g2;
    _TMP2 = COMPAT_TEXTURE(OrigTexture, _c0029);
    _TMP3 = COMPAT_TEXTURE(OrigTexture, VARorig_tex);
    _r0033 = _dir.x*vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00);
    _r0033 = _r0033 + _dir.y*vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00);
    _TMP10 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _r0033);
    _TMP36 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP10);
    _x0045 = _TMP36 + 5.00000000E-01;
    _TMP42 = floor(_x0045);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP7 = dot(_TMP6, _TMP42);
    _info1 = 2.55000000E+02*_TMP7 + 5.00000000E-01;
    _x0055 = _info1/2.00000000E+00;
    if (_x0055 < 0.00000000E+00) { 
        _x0059 = -_x0055;
        _TMP12 = floor(_x0059);
        _TMP11 = -_TMP12;
    } else {
        _TMP11 = floor(_x0055);
    } 
    _TMP9 = _x0055 - _TMP11;
    _x0065 = _TMP9 + 5.00000000E-01;
    _TMP62 = floor(_x0065);
    _TMP8 = _TMP2.xyz + _TMP11*(_TMP1.xyz - _TMP2.xyz);
    _t0069 = _TMP62*5.00000000E-01;
    _color = _TMP3.xyz + _t0069*(_TMP8 - _TMP3.xyz);
    _ret_0 = vec4(_color.x, _color.y, _color.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
