# -*- coding: utf-8 -*-
"""
Created on Wed Nov 22 15:20:33 2017

@author: Dylan N. Sugimoto
"""

from copy import deepcopy
from math import sqrt

class BinOperations:
    
    def generateArray(self,number,grau):
        
        _bitArray=[]
        bitNumber = bin(number)[2:].zfill(grau+1)
        for elem in bitNumber:
            
            if(elem =='1'):
                _bitArray.append(1)
            else:
                _bitArray.append(0)
        
        return _bitArray
    
    def grauPoli(self,poli):
        
        contagem = len(poli)-1
        grau = 0
        for elem in poli:
            
            if(elem == 1):
                grau = contagem
                break
            contagem-=1
            
        return grau
    
    def getOperando(self,divisor,grauDivisor,grauQuociente,tam):
        
        operando = self.generateArray(0,tam-1)
        contagem = 0
        for elem in range(tam-grauQuociente-1-grauDivisor,tam-grauQuociente):
            
            operando[elem] = divisor[len(divisor)-grauDivisor+contagem-1]
            contagem+=1
            
        return operando
    
    def soma(self,dividendo,operando):
        
        if(len(dividendo) >= len(operando)):
            menor = deepcopy(operando)
            maior = deepcopy(dividendo)
        else:
            menor = deepcopy(dividendo)
            maior = deepcopy(operando)
        resultado = maior
        for contagem in range(len(menor)):
            
            resultado[len(maior)-len(menor)+contagem] = maior[len(maior)-len(menor)+contagem]^menor[contagem]
        return resultado
    
#---------------------------------DIVISAO--------------------------------------    
    def div(self,div,divisor):
        
        dividendo = deepcopy(div)
        if(self.VerificarPoliNulo(divisor)):
            return 0,0
        grauDividendo = self.grauPoli(dividendo)
        grauDivisor = self.grauPoli(divisor)
        if(grauDividendo < grauDivisor):
            return 0,dividendo
        
        quociente = self.generateArray(0,len(dividendo)-1) #cria um poli nulo
        
        while(True):
        #Grau do Quociente eh igual a diferenca dos graus do divisor e do
        #dividendo, mas nao pode ser negativo. Se for negativo resto igual 
        #dividendo.
            
            grauQuociente = grauDividendo - grauDivisor
            if(grauQuociente <0):
                resto = dividendo
                break
#------------------------------------------------------------------------------
            quociente[len(quociente) - grauQuociente-1] = 1
            #Calcula o operando que vai somar com o dividendo
            #Operando eh o produto do quociente com o divisor
            #Na pratica, eh um deslocamento para esquerda dos elementos do 
            #divisor  
            operando = self.getOperando(divisor,grauDivisor,grauQuociente,len(dividendo))
            #Calcula a soma do dividendo com o operando s
            dividendo = self.soma(dividendo,operando)
            #Calcula o grau do novo dividendo. O divisor nao mudou
            grauDividendo = self.grauPoli(dividendo)
            #Volta para calcular a diferenca de grau com divisor
#------------------------------FIM DO WHILE------------------------------------
        return quociente,resto
#------------------------------FIM DA DIVISAO----------------------------------
        
    def VerificarPoliNulo(self,poli):
        
        for elem in poli:
            
            if(elem==1):
                return False #Nao eh polinomio Nulo
        return True #eh polinomio nulo
    
    def desleft(self,poli,quantDes):
        
        if(quantDes <= 0):
            return deepcopy(poli)
        else:
            deslocado = self.generateArray(0,len(poli)+quantDes-1)
            for index in range(len(poli)):

                deslocado[index] = poli[index]
        return deslocado
    
    def multi(self,fat1,fat2):
        
        grauFat1 = self.grauPoli(fat1)
        grauFat2 = self.grauPoli(fat2)
        if(grauFat1 > grauFat2):
            menor = fat2
            maior = fat1
            grauMenor = grauFat2
        else:
            menor = fat1
            maior = fat2
            grauMenor = grauFat1
        #parcial serve para armazenar resultado parcial da multiplicacao
        # deve ser somado com o resultado
        parcial = self.generateArray(0,grauFat1+grauFat2)
        #resultado tem tamanho do maior
        resultado = self.generateArray(0,grauFat1+grauFat2)
        for index in range(len(menor)-grauMenor-1,len(menor)):
            
            if(menor[index] == 1):
            #desloca o maior de index para esquerda e atribui para o parcial
                parcial = self.desleft(maior,len(menor)-index-1)
            #soma no resultado
                resultado = self.soma(resultado,parcial)
        return resultado
    def simplificaArray(self,Lista):
        #retorna uma lista sem os zeros à esquerda do 1 mais a esquerda.
        grau = self.grauPoli(Lista)
        if(len(Lista)==grau+1):
            return Lista
            
        simplificado = self.generateArray(0,grau)
        for index in range(grau+1):
            
            simplificado[index] = Lista[len(Lista)-grau-1+index]
            
        return simplificado
    
    def generateG(self,lista,taxa):
        #retorna uma matrix G de geracao de codificacao
        
        
        #retira zeros à esquerda do grau
        gs = self.simplificaArray(lista)
        # colunas = (grau+1)/(1-taxa)
        # linhas = colunas * taxa
        tamanhoLinha = int(len(gs)/(1-taxa))
        linha = deepcopy(gs)
        
        diferenca = tamanhoLinha-len(gs)
        for index in range(diferenca):
            #preenche com zeros a esquerda
            linha.append(0)
        
        #inicializa matrix geradora
        G=[]
        #linhas
        k = int(tamanhoLinha*taxa)
        
        for index in range(k):
            
            G.append(deepcopy(linha))
            linha[index] = 0
            for i in range(len(gs)):
                linha[index+1+i] = gs[i]
        return G
  
    def pesoHamming(self,lista):
        
        contar = 0
        for elem in lista:
            
            if(elem == 1):
                contar+=1
        return contar
    
    def distMin(self,G):
        #retorna a distancia minima de uma matrix geradora G
        
        Gcopiado = deepcopy(G)
        linha1 = deepcopy(Gcopiado[0])
        primeiro = True
        for linha in Gcopiado[1:]:
            
            resultado = self.soma(linha1,linha)
            dist = self.pesoHamming(resultado)
            if(primeiro):
                distMin = dist
                primeiro = False
           
            if(dist < distMin):
                
                distMin = dist
                
                
        return distMin
    
    def inc(self, lista):
        
        resposta = deepcopy(lista)
        resposta[len(lista)-1] = lista[len(lista)-1]^1 
        if(lista[len(lista)-1]==0):
            return resposta
        else:
            #propaga o carry
            carry = 1
            for index in reversed(range(len(lista))):
            
                #propaga o carry
                resposta[index] = lista[index]^carry
                #se lista[index] == zero
                if(lista[index]==0):
                    #para de propaga carry. acabou.
                    break
        return resposta
#---------------------------FIM DA CLASSE--------------------------------------

class finderPrime:
    
    def __init__(self):
        
        self.primos = {}
        
        
    def encontrarPrimos(self,grauMax,tamanho = None):
        
        if(tamanho == None):
            tamanho = grauMax
        #Instancia um BinOperations para realizar as operacoes binarias necessarias
        operacao = BinOperations()
        
        #dicionario de listas que contem polinomios primos. Grau do polinomio como indexador
        primos =self.primos
        
        #limitante superior da procura por primos
        maximo = 0
        if(grauMax > 9):
            grauMax = 9#vamos limitar a procura dos primos ate 9 bits ou 511
        for expoente in range(grauMax):
            maximo +=pow(2,expoente)
        
        minimo = 2
        if(len(primos) > 0):
            for expoente in range(len(primos)-1):
                minimo += pow(2,expoente)
            minimo+=1
#------------------------------Procura por primos------------------------------
        for elem in range(minimo,maximo):
            
            analise = operacao.generateArray(elem,tamanho)
            ehPrimo = True
            for anteriores in range(2,elem):
                
                divisor = operacao.generateArray(anteriores,tamanho)
                resultado = operacao.div(analise,divisor)
                if(operacao.VerificarPoliNulo(resultado[1])):
                    ehPrimo = False
                    break
                if(anteriores >= sqrt(elem) ):
                    break
            if(ehPrimo ==True):
                
                grau = operacao.grauPoli(analise)
                #Pega a lista de primos do grau do analise
                #Se nao tiver, recebe uma lista vazia do primos
                listap = primos.get(grau,[]) 
                listap.append(analise) #adiciona o primo na lista
                primos[grau] = listap  #adiciona no dicionario primos
#--------------------------------FIM DA PROCURA--------------------------------
        self.primos = primos
        return primos
#----------------------------FIM DO METODO DE PROCURA--------------------------
#----------------------------FIM DA CLASSE FINDER------------------------------        

def findG(limInf,limSup):
    finder = finderPrime()
    operacao = BinOperations()
    Gset = {}
    for L in range(limInf,limSup):
        n = pow(2,L) - 1
        UmDn = operacao.generateArray(pow(2,n)+1,n)
        #print("\n1+D^",n,)
        prime = finder.encontrarPrimos(n)
        dividir = UmDn
        contador = 0
        for indexG in prime:
        
            lista = prime[indexG]
            for primo in lista:
                divisivel = True
                dividiu = False
                while(divisivel):
                    res = operacao.div(dividir,primo)
                    if(operacao.VerificarPoliNulo(res[1])):
                        
                        dividir = res[0] #passa o quociente para ser dividendo
                        dictlistgm = Gset.get(n,{}) #pega o dicionario referente ao 1+D^n
                           
                        listagm = dictlistgm.get(contador,[[],0])#pega a lista que contem o primo divisor e a multiplicidade
                        dividiu = True #seta que achou um divisor
                        #atualizo o primo, se for o mesmo nao muda nada
                        if(listagm[1]==0):#primeira vez.
                            listag = listagm[0]
                            listag.append(primo)
                            listagm[0] = listag
                        #atualizo a multiplicidade
                        listagm[1]+=1
                        #print("primo: ", primo,"multiplicidade: ",listagm[1])
                        dictlistgm[contador] = listagm#bota de volta a lista no dicionario
                        Gset[n] = dictlistgm#bota de volta o dicionario no dicionario
                        #print(" Gset: ",Gset)
                        divisivel =True#seta para tentar dividir de novo pelo mesmo primo divisor.
                        #print("Dividir: ",dividir)
                    else:
                        divisivel = False#sair do while
                if(dividiu):
                    contador+=1
                if(operacao.grauPoli(dividir) == 0):
                    #Grau do dividir igual a zero significa que dividir == 1
                    #print(dividir)
                    break
            if(operacao.grauPoli(dividir) == 0):
                #Grau do dividir igual a zero significa que dividir == 1
                break
    return Gset

def generateFatores(dictPrimo):
    
    op = BinOperations()
    #combinacao tem tamanho igual a quantidade de primos
    #comeca com 1, ou seja, nao serve o fator 0.
    combinacao = op.generateArray(1,len(dictPrimo)-1)
    
    dictFatores ={}
    quantFatores = 0
    peso = op.pesoHamming(combinacao)
    continuar = True
    while( continuar):
    
        fator = op.generateArray(1,0)
        #gera um fator
        for index in range(len(combinacao)):
            
            if(combinacao[index] == 1):
                
                LprimoMulti =dictPrimo[index]
                primo = LprimoMulti[0]
                primo = primo[0]
                fator = op.multi(fator,primo)
        #calcula peso hamming
        peso = op.pesoHamming(combinacao)
        if(peso == len(combinacao)):
            continuar = False
        #coloca o fator no dicionario
        dictFatores[quantFatores] = fator
        #atualiza a contagem
        quantFatores+=1
        #proxima combinacao de primos
        combinacao = op.inc(combinacao)
    return dictFatores
    
#Gset = findG(3,9) #L vai de 3 ate 9 [3,9[
op = BinOperations()
L = 7
Gset = findG(L,L+1)
numero = pow(2,L)-1
dicFatores = generateFatores(Gset[numero])
filename = "fatores_"+str(numero)+".txt"
arquivo = open(filename,mode ='a')
texto = ""
texto +="\n 1 + D^"+str(numero) +"\n Fatores: \n" +"   " 
for index in dicFatores:
    texto +="\n" +str(op.simplificaArray(dicFatores[index]))
arquivo.write(texto)
arquivo.close()


#--------------------------Area de testes--------------------------------------

"""filename = "primos_grau.txt"
arquivo = open(filename,mode ='a')
texto = ""
dicwrite ={}

for index in Gset:
    dicPoli = Gset.get(index)
    dicsub = {}
    for key in dicPoli:
        tuplaLista = dicPoli.get(key)
        listaLista = tuplaLista[0]
        dicsub[key] = op.grauPoli(listaLista[0])
    dicwrite[index] = dicsub
print(dicwrite)
for index in Gset:
    texto +="\n 1 + D^" + str(index) +"\n Fatores: \n" +"   " +str(dicwrite[index])
arquivo.write(texto)
arquivo.close()"""
print("\n--------------------------Area de Testes-----------------------------")
#Gs = findG(3,4)
#U = op.generateArray(pow(2,7)+1,7)
#a = op.generateArray(pow(2,7)+1,7)
#b = op.generateArray(pow(2,255)+1,255)
#b = op.generateArray(9,15)
#a = op.generateArray(505,8)
print("entrou")
#res = op.div(b,a)
#d = res
#c = res[0]
#res = op.div(c,a)
#for contar in range(17): 
#    res = op.multi(a,res)
print("saiu")
#print(a," ** ",17," = ",res)
#print("\n Fatores de ",U," igual a |=> ",Gs)
#print(a)
#print(b)
#print("b / a == ",d)
#print(op.VerificarPoliNulo(d[1]))
#print(a)
#print(c)
#print("c / a == ",res)
#dictPrimos = findG(8,9)
#print(dictPrimos)
#primos = dictPrimos.get(255)
#fatores = generateFatores(primos)
#print("\n\n\n",fatores)
#print("distancia minima: ",op.distMin(matrixG))
#------------------------------------------------------------------------------

"""
Observacoes de coisas para fazer:  
Parece que tá faltando primo divisor de 1+D^255
Deve ter primo maior do que 8 bits que divide 1+D^255
"""