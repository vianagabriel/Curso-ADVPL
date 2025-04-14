#include 'totvs.ch'


/*/{Protheus.doc} zDBTST05
 Função mostrando o uso do DBGoTo
@type user function
@author Gabriel Viana

@see https://tdn.totvs.com/display/tec/DBGoTo
/*/
User Function zDBTST05(nRecno) // Recebendo um Recno quie esta sendo passado na chamada dessa função
     DBSelectArea('SA1') // Posicionando na area de trabalho SA1
     DBSetOrder(1)// Ordenando pelo indice 1

     DBGoTo(nRecno)// Posicionando no registro
     FWAlertInfo('Recno do Cliente: ' + cValToChar(nRecno)) 
Return 
