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
#include <immintrin.h>

using namespace std;

static inline int popcnt128(__m128i n) {
  const __m128i n_hi = _mm_unpackhi_epi64(n, n);
  return _mm_popcnt_u64(_mm_cvtsi128_si64(n)) + _mm_popcnt_u64(_mm_cvtsi128_si64(n_hi));
}

static inline void p128_hex_u64(__m128i in) {
    alignas(16) unsigned long long v[2];
    _mm_store_si128((__m128i*)v, in);
    printf("%.16llx %.16llx\n", v[1], v[0]);
}
/*
 * 
 */
int main(int argc, char** argv) {
    
    // Defino o vetor de fatores
    
    int grauEsperado = 63; // Grau necessário
    unsigned long long int dados[] __attribute__ ((aligned (16))) = // Deve ter alinhamento
       // {0b11, 0, 0b111, 0, 0b10011, 0, 0b11001, 0, 0b11111, 0};  // D15
    {0b11,       0, 0b10000011, 0, 0b10001001, 0, 0b10001111, 0, 0b10010001, 0, 0b10011101, 0, 0b10100111, 0, 
     0b10101011, 0, 0b10111001, 0, 0b10111111, 0, 0b11000001, 0, 0b11001011, 0, 0b11010011, 0, 0b11010101, 0, 
     0b11100101, 0, 0b11101111, 0, 0b11110001, 0, 0b11110111, 0, 0b11111101, 0}; // D127
    __m128i* fatores = (__m128i*) dados;
    
    // Inicialização para otimização
    int quantFatores = sizeof(dados)/16; // Tamanho do vetor fatores
    int* graus = (int*) malloc(quantFatores*sizeof(int));
    for (int i=0; i<quantFatores; i++)
        graus[i] = 63 - _lzcnt_u64(dados[i*2]);
    
    int quantMax = 0;     // Quantidade máxima de fatores (grau preliminar)
    for (int acum=0; acum<grauEsperado; quantMax++)
        acum += graus[quantMax];
    int quantMin = 0;     // Quantidade mínima de fatores (grau preliminar)
    for (int acum=0, i=quantFatores-1; acum<grauEsperado; quantMin++, i--)
        acum += graus[i];
    
    unsigned long long quantComb = 1<<quantFatores;
    int maiorDist = 0;
    unsigned long long maiorPos = 0;
    __m128i maior;
    
    // Percorro todas as combinações
    for (unsigned long long pos = 1; pos <= quantComb; pos++) {
        // Verificação preliminar do grau do polinomio
        int grau = _mm_popcnt_u64(pos);
        if (grau < quantMin || grau > quantMax)
            continue;
        grau = 0;
        // Verifico o grau do polinômio
        for(int i=0; i<quantFatores; i++)
            if (pos & 1<<i)
                grau += graus[i];
        
        // Se tiver o grau certo, efetuo a multiplicação
        if (grau == grauEsperado) {
            int ibits = _tzcnt_u64(pos);
            __m128i mult = fatores[ibits++];
            for (; ibits<quantFatores; ibits++)
                if (pos & 1<<ibits)
                    mult = _mm_clmulepi64_si128(mult, fatores[ibits], 0);
            // Verifico se o resultado tem um peso de hamming mínimo
            int peso = popcnt128(mult);
            if (peso >= maiorDist) {
                int dist = grauEsperado;
                alignas(16) unsigned long long v[2];
                _mm_store_si128((__m128i*)v, mult);
                // Efetua o cálculo das distâncias mínimas
                for (int i=1; i<=grauEsperado; i++) {
                    v[1]<<=1;
                    if (v[0] & ((unsigned long long) 1 << 63) ) 
                        v[1] |= 1;
                    v[0]<<=1;
                    int d = popcnt128(_mm_xor_si128(mult, *((__m128i*)v) ));
                    if (d < dist)
                        dist = d;
                }
                // Se a distância mínima calculada for 
                if (dist > maiorDist && peso > maiorDist) {
                    // printf("%d, %llu\n", maiorDist, maiorPos);
                    maiorDist = (dist > peso)? peso : dist;
                    maior = mult;
                    maiorPos = pos;
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
    
    p128_hex_u64(maior);
    printf("Distância Mínima %d, Posição %llu", maiorDist, maiorPos);
    return 0;
}