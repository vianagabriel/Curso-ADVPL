#include 'totvs.ch'


/*/{Protheus.doc} ZDBTST01
 Explicando como usar o DBSelectArea 
@type user function
@author Gabriel Viana

@see https://tdn.totvs.com/display/public/framework/DBSelectArea
@see https://tdn.totvs.com/display/tec/Select

/*/
User Function ZDBTST01
    // -- prepara o ambiente para que possa se acessar o banco de dados sem precisar carregar o app protheus
    rpcSetEnv('99','01')
        
        //Seleciona uma area para ser padrão a ser utilizada
        DBSelectArea('SA1')

        // -- Retorna o identificador de controle da area de trabalho
        nAreaSA1 := select('SA1')

        DBSelectArea(nAreaSA1)


        DBCloseArea()

    // -- Encerra o ambiente
    rpcClearEnv()

Return 
