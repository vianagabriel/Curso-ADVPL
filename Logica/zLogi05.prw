#include 'totvs.ch'

/*/{Protheus.doc} zLogi05
 Fun��o para explica��o do uso da condi��o IF e Do Case
@type user function
@author Gabriel
/*/

User Function zLogi05()

    // Declara��o de vari�veis locais
    Local num1 := 10
    Local num2 := 20
    Local soma := 0

    // Estrutura IF comum
    // Verifica se num1 � maior que num2
    If num1 > num2 
        // Se verdadeiro, soma os dois valores
        soma := num1 + num2
    Else
        // Caso contr�rio, faz a subtra��o
        soma := num2 - num1
    EndIf

    // IF usado como fun��o tern�ria
    // Executa a condi��o e atribui o resultado diretamente � vari�vel
    soma := If(num1 > num2, num1 + num2, num2 - num1) 

    // Estrutura IF com ELSEIF e ELSE
    If num1 > num2 
        // Se num1 for maior, mostra essa mensagem
        FwAlertInfo('Primeiro numero � maior')
    ElseIF num1 = num2
        // Se forem iguais, mostra essa mensagem
        FwAlertInfo('Numeros iguais')
    Else
        // Se nenhuma das anteriores, executa o bloco final
        FwAlertInfo('Valor default')
    EndIf

    // Estrutura DO CASE
    // Avalia v�rias condi��es sequenciais
    Do Case 
        Case num1 > num2
            // Executa se num1 for maior
            FwAlertInfo('Primeiro numero � maior')
        Case num1 = num2
            // Executa se os n�meros forem iguais
            FwAlertInfo('numeros iguais')
        Otherwise
            // Executa se nenhuma das condi��es anteriores for verdadeira
            FwAlertInfo('primeiro numero � menor')
    EndCase 

Return
