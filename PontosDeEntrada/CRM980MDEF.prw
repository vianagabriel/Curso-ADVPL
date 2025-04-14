#include 'totvs.ch'



/*/{Protheus.doc} CRM980MDEF
 Ponto de entrada que adiciona um novo botão ao outras ações.
@type user function
@author Gabriel
@see https://tdn.totvs.com/pages/releaseview.action?pageId=285649735
/*/
User Function CRM980MDEF()
     Local aRotina := {}
//----------------------------------------------------------------------------------------------------------
// [n][1] - Nome da Funcionalidade
// [n][2] - Função de Usuário
// [n][3] - Operação (1-Pesquisa; 2-Visualização; 3-Inclusão; 4-Alteração; 5-Exclusão)
// [n][4] - Acesso relacionado a rotina, se esta posição não for informada nenhum acesso será validado
//----------------------------------------------------------------------------------------------------------
    aAdd(aRotina,{"Registro(RECNO)","U_zDBTST05(SA1->(Recno()))",6,0})
    
Return aRotina


