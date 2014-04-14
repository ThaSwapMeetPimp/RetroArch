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
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0010;
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
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0010 = VertexCoord.x*MVPMatrix[0];
    _r0010 = _r0010 + VertexCoord.y*MVPMatrix[1];
    _r0010 = _r0010 + VertexCoord.z*MVPMatrix[2];
    _r0010 = _r0010 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARt1 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = _texCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = _texCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _r0010;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = vec4(float(_r0010.x), float(_r0010.y), float(_r0010.z), float(_r0010.w));
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
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
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
vec4 _ret_0;
vec3 _TMP54;
vec3 _TMP65;
float _TMP64;
float _TMP63;
float _TMP62;
vec3 _TMP46;
vec3 _TMP48;
vec3 _TMP50;
vec3 _TMP52;
vec3 _TMP53;
vec3 _TMP51;
vec3 _TMP49;
vec3 _TMP47;
vec4 _TMP39;
vec4 _TMP38;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
float _TMP66;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0080;
vec4 _r0124;
vec4 _r0134;
vec4 _r0144;
vec4 _r0154;
vec4 _r0164;
vec4 _r0174;
vec4 _TMP185;
vec4 _a0188;
vec4 _TMP191;
vec4 _a0194;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP203;
vec4 _a0206;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP215;
vec4 _a0218;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP227;
vec4 _a0230;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP239;
vec4 _a0242;
vec4 _TMP245;
vec4 _a0248;
vec4 _TMP251;
vec4 _a0254;
vec4 _TMP255;
vec4 _a0258;
vec4 _TMP259;
vec4 _a0262;
vec4 _TMP263;
vec4 _a0266;
vec4 _TMP267;
vec4 _a0270;
vec4 _TMP273;
vec4 _a0276;
vec4 _TMP277;
vec4 _a0280;
vec4 _TMP281;
vec4 _a0284;
vec4 _TMP285;
vec4 _a0288;
vec4 _TMP289;
vec4 _a0292;
vec4 _TMP293;
vec4 _a0296;
vec4 _TMP297;
vec4 _a0300;
vec4 _TMP301;
vec4 _a0304;
vec4 _TMP305;
vec4 _a0308;
vec4 _TMP309;
vec4 _a0312;
vec4 _TMP313;
vec4 _a0316;
vec3 _TMP341;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A2;
    vec3 _B2;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _G5;
    vec3 _H5;
    vec3 _I5;
    vec3 _A0;
    vec3 _D0;
    vec3 _G0;
    vec3 _C4;
    vec3 _F4;
    vec3 _I4;
    vec4 _b1;
    vec4 _c1;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec3 _res;
    vec3 _color;
    float _ddy;
    float _v_weight_00;
    vec3 _coords10;
    vec3 _colorNB;
    float _v_weight_10;
    _x0080 = TEX0.xy*TextureSize;
    _fp = fract(_x0080);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.xw);
    _A2 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, VARt2.yw);
    _B2 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, VARt2.zw);
    _C = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = COMPAT_TEXTURE(Texture, VARt3.xw);
    _D = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = COMPAT_TEXTURE(Texture, VARt3.yw);
    _E = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = COMPAT_TEXTURE(Texture, VARt3.zw);
    _F = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = COMPAT_TEXTURE(Texture, VARt4.xw);
    _G = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = COMPAT_TEXTURE(Texture, VARt4.yw);
    _H = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = COMPAT_TEXTURE(Texture, VARt4.zw);
    _I = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = COMPAT_TEXTURE(Texture, VARt5.xw);
    _G5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = COMPAT_TEXTURE(Texture, VARt5.yw);
    _H5 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = COMPAT_TEXTURE(Texture, VARt5.zw);
    _I5 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = COMPAT_TEXTURE(Texture, VARt6.xy);
    _A0 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP16 = COMPAT_TEXTURE(Texture, VARt6.xz);
    _D0 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP17 = COMPAT_TEXTURE(Texture, VARt6.xw);
    _G0 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _TMP18 = COMPAT_TEXTURE(Texture, VARt7.xy);
    _C4 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP19 = COMPAT_TEXTURE(Texture, VARt7.xz);
    _F4 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _TMP20 = COMPAT_TEXTURE(Texture, VARt7.xw);
    _I4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP66 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.w = float(_TMP66);
    _b1 = vec4(float(_r0124.x), float(_r0124.y), float(_r0124.z), float(_r0124.w));
    _TMP66 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.w = float(_TMP66);
    _c1 = vec4(float(_r0134.x), float(_r0134.y), float(_r0134.z), float(_r0134.w));
    _TMP66 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.w = float(_TMP66);
    _e1 = vec4(float(_r0144.x), float(_r0144.y), float(_r0144.z), float(_r0144.w));
    _TMP66 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.w = float(_TMP66);
    _i4 = vec4(float(_r0154.x), float(_r0154.y), float(_r0154.z), float(_r0154.w));
    _TMP66 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.w = float(_TMP66);
    _i5 = vec4(float(_r0164.x), float(_r0164.y), float(_r0164.z), float(_r0164.w));
    _TMP66 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.x = float(_TMP66);
    _TMP66 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.y = float(_TMP66);
    _TMP66 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.z = float(_TMP66);
    _TMP66 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.w = float(_TMP66);
    _h5 = vec4(float(_r0174.x), float(_r0174.y), float(_r0174.z), float(_r0174.w));
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 5.00000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > 0.00000000E+00);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 2.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > 0.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 5.00000000E-01);
    _a0188 = _b1.wxyz - _b1;
    _TMP185 = abs(_a0188);
    _TMP27 = bvec4(_TMP185.x < 1.50000000E+01, _TMP185.y < 1.50000000E+01, _TMP185.z < 1.50000000E+01, _TMP185.w < 1.50000000E+01);
    _a0194 = _b1.wxyz - _c1;
    _TMP191 = abs(_a0194);
    _TMP28 = bvec4(_TMP191.x < 1.50000000E+01, _TMP191.y < 1.50000000E+01, _TMP191.z < 1.50000000E+01, _TMP191.w < 1.50000000E+01);
    _a0200 = _b1.zwxy - _b1.yzwx;
    _TMP197 = abs(_a0200);
    _TMP29 = bvec4(_TMP197.x < 1.50000000E+01, _TMP197.y < 1.50000000E+01, _TMP197.z < 1.50000000E+01, _TMP197.w < 1.50000000E+01);
    _a0206 = _b1.zwxy - _c1.zwxy;
    _TMP203 = abs(_a0206);
    _TMP30 = bvec4(_TMP203.x < 1.50000000E+01, _TMP203.y < 1.50000000E+01, _TMP203.z < 1.50000000E+01, _TMP203.w < 1.50000000E+01);
    _a0212 = _e1 - _c1.wxyz;
    _TMP209 = abs(_a0212);
    _TMP31 = bvec4(_TMP209.x < 1.50000000E+01, _TMP209.y < 1.50000000E+01, _TMP209.z < 1.50000000E+01, _TMP209.w < 1.50000000E+01);
    _a0218 = _b1.wxyz - _h5.yzwx;
    _TMP215 = abs(_a0218);
    _TMP32 = bvec4(_TMP215.x < 1.50000000E+01, _TMP215.y < 1.50000000E+01, _TMP215.z < 1.50000000E+01, _TMP215.w < 1.50000000E+01);
    _a0224 = _b1.wxyz - _i4;
    _TMP221 = abs(_a0224);
    _TMP33 = bvec4(_TMP221.x < 1.50000000E+01, _TMP221.y < 1.50000000E+01, _TMP221.z < 1.50000000E+01, _TMP221.w < 1.50000000E+01);
    _a0230 = _b1.zwxy - _h5;
    _TMP227 = abs(_a0230);
    _TMP34 = bvec4(_TMP227.x < 1.50000000E+01, _TMP227.y < 1.50000000E+01, _TMP227.z < 1.50000000E+01, _TMP227.w < 1.50000000E+01);
    _a0236 = _b1.zwxy - _i5;
    _TMP233 = abs(_a0236);
    _TMP35 = bvec4(_TMP233.x < 1.50000000E+01, _TMP233.y < 1.50000000E+01, _TMP233.z < 1.50000000E+01, _TMP233.w < 1.50000000E+01);
    _a0242 = _e1 - _c1.zwxy;
    _TMP239 = abs(_a0242);
    _TMP36 = bvec4(_TMP239.x < 1.50000000E+01, _TMP239.y < 1.50000000E+01, _TMP239.z < 1.50000000E+01, _TMP239.w < 1.50000000E+01);
    _a0248 = _e1 - _c1;
    _TMP245 = abs(_a0248);
    _TMP37 = bvec4(_TMP245.x < 1.50000000E+01, _TMP245.y < 1.50000000E+01, _TMP245.z < 1.50000000E+01, _TMP245.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c1.z && _b1.y != _c1.z, _e1.y != _c1.w && _b1.z != _c1.w, _e1.z != _c1.x && _b1.w != _c1.x, _e1.w != _c1.y && _b1.x != _c1.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c1.x && _b1.x != _c1.x, _e1.y != _c1.y && _b1.y != _c1.y, _e1.z != _c1.z && _b1.z != _c1.z, _e1.w != _c1.w && _b1.w != _c1.w);
    _a0254 = _e1 - _c1;
    _TMP251 = abs(_a0254);
    _a0258 = _e1 - _c1.zwxy;
    _TMP255 = abs(_a0258);
    _a0262 = _c1.wxyz - _h5;
    _TMP259 = abs(_a0262);
    _a0266 = _c1.wxyz - _h5.yzwx;
    _TMP263 = abs(_a0266);
    _a0270 = _b1.zwxy - _b1.wxyz;
    _TMP267 = abs(_a0270);
    _TMP38 = _TMP251 + _TMP255 + _TMP259 + _TMP263 + 4.00000000E+00*_TMP267;
    _a0276 = _b1.zwxy - _b1.yzwx;
    _TMP273 = abs(_a0276);
    _a0280 = _b1.zwxy - _i5;
    _TMP277 = abs(_a0280);
    _a0284 = _b1.wxyz - _i4;
    _TMP281 = abs(_a0284);
    _a0288 = _b1.wxyz - _b1;
    _TMP285 = abs(_a0288);
    _a0292 = _e1 - _c1.wxyz;
    _TMP289 = abs(_a0292);
    _TMP39 = _TMP273 + _TMP277 + _TMP281 + _TMP285 + 4.00000000E+00*_TMP289;
    _edr = bvec4(_TMP38.x < _TMP39.x && _interp_restriction_lv1.x, _TMP38.y < _TMP39.y && _interp_restriction_lv1.y, _TMP38.z < _TMP39.z && _interp_restriction_lv1.z, _TMP38.w < _TMP39.w && _interp_restriction_lv1.w);
    _a0296 = _b1.wxyz - _c1.zwxy;
    _TMP293 = abs(_a0296);
    _a0300 = _b1.zwxy - _c1;
    _TMP297 = abs(_a0300);
    _edr_left = bvec4((2.00000000E+00*_TMP293).x <= _TMP297.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP293).y <= _TMP297.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP293).z <= _TMP297.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP293).w <= _TMP297.w && _interp_restriction_lv2_left.w);
    _a0304 = _b1.wxyz - _c1.zwxy;
    _TMP301 = abs(_a0304);
    _a0308 = _b1.zwxy - _c1;
    _TMP305 = abs(_a0308);
    _edr_up = bvec4(_TMP301.x >= (2.00000000E+00*_TMP305).x && _interp_restriction_lv2_up.x, _TMP301.y >= (2.00000000E+00*_TMP305).y && _interp_restriction_lv2_up.y, _TMP301.z >= (2.00000000E+00*_TMP305).z && _interp_restriction_lv2_up.z, _TMP301.w >= (2.00000000E+00*_TMP305).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a0312 = _e1 - _b1.wxyz;
    _TMP309 = abs(_a0312);
    _a0316 = _e1 - _b1.zwxy;
    _TMP313 = abs(_a0316);
    _px = bvec4(_TMP309.x <= _TMP313.x, _TMP309.y <= _TMP313.y, _TMP309.z <= _TMP313.z, _TMP309.w <= _TMP313.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP47 = _F;
        } else {
            _TMP47 = _H;
        } 
        _TMP46 = _TMP47;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP49 = _B2;
            } else {
                _TMP49 = _F;
            } 
            _TMP48 = _TMP49;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP51 = _D;
                } else {
                    _TMP51 = _B2;
                } 
                _TMP50 = _TMP51;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP53 = _H;
                    } else {
                        _TMP53 = _D;
                    } 
                    _TMP52 = _TMP53;
                } else {
                    _TMP52 = _E;
                } 
                _TMP50 = _TMP52;
            } 
            _TMP48 = _TMP50;
        } 
        _TMP46 = _TMP48;
    } 
    _res = vec3(float(_TMP46.x), float(_TMP46.y), float(_TMP46.z));
    _TMP62 = pow(_res.x, 2.40000010E+00);
    _TMP63 = pow(_res.y, 2.40000010E+00);
    _TMP64 = pow(_res.z, 2.40000010E+00);
    _color = vec3(_TMP62, _TMP63, _TMP64);
    _ddy = _fp.y - 5.00000000E-01;
    _v_weight_00 = _ddy/5.00000000E-01;
    if (_v_weight_00 > 1.00000000E+00) { 
        _v_weight_00 = 1.00000000E+00;
    } 
    _v_weight_00 = 1.00000000E+00 - _v_weight_00*_v_weight_00;
    _v_weight_00 = _v_weight_00*_v_weight_00;
    _color = _color*vec3(_v_weight_00, _v_weight_00, _v_weight_00);
    if (_ddy > 0.00000000E+00) { 
        _coords10 = vec3(float(_H.x), float(_H.y), float(_H.z));
        _ddy = 1.00000000E+00 - _ddy;
    } else {
        _coords10 = vec3(float(_B2.x), float(_B2.y), float(_B2.z));
        _ddy = 1.00000000E+00 + _ddy;
    } 
    _TMP62 = pow(_coords10.x, 2.40000010E+00);
    _TMP63 = pow(_coords10.y, 2.40000010E+00);
    _TMP64 = pow(_coords10.z, 2.40000010E+00);
    _colorNB = vec3(_TMP62, _TMP63, _TMP64);
    _v_weight_10 = _ddy/5.00000000E-01;
    if (_v_weight_10 > 1.00000000E+00) { 
        _v_weight_10 = 1.00000000E+00;
    } 
    _v_weight_10 = 1.00000000E+00 - _v_weight_10*_v_weight_10;
    _v_weight_10 = _v_weight_10*_v_weight_10;
    _color = _color + _colorNB*vec3(_v_weight_10, _v_weight_10, _v_weight_10);
    _color = _color*vec3( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _TMP62 = pow(_color.x, 4.54545438E-01);
    _TMP63 = pow(_color.y, 4.54545438E-01);
    _TMP64 = pow(_color.z, 4.54545438E-01);
    _TMP54 = vec3(_TMP62, _TMP63, _TMP64);
    _TMP65 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP54);
    _TMP341 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP65);
    _ret_0 = vec4(_TMP341.x, _TMP341.y, _TMP341.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
