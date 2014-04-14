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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
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
vec4 _r0011;
vec4 _v0011;
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
    _v0011 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _r0011 = _v0011.x*MVPMatrix[0];
    _r0011 = _r0011 + _v0011.y*MVPMatrix[1];
    _r0011 = _r0011 + _v0011.z*MVPMatrix[2];
    _r0011 = _r0011 + _v0011.w*MVPMatrix[3];
    _OUT._position1 = vec4(float(_r0011.x), float(_r0011.y), float(_r0011.z), float(_r0011.w));
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARt1 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = _texCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = _texCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = _OUT._position1;
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
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
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
vec3 _TMP49;
vec3 _TMP59;
vec3 _TMP64;
vec3 _TMP63;
float _TMP58;
float _TMP57;
float _TMP56;
float _TMP61;
float _TMP48;
float _TMP47;
float _TMP46;
vec3 _TMP62;
vec3 _TMP45;
vec3 _TMP44;
vec3 _TMP43;
vec3 _TMP42;
vec3 _TMP41;
vec3 _TMP40;
vec3 _TMP39;
vec3 _TMP38;
vec3 _TMP37;
vec3 _TMP36;
vec4 _TMP35;
vec4 _TMP28;
vec4 _TMP27;
vec4 _TMP65;
float _TMP60;
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
vec2 _x0079;
vec4 _r0123;
vec4 _r0133;
vec4 _r0143;
vec4 _r0153;
vec4 _r0163;
vec4 _r0173;
vec4 _x0185;
vec4 _TMP186;
vec4 _x0195;
vec4 _TMP196;
vec4 _x0205;
vec4 _TMP206;
vec4 _TMP214;
vec4 _a0217;
vec4 _TMP218;
vec4 _a0221;
vec4 _TMP222;
vec4 _a0225;
vec4 _TMP226;
vec4 _a0229;
vec4 _TMP230;
vec4 _a0233;
vec4 _TMP236;
vec4 _a0239;
vec4 _TMP240;
vec4 _a0243;
vec4 _TMP244;
vec4 _a0247;
vec4 _TMP248;
vec4 _a0251;
vec4 _TMP252;
vec4 _a0255;
vec4 _TMP256;
vec4 _a0259;
vec4 _TMP260;
vec4 _a0263;
vec4 _TMP264;
vec4 _a0267;
vec4 _TMP268;
vec4 _a0271;
vec4 _TMP272;
vec4 _a0275;
vec4 _TMP276;
vec4 _a0279;
float _t0301;
float _t0311;
vec3 _df0313;
vec3 _a0315;
vec3 _df0317;
vec3 _a0319;
vec3 _TMP332;
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
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _A1;
    vec3 _B1;
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
    vec4 _c3;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    vec3 _res;
    _x0079 = TEX0.xy*TextureSize;
    _fp = fract(_x0079);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A1 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
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
    _TMP60 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.w = float(_TMP60);
    _b1 = vec4(float(_r0123.x), float(_r0123.y), float(_r0123.z), float(_r0123.w));
    _TMP60 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.w = float(_TMP60);
    _c3 = vec4(float(_r0133.x), float(_r0133.y), float(_r0133.z), float(_r0133.w));
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.w = float(_TMP60);
    _e1 = vec4(float(_r0143.x), float(_r0143.y), float(_r0143.z), float(_r0143.w));
    _TMP60 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.w = float(_TMP60);
    _i4 = vec4(float(_r0153.x), float(_r0153.y), float(_r0153.z), float(_r0153.w));
    _TMP60 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_A1.x), float(_A1.y), float(_A1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.w = float(_TMP60);
    _i5 = vec4(float(_r0163.x), float(_r0163.y), float(_r0163.z), float(_r0163.w));
    _TMP60 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_B1.x), float(_B1.y), float(_B1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.w = float(_TMP60);
    _h5 = vec4(float(_r0173.x), float(_r0173.y), float(_r0173.z), float(_r0173.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z, _e1.y != _b1.x && _e1.y != _b1.w, _e1.z != _b1.y && _e1.z != _b1.x, _e1.w != _b1.z && _e1.w != _b1.y);
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _x0185 = (_fx - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP65 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0185);
    _TMP186 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP65);
    _fx45 = _TMP186*_TMP186*(3.00000000E+00 - 2.00000000E+00*_TMP186);
    _x0195 = (_fx_left - vec4( 6.00000024E-01, 6.00000024E-01, -8.99999976E-01, -4.00000006E-01))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 8.00000012E-01);
    _TMP65 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0195);
    _TMP196 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP65);
    _fx30 = _TMP196*_TMP196*(3.00000000E+00 - 2.00000000E+00*_TMP196);
    _x0205 = (_fx_up - vec4( 1.60000002E+00, -4.00000006E-01, -1.39999998E+00, 9.99999940E-02))/vec4( 8.00000072E-01, 8.00000012E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP65 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0205);
    _TMP206 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP65);
    _fx60 = _TMP206*_TMP206*(3.00000000E+00 - 2.00000000E+00*_TMP206);
    _a0217 = _e1 - _c3;
    _TMP214 = abs(_a0217);
    _a0221 = _e1 - _c3.zwxy;
    _TMP218 = abs(_a0221);
    _a0225 = _c3.wxyz - _h5;
    _TMP222 = abs(_a0225);
    _a0229 = _c3.wxyz - _h5.yzwx;
    _TMP226 = abs(_a0229);
    _a0233 = _b1.zwxy - _b1.wxyz;
    _TMP230 = abs(_a0233);
    _TMP27 = _TMP214 + _TMP218 + _TMP222 + _TMP226 + 4.00000000E+00*_TMP230;
    _a0239 = _b1.zwxy - _b1.yzwx;
    _TMP236 = abs(_a0239);
    _a0243 = _b1.zwxy - _i5;
    _TMP240 = abs(_a0243);
    _a0247 = _b1.wxyz - _i4;
    _TMP244 = abs(_a0247);
    _a0251 = _b1.wxyz - _b1;
    _TMP248 = abs(_a0251);
    _a0255 = _e1 - _c3.wxyz;
    _TMP252 = abs(_a0255);
    _TMP28 = _TMP236 + _TMP240 + _TMP244 + _TMP248 + 4.00000000E+00*_TMP252;
    _edr = bvec4(_TMP27.x < _TMP28.x && _interp_restriction_lv1.x, _TMP27.y < _TMP28.y && _interp_restriction_lv1.y, _TMP27.z < _TMP28.z && _interp_restriction_lv1.z, _TMP27.w < _TMP28.w && _interp_restriction_lv1.w);
    _a0259 = _b1.wxyz - _c3.zwxy;
    _TMP256 = abs(_a0259);
    _a0263 = _b1.zwxy - _c3;
    _TMP260 = abs(_a0263);
    _edr_left = bvec4((2.00000000E+00*_TMP256).x <= _TMP260.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP256).y <= _TMP260.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP256).z <= _TMP260.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP256).w <= _TMP260.w && _interp_restriction_lv2_left.w);
    _a0267 = _b1.wxyz - _c3.zwxy;
    _TMP264 = abs(_a0267);
    _a0271 = _b1.zwxy - _c3;
    _TMP268 = abs(_a0271);
    _edr_up = bvec4(_TMP264.x >= (2.00000000E+00*_TMP268).x && _interp_restriction_lv2_up.x, _TMP264.y >= (2.00000000E+00*_TMP268).y && _interp_restriction_lv2_up.y, _TMP264.z >= (2.00000000E+00*_TMP268).z && _interp_restriction_lv2_up.z, _TMP264.w >= (2.00000000E+00*_TMP268).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0275 = _e1 - _b1.wxyz;
    _TMP272 = abs(_a0275);
    _a0279 = _e1 - _b1.zwxy;
    _TMP276 = abs(_a0279);
    _px = bvec4(_TMP272.x <= _TMP276.x, _TMP272.y <= _TMP276.y, _TMP272.z <= _TMP276.z, _TMP272.w <= _TMP276.w);
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP35 = max(_final30, _final60);
    _maximo = max(_TMP35, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP36 = _F;
        } else {
            _TMP36 = _H;
        } 
        _pix1 = _TMP36;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP37 = _B2;
            } else {
                _TMP37 = _F;
            } 
            _pix1 = _TMP37;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP38 = _D;
                } else {
                    _TMP38 = _B2;
                } 
                _pix1 = _TMP38;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP39 = _H;
                    } else {
                        _TMP39 = _D;
                    } 
                    _pix1 = _TMP39;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP40 = _H;
        } else {
            _TMP40 = _D;
        } 
        _pix2 = _TMP40;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP41 = _D;
            } else {
                _TMP41 = _B2;
            } 
            _pix2 = _TMP41;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP42 = _B2;
                } else {
                    _TMP42 = _F;
                } 
                _pix2 = _TMP42;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP43 = _F;
                    } else {
                        _TMP43 = _H;
                    } 
                    _pix2 = _TMP43;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _TMP61 = pow(float(_E.x), 2.40039062E+00);
    _TMP56 = float(_TMP61);
    _TMP61 = pow(float(_E.y), 2.40039062E+00);
    _TMP57 = float(_TMP61);
    _TMP61 = pow(float(_E.z), 2.40039062E+00);
    _TMP58 = float(_TMP61);
    _E = vec3(_TMP56, _TMP57, _TMP58);
    _TMP61 = pow(float(_pix1.x), 2.40039062E+00);
    _TMP56 = float(_TMP61);
    _TMP61 = pow(float(_pix1.y), 2.40039062E+00);
    _TMP57 = float(_TMP61);
    _TMP61 = pow(float(_pix1.z), 2.40039062E+00);
    _TMP58 = float(_TMP61);
    _TMP44 = vec3(_TMP56, _TMP57, _TMP58);
    _t0301 = float(_blend1);
    _res1 = _E + _t0301*(_TMP44 - _E);
    _TMP61 = pow(float(_pix2.x), 2.40039062E+00);
    _TMP56 = float(_TMP61);
    _TMP61 = pow(float(_pix2.y), 2.40039062E+00);
    _TMP57 = float(_TMP61);
    _TMP61 = pow(float(_pix2.z), 2.40039062E+00);
    _TMP58 = float(_TMP61);
    _TMP45 = vec3(_TMP56, _TMP57, _TMP58);
    _t0311 = float(_blend2);
    _res2 = _E + _t0311*(_TMP45 - _E);
    _a0315 = _E - _res1;
    _TMP62 = abs(vec3(float(_a0315.x), float(_a0315.y), float(_a0315.z)));
    _df0313 = vec3(float(_TMP62.x), float(_TMP62.y), float(_TMP62.z));
    _TMP46 = _df0313.x + _df0313.y + _df0313.z;
    _a0319 = _E - _res2;
    _TMP62 = abs(vec3(float(_a0319.x), float(_a0319.y), float(_a0319.z)));
    _df0317 = vec3(float(_TMP62.x), float(_TMP62.y), float(_TMP62.z));
    _TMP47 = _df0317.x + _df0317.y + _df0317.z;
    _TMP48 = float((_TMP47 >= _TMP46));
    _res = _res1 + _TMP48*(_res2 - _res1);
    _TMP61 = pow(float(_res.x), 4.54589844E-01);
    _TMP56 = float(_TMP61);
    _TMP61 = pow(float(_res.y), 4.54589844E-01);
    _TMP57 = float(_TMP61);
    _TMP61 = pow(float(_res.z), 4.54589844E-01);
    _TMP58 = float(_TMP61);
    _TMP49 = vec3(_TMP56, _TMP57, _TMP58);
    _TMP63 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_TMP49.x), float(_TMP49.y), float(_TMP49.z)));
    _TMP59 = vec3(float(_TMP63.x), float(_TMP63.y), float(_TMP63.z));
    _TMP64 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP59.x), float(_TMP59.y), float(_TMP59.z)));
    _TMP332 = vec3(float(_TMP64.x), float(_TMP64.y), float(_TMP64.z));
    _ret_0 = vec4(float(_TMP332.x), float(_TMP332.y), float(_TMP332.z), 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
