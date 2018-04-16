Shader "Custom/GruGruEffect" {

    SubShader {
        Pass {
            CGPROGRAM

                #include "UnityCG.cginc"

                #pragma vertex vert_img
                #pragma fragment frag

                #define PI 3.14159

                float4 frag( v2f_img i ) : COLOR {

                    float2 vec = i.uv.xy - float2(0.5);

                    float l = length(vec);
                    float r = atan2(vec.y, vec.x) + PI; // 0-2π
                    float t = _Time.y*10;
                    float c = 1-sin(l*70+r+t);

                    float3 rgb = float3(c);

                    return float4(rgb,1.0);
                }

            ENDCG
        }
    }
}
