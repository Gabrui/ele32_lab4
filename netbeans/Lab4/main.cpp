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
#define ult64 ((unsigned long long) 1 << 63)
#define u64 unsigned long long int
#include <cstdio>
#include <cstdlib>
#include <math.h> 
#include <emmintrin.h>
#include <wmmintrin.h>
#include <smmintrin.h>
#include <immintrin.h>
#include <boost/math/special_functions/binomial.hpp>


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

static inline void calculaProbabilidades() {
    alignas(16) unsigned long long int gVec[] = {(u64) 0xda2dcc73, 0}; //{(u64) 0x0f733, 0}; //{0x01bb,0}; //{0b1011, 0};
    alignas(16) unsigned long long int iVec[] = {1, 0};
    __m128i* g = (__m128i*) gVec;
    __m128i* i128 = (__m128i*) iVec;
    int quantCorrigiveis = 8; //3; //2; //1;
    int tamCod = 63; //31; //15; //7;
    int quantInfo = 32; //16; //7; //4;
    u64 max =(u64) 1<<30; //1<<quantInfo;
    u64* erros = (u64*) calloc(tamCod+quantCorrigiveis+3, sizeof(u64));
    unsigned int* qAmostras = (unsigned int*) calloc(tamCod+quantCorrigiveis+3, sizeof(int));
    for (; iVec[0]<max; iVec[0]++) {
        __m128i prod = _mm_clmulepi64_si128(*g, *i128, 0);
        u64 erroFinal = _mm_popcnt_u64(iVec[0]);
        u64 erroCod = popcnt128(prod);
        for (int i=-quantCorrigiveis; i<=quantCorrigiveis; i++) {
            erros[erroCod+i] += erroFinal;
            qAmostras[erroCod+i]++;
        }
    }
    for (int i=0; i<=quantCorrigiveis; i++) {
        erros[i] = 0;
        qAmostras[i]++;
    }
    double razao[tamCod+1];
    printf("[");
    for (int i=0; i<=tamCod; i++) {
        razao[i] =  ((double) erros[i])/qAmostras[i]/quantInfo;
        printf("%e",razao[i]);
        if (i!=tamCod)
            printf(", ");
    }
    printf("]\n");
    double binomiais[tamCod+1];
    for (int i=0; i<=tamCod; i++)
        binomiais[i] = boost::math::binomial_coefficient<double>(tamCod, i); 
    for (double p=0.5; p>0.000001; p/=2) {
        double ber = 0;
        for (int i = 0; i<=tamCod; i++) {
            ber += pow(p, i)*pow((1-p),tamCod-i)*binomiais[i]*razao[i];
        }
        printf("%e\n", ber);
    }
}
/*
 * 
 */
int main(int argc, char** argv) {
    calculaProbabilidades();
    // Defino o vetor de fatores
    int grauEsperado = 31; //127; // Grau necessário
    alignas(16) unsigned long long int dados[] = // Deve ter alinhamento
    //{0b011, 0, 0b1011, 0, 0b1101, 0}; // D7
    // {0b11, 0, 0b111, 0, 0b10011, 0, 0b11001, 0, 0b11111, 0};  // D15
    // {0b11, 0, 0b100101, 0, 0b101001, 0, 0b101111, 0, 0b110111, 0, 0b111011, 0, 0b111101, 0}; // D31
    {0b0000011, 0, 0b0000111, 0, 0b0001011, 0, 0b0001101, 0, 0b1000011, 0, 0b1001001, 0, 
     0b1010111, 0, 0b1011011, 0, 0b1100001, 0, 0b1100111, 0, 0b1101101, 0, 0b1110011, 0, 0b1110101, 0}; //D63
    /*{0b11,       0, 0b10000011, 0, 0b10001001, 0, 0b10001111, 0, 0b10010001, 0, 0b10011101, 0, 0b10100111, 0, 
     0b10101011, 0, 0b10111001, 0, 0b10111111, 0, 0b11000001, 0, 0b11001011, 0, 0b11010011, 0, 0b11010101, 0, 
     0b11100101, 0, 0b11101111, 0, 0b11110001, 0, 0b11110111, 0, 0b11111101, 0}; // D127*/
    /*{0b11, 0, 0b111, 0, 0b10011, 0, 0b11001, 0, 0b11111, 0, 0b100011011, 0, 0b100011101, 
    0, 0b100101011, 0, 0b100101101, 0, 0b100111001, 0, 0b100111111, 0, 0b101001101, 
    0, 0b101011111, 0, 0b101100011, 0, 0b101100101, 0, 0b101101001, 0, 0b101110001, 
    0, 0b101110111, 0, 0b101111011, 0, 0b110000111, 0, 0b110001011, 0, 0b110001101, 
    0, 0b110011111, 0, 0b110100011, 0, 0b110101001, 0, 0b110110001, 0, 0b110111101, 
    0, 0b111000011, 0, 0b111001111, 0, 0b111010111, 0, 0b111011101, 0, 0b111100111, 
    0, 0b111110011, 0, 0b111110101, 0, 0b111111001, 0};*/ // D255
    __m128i* fatores = (__m128i*) dados;
    
    /*
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
    
    unsigned long long quantComb = (unsigned long long) 1<<quantFatores;
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
            __m128i mult = fatores[ibits];
            for (int ordem=graus[ibits++]; ibits<quantFatores; ibits++)
                if (pos & 1<<ibits) {
                    ordem+=graus[ibits];
                    if (ordem < 64)
                        mult = _mm_clmulepi64_si128(mult, fatores[ibits], 0);
                    else
                        mult = _mm_xor_si128(
                                _mm_clmulepi64_si128(mult, fatores[ibits], 0), 
                                _mm_slli_si128(_mm_clmulepi64_si128(mult, fatores[ibits], 1), 8));
                }
            // Verifico se o resultado tem um peso de hamming mínimo
            int peso = popcnt128(mult);
            if (peso > maiorDist) {
                int dist = grauEsperado;
                int distExtra = 0;
                alignas(16) unsigned long long v[2];
                _mm_store_si128((__m128i*)v, mult);
                // Efetua o cálculo das distâncias mínimas
                for (int i=1; i<=grauEsperado; i++) {
                    if (v[1] & ult64)
                        distExtra++;
                    v[1]<<=1;
                    if (v[0] & ult64) 
                        v[1] |= 1;
                    v[0]<<=1;
                    int d = popcnt128(_mm_xor_si128(mult, *((__m128i*)v) )) + distExtra;
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
    
    p128_hex_u64(maior);
    printf("Distância Mínima %d, Posição %llu", maiorDist, maiorPos); /**/
    return 0;
}