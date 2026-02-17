#ifdef GL_ES
precision highp float;
#else
#define highp 
#define mediump 
#define lowp 
#endif

in vec4 a_pos;

#ifdef SUPPORTED_GL_OES_30
	in mat4 a_model;

	#ifdef COLORTRANSFORM_MUL
		in vec4 a_colorMul;
		out lowp vec4 v_colorMul;
	#endif
	#ifdef COLORTRANSFORM_ADD
		in vec4 a_colorAdd;
		out lowp vec4 v_colorAdd;
	#endif	
#else
	uniform mat4 u_model;
	#define a_model u_model
#endif

uniform mat4 u_projectionView;

void main(void)
{
	vec4 pos = a_model * a_pos;
	gl_Position = u_projectionView * pos;
}
