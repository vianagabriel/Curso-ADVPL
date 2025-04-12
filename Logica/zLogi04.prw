#include 'totvs.ch'



/*/{Protheus.doc} zLogi04
   Função explica sobre arrays em advpl

   Maneiras de iniciar um array
   Local aNomes := {}
   Local aValores := array(5)
   
/*/



User Function zLogi04

    Local aArray := Array(0) // Cria um array vazio 
    Local aCloneArray
    Local nIndex

    // Adiciona valores ao array
    aAdd(aArray, "Maria")
    aAdd(aArray, "João")
    aAdd(aArray, "Ana")
    aAdd(aArray, "Carlos")

    // Exibe array inicial
    ConOut("Array inicial: ", aArray)

    // Insere valor na 2ª posição
    aIns(aArray, 2, "Bruno")
    ConOut("Após aIns (Bruno na posição 2): ", aArray)

    // Remove o item da 3ª posição
    aDel(aArray, 3)
    ConOut("Após aDel (remove posição 3): ", aArray)

    // Mostra o tamanho do array
    ConOut("Tamanho do array (aSize): ", aSize(aArray))

    // Clona o array
    aCloneArray := aClone(aArray)
    ConOut("Array clonado (aClone): ", aCloneArray)

    // Ordena o array
    aSort(aArray)
    ConOut("Array ordenado (aSort): ", aArray)

    // Busca o índice do nome "Ana"
    nIndex := aScan(aArray, {|x| x == "Ana"})
    ConOut("Índice do item 'Ana' (aScan): ", nIndex)

    // Avalia cada item do array e exibe com aEval
    aEval(aArray, {|x| ConOut("Item do array (aEval): ", x)})

Return
