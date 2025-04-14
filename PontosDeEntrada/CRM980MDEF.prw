#include 'totvs.ch'



/*/{Protheus.doc} CRM980MDEF
 Ponto de entrada que adiciona um novo bot�o ao outras a��es.
@type user function
@author Gabriel
@see https://tdn.totvs.com/pages/releaseview.action?pageId=285649735
/*/
User Function CRM980MDEF()
     Local aRotina := {}
//----------------------------------------------------------------------------------------------------------
// [n][1] - Nome da Funcionalidade
// [n][2] - Fun��o de Usu�rio
// [n][3] - Opera��o (1-Pesquisa; 2-Visualiza��o; 3-Inclus�o; 4-Altera��o; 5-Exclus�o)
// [n][4] - Acesso relacionado a rotina, se esta posi��o n�o for informada nenhum acesso ser� validado
//----------------------------------------------------------------------------------------------------------
    aAdd(aRotina,{"Registro(RECNO)","U_zDBTST05(SA1->(Recno()))",6,0})
    
Return aRotina


