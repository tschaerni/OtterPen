Shader "Bunkerotter/OtterPen"
{
	Properties
	{
		_Color("Color", Color) = (1,1,1,1)
		_IsOff("Is Off?", Int) = 0
	}
		SubShader
	{
		Tags { "RenderType" = "Opaque" }
		LOD 100
		Cull Off

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			uniform float4 _Color;
			uniform int _IsOff;

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;
            };


            v2f vert (appdata v)
            {
                v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f, o);
                o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = (v.uv.xy * float2(1,1) + float2(0,0));

				UNITY_BRANCH if (_IsOff == 1) {
					o.vertex.xyz = -2147483648;
				}

                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
				//Define main color
				fixed4 col = _Color;
				//Define our uvs.
				float2 uv = i.uv;
				//Done.
                return col;
            }
            ENDCG
        }
    }
}
