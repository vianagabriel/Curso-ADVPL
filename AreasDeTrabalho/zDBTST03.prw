#include 'totvs.ch'


/*/{Protheus.doc} ZDBTST03
 Explicando como usar o DbSetOrder
@type user function
@author Gabriel Viana

@see https://tdn.totvs.com/display/tec/DbSetOrder
@see 

/*/
User Function ZDBTST03
    // -- prepara o ambiente para que possa se acessar o banco de dados sem precisar carregar o app protheus
    rpcSetEnv('99','01')
        
        DBSelectArea('SA1')
        DbSetOrder(1)// Definindo o indice a ser utilizado 

        SA1->(DbSetOrder(2))// definindo o indice a ser utilizado na SA1


        DBCloseArea()
    // -- Encerra o ambiente
    rpcClearEnv()

Return 
