#include 'totvs.ch'

/*/{Protheus.doc} zDBTST04
Fun��o para buscar cliente pelo CNPJ e exibir seu nome e CNPJ, Utilizando o DbSeek
@type user function
@author Gabriel Viana
@since 13/04/2025
@see https://tdn.totvs.com/display/tec/DBSeek
/*/
User Function zDBTST04()

    Local aArea  := GetArea()
    Local lExist := .F.
    

    // Define o ambiente
    rpcSetEnv('99','01')

    DBSelectArea('SA1')
    DBSetOrder(3) // A1_FILIAL + A1_CGC

    // Busca pelo CNPJ com 14 posi��es (ajuste os espa�os � esquerda conforme necess�rio)
    lExist := DBSeek('  30321265000152')

    If lExist
        FWAlertInfo("Cliente encontrado: " + SA1->A1_NOME + CRLF + ;
                    "CNPJ: " + SA1->A1_CGC, "Aten��o")
    Else
        FWAlertInfo('Cliente n�o encontrado', 'Aten��o')   
    EndIf

    DBCloseArea()
    // Limpa o ambiente
    rpcClearEnv()
    RestArea(aArea)

Return
