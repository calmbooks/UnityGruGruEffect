using UnityEngine;
using System.Collections;

public class GruGru : MonoBehaviour {

    [SerializeField]
    Material grugruMat;

    void OnRenderImage ( RenderTexture src, RenderTexture dest ) {

        Graphics.Blit(src, dest, grugruMat);
    }
}
