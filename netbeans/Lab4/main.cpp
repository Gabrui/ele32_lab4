/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: gabriel
 *
 * Created on 22 de Novembro de 2017, 15:28
 */
#include <cstdio>
#include <cstdlib>

#include <emmintrin.h>
#include <wmmintrin.h>
#include <smmintrin.h>

using namespace std;

static inline int popcnt128(__m128i n) {
  const __m128i n_hi = _mm_unpackhi_epi64(n, n);
  return _mm_popcnt_u64(_mm_cvtsi128_si64(n)) + _mm_popcnt_u64(_mm_cvtsi128_si64(n_hi));
}

/*
 * 
 */
int main(int argc, char** argv) {
    
    // Defino o vetor de fatores
    __m128i* fatores;
    int quantFatores = 4; // Tamanho do vetor fatores
    int grauEsperado = 4; // Grau necessário
    int quantMin = 3;     // Quantidade mínima de fatores (grau preliminar)
    int quantMax = 5;
    int tamG = 7;         // Tamanho da G
    int graus[];
    
    uint64_t quantComb = 1<<quantFatores;
    int maiorDist = 0;
    uint64_t maiorPos;
    __m128i maior;
    
    // Percorro todas as combinações
    for (uint64_t pos = 1; pos < quantComb; pos++) {
        // Verificação preliminar do grau do polinomio
        int peso = _mm_popcnt_u32(pos);
        if (peso < 3 || peso > quantMax)
            continue;
        int grau = 0;
        // Verifico o grau do polinômio
        for(int i=0; i<quantFatores; i++)
            if (pos & 1<<i)
                grau += graus[i];
        // Se tiver o grau certo, efetuo a multiplicação
        if (grau == grauEsperado) {
            __m128i mult;
            { // Multiplicação
                int i=0;
                for (; i<quantFatores; i++)
                    if (pos & 1<<i) {
                        mult = fatores[i];
                        break;
                    }
                for (; i<quantFatores; i++)
                    if (pos & 1<<i)
                        mult = _mm_clmulepi64_si128(mult, fatores[i], 0);
            }
            // Verifico se o resultado tem um peso de hamming mínimo
            if (_mm_popcnt_u64(mult) >= maiorDist) {
                int dist = tamG;
                // Efetua o cálculo das distâncias mínimas
                for (int i=1; i<tamG; i++) {
                    __m128i deslocado = mult<<i;
                    int d = popcnt128(_mm_xor_si128(mult, deslocado));
                    if (d < dist)
                        dist = d;
                }
                // Se a distância mínima calculada for 
                if (dist > maiorDist) {
                    maiorDist = dist;
                    maior = mult;
                }
            }
        }
    }
    
    
    /*
    int src = 11;
    int dst;
    asm ("mov %1, %0\n\t"
        "add $100, %0"
        : "=r" (dst) 
        : "r" (src));

    printf("%d\n", dst);
    
    
    __m128i a = _mm_set1_epi64x(3);
    __m128i b = _mm_set1_epi64x(5);
    __m128i tmp0 = _mm_clmulepi64_si128(a, b, 0);
    
    // unsigned long long int *v64val = (unsigned long long int*) &tmp0;
    // printf("%.16llx %.16llx\n", v64val[1], v64val[0]);
    printf("%d", sizeof(short));
    */
    return 0;
}