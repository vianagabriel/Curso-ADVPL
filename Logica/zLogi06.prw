#include 'totvs.ch'

/*/{Protheus.doc} zLogi06
 Fun��o explicativa sobre estruturas de repeti��o
@type user function
@author Gabriel Viana
/*/
User Function zLogi06()

    Local nContador := 5

    // --- WHILE ---
    MsgInfo("In�cio do WHILE")

    While nContador > 0
        MsgInfo("WHILE - Contagem: " + cValToChar(nContador))
        nContador--
    EndDo

    MsgInfo("Fim do WHILE!")

    // --- FOR ---
    MsgInfo("In�cio do FOR")

    For nContador := 1 To 5
        MsgInfo("FOR - Contador: " + cValToChar(nContador))
    Next

    MsgInfo("Fim do FOR!")

Return
