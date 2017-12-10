# -*- coding: utf-8 -*-
"""
Created on Wed Nov 22 15:20:33 2017

@author: Dylan N. Sugimoto
"""

from copy import deepcopy
from math import sqrt
from math import ceil
from math import floor
from numpy import random
import time
from itertools import combinations

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
    
    def inverteArray(self,listaSimplificada):
        
        
        invertido = self.generateArray(0,len(listaSimplificada)-1)
        for index in range(len(listaSimplificada)):
            
            invertido[len(listaSimplificada)-index-1] = listaSimplificada[index]
        
        return invertido
    
    def generateG(self,lista,linhas, colunas):
        #retorna uma matrix G de geracao de codificacao
        #G é linhas x colunas.
        

        #retira zeros à esquerda do grau
        listaSimplificada = self.simplificaArray(lista)
        listaInvs = self.inverteArray(listaSimplificada)
        
        grauls = self.grauPoli(listaSimplificada)
        
        
        graugs = colunas - linhas
        if(grauls < graugs):
            gs = listaInvs + self.generateArray(0,graugs - grauls)
        else:
            gs = listaInvs
        linha = gs + self.generateArray(0,colunas-2-graugs)
        
        #inicializa matrix geradora
        G=[]
        for index in range(linhas):
            
            G.append(deepcopy(linha))
            linha[index] = 0
            if(index < linhas-1):
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
    
    def codificar(self,lista,g):
        
        #g deve vir como mais significativo a esquerda
        
        #prod eh o vetor que guarda o produto de g com lista
        prod = self.generateArray(0,len(g)-1)
        #flip flop guarda resultado parcial
        ff = self.generateArray(0,len(g)-2)
        #guarda a saida
        saida =[]
        
        listaEntrada = lista + self.generateArray(0,len(g)-len(lista)-1)
        
        for entrada in listaEntrada:
            
            #anterior guarda o resultado anterior do ff
            anterior = 0
            #resultados das somas
            resultado = 0
            for i in range(len(g)):
                #produto entre g e a entrada
                prod[i] = g[i]*entrada
                #soma com o anterior de ff
                resultado = prod[i]^anterior
                
                
                if(i < len(ff)):
                    #pega o que ta armazenado no ff
                    anterior = ff[i]
                    #guarda o resultado no ff
                    ff[i] = resultado
            #o ultimo resultado guarda na saida
            saida.append(resultado)
                    
        return saida
                
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

class decoder:
    
    def __init__(self,g,n,k,dmin):
        
        #polinomio gerador a esquerda mais significativo
        self.g = g
        #tamanho da palavra codigo.
        self.n = n
        #tamanho da sequencia de informacao
        self.k=k
        #dmin
        self.dmin = dmin
        #erros corrigiveis
        self.qe = floor((dmin-1)/2)
        #gerar o conjunto de sindromes
        self.generateSindrome()
        #operador binario
        self.op = BinOperations()
        
        
    def generateSindrome(self):
        
        self.sindrome = {}
        """ 
        inicio = pow(2,self.n-1)
        fim = 0
        for index in range(self.qe):
            fim += pow(2,self.n-1-index)
        
        fim +=1 
        pos = 0
        
        #print("\n inicio",inicio)
       # print("\n fim:",fim)
        for index in range(inicio,fim):
            
            erro = op.generateArray(index,self.n-1)
            peso = op.pesoHamming(erro)
            
            
            if( peso <= self.qe):
             #   print("\n qe:",self.qe)
             #   print("\n erro",erro)
                
                (quociente,resto) = op.div(erro,self.g)
                resto.reverse()
                sind = resto[0:self.n-self.k]
                sind.reverse()
                self.sindrome[pos] = sind
              #  print("\n sindrome:",sind)
                pos+=1"""
        pos = 0
        for index in range(self.qe):
            
            #gera as permutacoes
            for x in combinations( range(self.n-1), index ) :
                lista = [ 1 if i in x else 0 for i in range(self.n-1) ] 
                
                erro = [1]+lista
                (quociente,resto) = op.div(erro,self.g)
                resto.reverse()
                sind = resto[0:self.n-self.k]
                sind.reverse()
                self.sindrome[pos] = sind
                pos+=1
        print("\n\n Quantidade de sindromes:",len(self.sindrome))
                
    def calcSindrome(self,recebido):
        
        #invertida = self.op.inverteArray(recebido)
        (quociente,resto) = self.op.div(recebido,self.g) 
        resto.reverse()
        sind = resto[0:self.n - self.k]
        sind.reverse()
        return sind
    
    def rotateDn(self,recebido):
        
        r = deepcopy(recebido)
        
        for index in range(len(recebido)):
            
            if(index < len(recebido)-1):
                r[index] = recebido[index+1]
            else:
                r[index] = recebido[0]
        return r
    
    def rotateSindrome(self,sindrome):
        
        sind = deepcopy(sindrome)
        ult = self.g[0]*sindrome[0]
        
        for index in range(len(sindrome)):
            
            if(index < len(sindrome)-1):
                sind[index] = sindrome[index+1]^(self.g[index+1]*ult)
            else:
                
                sind[index] = self.g[index+1]*ult
                
        return sind
    
    def rotateRight(self,r,rotate):
        
        rodado = deepcopy(r)
        for i in range(rotate):
            rodar = deepcopy(rodado)
            for index in reversed(range(len(r))):
            
                if(index > 0):
                    rodado[index] = rodar[index-1]
                else:
                    rodado[index] = rodar[len(r)-1]

        return rodado
    
    def decodifica(self,recebida):
        
        r = self.op.inverteArray(recebida)
        nRotation = 0
        #identifica a sindrome
        sind = self.calcSindrome(r)
        
        roriginal = deepcopy( r)

        while(True):
            
           # print("\n sindrome:",sind)
           # print("\n g       :",self.g)
            #print("\n sindromes:",self.sindrome.values())
            #time.sleep(1)
            
            #Se sindrome igual a zero
            if(self.op.VerificarPoliNulo(sind)):
                #desgira r
                r = self.rotateRight(r,nRotation)
                if(self.op.VerificarPoliNulo(r)):
                    menssage = r
                else:
                    #mensagem é o quociente de r/g
                    (menssage,zero) = self.op.div(r,self.g)
                    menssage.reverse()
                    

                mensagem = menssage[0:self.k]
                mensagem.reverse()
                return mensagem
            #verificar se eh uma sindrome do conjunto
            if(sind in self.sindrome.values()):
                
                #troca o valor do bit de maior grau
                r[0] ^= 1
                #identifica a sindrome
                sind = self.calcSindrome(r)

                
            else:
                #se nao rotaciona a mensagem e a sindrome
                r = self.rotateDn(r)
                sind = self.rotateSindrome(sind)
                nRotation+=1
            if(r == roriginal):
                return r
                
    
    
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


"""op = BinOperations()
L = 3
Gset = findG(L,L+1)
numero = pow(2,L)-1
filename = "fatores_"+str(numero)+".txt"
arquivo = open(filename,mode ='a')
texto = ""
texto +="\n 1 + D^"+str(numero) +"\n Fatores: \n" +"   "
arquivo.write(texto)"""

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
        #arquivo.write("\n"+" "+str(quantFatores)+" - "+str(op.simplificaArray(fator)))
        #atualiza a contagem
        quantFatores+=1
        #proxima combinacao de primos
        combinacao = op.inc(combinacao)
    return dictFatores
 
def CanalBSC(vetorEntrada, p):

    
   quantMuda = random.binomial(len(vetorEntrada),p)
   
   posicao = random.choice(len(vetorEntrada),quantMuda,replace = False)
   vetorSaida = deepcopy(vetorEntrada)
   for pos in posicao:
       vetorSaida[pos] ^= True

   return vetorSaida,quantMuda   

def RandomNumberGenerator(quantVetores,tamanhoVetor):
    
    dic = {} #guarda array que tem 0 e 1
    #comeca em zero e vai ate 10^6/4 -1
    for i in range(quantVetores):
         #recebe um array com elementos 0 ou 1, escolhido pseudoaleatoriamente
         #De tamanho = tamanhoVetor
        array = random.randint(0,2,tamanhoVetor)
        dic[i] = array.tolist() #transforma para lista e coloca no dicionario
    return dic

def PassarCodificador(palavras,codificador, pgerador):
    
    
    dic = deepcopy(palavras)
    for key in dic:
        
        #Passa a mensagem para o codificador e o polinomio gerador
        #codifica e guarda no dicionario a mensagem codificada.
         dic[key]= codificador.codificar(codificador.inverteArray(dic.get(key)),pgerador)
        # mcodedInvertida= codificador.inverteArray(mcodedInvertida)
    return dic

def PassarCanalBSC(palavras,p):
    
    dic = deepcopy(palavras)
    quantMuda =0
    total = 0
    for key in dic:
        
        (dic[key],quantMuda) = CanalBSC(dic.get(key),p)
        total+=quantMuda
    
    return dic,total

def PassarDecodificador(palavras,decodificador):
    
    
    dic = deepcopy(palavras)
    for key in dic:
        dic[key] = decodificador.decodifica(dic.get(key))
        
    return dic

def pe(dicM,dicdeco):
    
    quantErro=0
    for key in dicM:
        
        #mensagem original
        moriginal = dicM.get(key)
        #mensagem recebida
        mrecebida =  dicdeco.get(key)
        #compara as mensagens
        if(moriginal!= mrecebida):
            #conta os erros
            for index in range(len(moriginal)):
                
                if(moriginal[index] != mrecebida[index]):
                    
                    quantErro+=1
    
    return quantErro

#Gset = findG(3,9) #L vai de 3 ate 9 [3,9[


#for index in dicFatores:
#    texto +="\n" +str(op.simplificaArray(dicFatores[index]))
#arquivo.write(texto)
#arquivo.close()
#---------------Algoritmo de geracao da matrix G & Impressao-------------------
op = BinOperations()
"""L = 6
Gset = findG(L,L+1)
numero = pow(2,L)-1
print(numero)
dicFatores = generateFatores(Gset[numero])
filename = "Gmatrix_"+str(numero)+".txt"
arquivo = open(filename,mode ='a')
texto = "Matrix Geradora de 1 + D^" + str(numero)+"\n\n\n"
distMinMax = -1
distMin = 0
quantG=0
for key in dicFatores:
    
    fator = dicFatores.get(key)
    grauFator = op.grauPoli(fator)
    if( grauFator <= (numero -ceil(numero/2) )):
        quantG+=1
        G = op.generateG(fator,ceil(numero/2),numero)
        texto += "\n--------------------------------------------\nMatriz G: \n"
        for elem in G:
            texto+= "   "+str(elem)+"\n"
        distMin = op.distMin(G)
        texto+="\n DistMIN: "+str(distMin) + "\n"
        if(distMin > distMinMax):
            distMinMax = distMin
texto += "\nMaximo DistMin de todas as G: "+str(distMinMax)+"\n quantidade de G: "+str(quantG)
arquivo.write(texto)
arquivo.close()"""
#------------------------------------------------------------------------------


L = 5
n = pow(2,L)-1
#k =  ceil(n/2)


#constantes do 1+D7
"""
dmin = 4
l7 = [1, 0, 1, 1, 0, 0, 0]
g7 = op.inverteArray(l7)
g = g7
"""
#------------------------------Fim das constantes do D7------------------------

#---------------------------------constantes do 1+D15--------------------------
#dmin = 5
#g = op.generateArray(465,14)
#k = 7
#------------------------------Fim das constantes do D15------------------------


#-------------------------------Constantes de D31------------------------------
#dmin = 8
#l31 = [1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
#g = op.inverteArray(l31)
#k = 16
#------------------------------Fim das constantes do D63------------------------

dmin = 18
l63 = [1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
g = op.inverteArray(l63)
k = 33
#------------------------------Fim das constantes do D63------------------------

"""
#------------------------------Fim das constantes do D127------------------------

dmin = 36
l127= [1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1]
g = op.inverteArray(l127)
k = 127-64
#------------------------------Fim das constantes do D127------------------------
"""


#Quantidade de bits a serem enviados
quantBits = 1024000
#quantidade de mensagens
quantMensagens = int(quantBits/k)

#instanciando codificador
codificador = BinOperations()
#instanciando decodificador
print("\n instanciando decodificador ...")
decodificador = decoder(op.simplificaArray(g),n,k,dmin)
print("\n *instanciado decodificador!*")

listaP = [0.5,0.2,0.1]
anterior = 1
for i in range(5):
    for elem in listaP:
        if(anterior == 0.0):
            break
        p = elem*pow(0.1,i)
#-------------------Iniciando algoritmo de coleta de dados---------------------
#gerar mensagens aleatorias
        print("\n gerando mensagens...")
        dicMensagens = RandomNumberGenerator(quantMensagens,k)
#codificar
        print("\n codificando ...")
        dicCodificada = PassarCodificador(dicMensagens,codificador,g)
#transmissao
        print("\n enviando ...")
        (dicRecebido, erroIntro )= PassarCanalBSC(dicCodificada,p)
#decodificacao
        print("\n decodificando ...")
        dicMensagensRecebidas = PassarDecodificador(dicRecebido,decodificador)
#contagem de erros
        print("\n calculando erros ...")
        quantErros = pe(dicMensagens,dicMensagensRecebidas)
#calculo da probailidade de erro
        Pe = quantErros / quantBits
        anterior = Pe
#---------------------------Fim da coleta de dados-----------------------------
#---------------------------Impressao dos dados--------------------------------
        print("\n--------DADOS--------\n")
        print("\n\nProbabilidade de erro do CANAL BSC (p): ",p)
        print("\n\n polinomio gerador: ",g)
        print("\n\n Probabilidade de Erro sem decodificacao: ", erroIntro/quantBits)
        print("\n\n Probabilidade de erro apos decodificacao: ",Pe)

#--------------------------Fim da area de impressao dos dados------------------
#-------------------------------Area de testes------------------------------------
"""
L = 4
#tamanho da palavra codigo
numero = pow(2,L)-1
#k = ceil(numero/2)
k = 7
dmin = 6
mensagem = op.generateArray(13,k-1)
print("mensagem: ",mensagem)
#g7 = [1, 0, 1, 1, 0, 0, 0]
#g7inv = op.inverteArray(g7)
#print("\ng7inv",g7inv)
g15 = op.generateArray(465,14)
#g15 = [1, 1, 0, 1, 1, 1, 0, 1, 1]
mcoded = op.codificar(op.inverteArray(mensagem),g15)
print("\n mcoded:",mcoded)
print("mcodedinvertida:",op.inverteArray(mcoded))
#g15 = [1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0]
#g15inv = op.inverteArray(g15)
#print("\ng7i",g15inv)
#mcoded = op.codificar(mensagem,g15inv)
decodificador =  decoder(op.simplificaArray(g15),numero,k,dmin)

print("\nmensagem codificada: ",mcoded)
r = deepcopy(mcoded)
r[0] ^=1
r[2] ^=1 
#e = 0
#for i in range(32767+1):
   
#r = op.generateArray(i,14)
       # if(op.pesoHamming(r) < 3):
mensagem = decodificador.decodifica(r)
            #e +=1
            #print("\n r: ",r)
print("\n mensagem decodificada: ",mensagem)
           # print("e:",e)
"""
#print("erros corrigiveis:",e)



"""
p = 0.5
r = CanalBSC(mcoded,p)
print("\nr",r)
"""
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
"""
print("\n--------------------------Area de Testes-----------------------------")
print("entrou")
L = 7
n = pow(2,L)-1
k =  ceil(n/2)
#g = op.generateArray(465,15)
#g15=[1, 1, 0, 1, 1, 1, 0, 1, 1]
g127 = [1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1]
G = op.generateG(g127,k,n)
print("\ndistMIn",op.distMin(G)) 
print("\n peso hamming:",op.pesoHamming(g127))  
print("saiu")
"""
#------------------------------------------------------------------------------

"""
Observacoes de coisas para fazer:  
Parece que tá faltando primo divisor de 1+D^255
Deve ter primo maior do que 8 bits que divide 1+D^255
"""