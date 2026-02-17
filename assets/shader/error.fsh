#ifdef GL_ES
precision highp float;
precision mediump sampler2DShadow;
#else
#define highp 
#define mediump 
#define lowp 
#endif

out vec4 FragColor;

void main (void)
{
	FragColor = vec4(1,0,1,1);
}
