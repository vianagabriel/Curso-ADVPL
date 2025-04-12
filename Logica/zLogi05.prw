#include 'totvs.ch'

/*/{Protheus.doc} zLogi05
 Função para explicação do uso da condição IF e Do Case
@type user function
@author Gabriel
/*/

User Function zLogi05()

    // Declaração de variáveis locais
    Local num1 := 10
    Local num2 := 20
    Local soma := 0

    // Estrutura IF comum
    // Verifica se num1 é maior que num2
    If num1 > num2 
        // Se verdadeiro, soma os dois valores
        soma := num1 + num2
    Else
        // Caso contrário, faz a subtração
        soma := num2 - num1
    EndIf

    // IF usado como função ternária
    // Executa a condição e atribui o resultado diretamente à variável
    soma := If(num1 > num2, num1 + num2, num2 - num1) 

    // Estrutura IF com ELSEIF e ELSE
    If num1 > num2 
        // Se num1 for maior, mostra essa mensagem
        FwAlertInfo('Primeiro numero é maior')
    ElseIF num1 = num2
        // Se forem iguais, mostra essa mensagem
        FwAlertInfo('Numeros iguais')
    Else
        // Se nenhuma das anteriores, executa o bloco final
        FwAlertInfo('Valor default')
    EndIf

    // Estrutura DO CASE
    // Avalia várias condições sequenciais
    Do Case 
        Case num1 > num2
            // Executa se num1 for maior
            FwAlertInfo('Primeiro numero é maior')
        Case num1 = num2
            // Executa se os números forem iguais
            FwAlertInfo('numeros iguais')
        Otherwise
            // Executa se nenhuma das condições anteriores for verdadeira
            FwAlertInfo('primeiro numero é menor')
    EndCase 

Return
