#include 'Totvs.ch'


// Vari�veis est�ticas
Static dDataAtu  := Date()
Static cHoraAtu  := Time()



/*/{Protheus.doc} zLogi02
   fun��o para explica��o de variaveis
   
   Variav�is locais: 
    Escopo: S�o vari�veis declaradas dentro de um fun��o, bloco ou procedimento.
    Tempo de Vida: Existira�o apenas enquanto a execu��o do c�digo estiver dentro da fun��o ou bloco.
    Uso: Usadas para armazenar dados tempor�rios necess�rios apenas para a execu��o de uma fun��o ou procedimento. 


   Vari�veis Privadas
    Escopo: S�o vari�veis que pertencem a um obketo ou classe, mas n�o s�o acess�veis fora desse objeto ou classe, a menos que haja
            m�todos espec�ficos para manipular elas.

    Tempo de Vida: Exitem enquanto o objeto ou classe ou fun��o estiver instanciado e disponivel.
    Uso: S�o usadas quando voc� quer mnater o controle sobre os dados dentro de um onjeto sem permitir acesso direto externo


   Vari�veis est�ticas 
    Escopo: Mant�m o valor entre diferentes chamadas da fun��o ou bloco onde foi declarada, ou seja, seu valor persiste entre execu��es do c�digo.

    Tempo de Vida: � iniciada apenas uma vez e existe durante toda a execu��o do programa, at� que o processo seja finalizado.
    Uso: Usada qundo voc� deseja que uma vari�vel mantenha seu valor entre v�rias invoca��es de fun��es ou m�todos, mas sem ser acess�vel globalmente.


   Vari�veis P�blicas
    Escopo: S�o vari�veis que podem ser acessadas globalmente dentro do sistema ou do m�dulo onde foram declaradas. Podem ser manipuladas em qualquer parte do c�digo.

    Tempo de Vida: A vari�vel p�blica existe durante toda a execu��o do programa.

    Uso: Usadas quando voc� precisa de uma vari�vel acess�vel por v�rias partes do c�digo, como configura��o global ou para comunica��o entre diferentes partes do sistema.

   
   Autor: Gabriel Viana
/*/


User Function zLogi02
   Local cNome       := 'Gabriel'
   Private cSobrenome  := 'Viana'
   

   Public _cCidade  := 'S�o Paulo'
  

Return 


