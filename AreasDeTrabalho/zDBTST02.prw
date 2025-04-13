#include 'totvs.ch'

/*/{Protheus.doc} nomeFunction
 Explicando sobre o DBUseArea
@type user function
@author Gabriel Viana

@see https://tdn.totvs.com/display/public/framework/DBUseArea
@see https://tdn.totvs.com/display/tec/DBSetIndex

[ lNewArea ] - Caso verdadeiro, indica que a tabela deve ser aberta em uma nova área (Default = .F.) 
[ cDriver ]  - Informa o Driver (RDD) a ser utilizado para a abertura da tabela. Caso NIL, será usado o driver default de acesso a arquivos locais.
< cFile >    - Nome do arquivo/tabela a ser aberta.
< cAlias >   - Nome dado ao alias da tabela para ser referenciado no programa ADVPL.
[ lShared ]  - Caso .T., indica que a tabela deve ser aberta em modo compartilhado (acesso simultâneo).
[ lReadOnly ]- Caso .T., indica que este alias será usado apenas para leitura de dados.
/*/

User Function zDBTST02

    // Declaração das variáveis
    local cDriver
    local cArquivo
    local cAlias
    local cIndex1
    local cIndex2
    local lNewArea
    local lShared
    local lReadOnly

    // -- Prepara o ambiente com a filial 01 da empresa 99
    rpcSetEnv('99','01')

    // Define os parâmetros para abertura da tabela
    lNewArea  := .T.                        // Abrir em uma nova área de trabalho
    cDriver   := 'TOPCONN'                 // Driver usado (TOPCONN para banco relacional)
    cArquivo  := retSqlName('SA1')         // Nome físico da tabela SA1 no banco de dados
    cAlias    := 'SA1'                     // Nome que será usado como alias no programa
    lShared   := .T.                        // Permite acesso compartilhado
    lReadOnly := .F.                        // Permite escrita (não é apenas leitura)

    // Abre a área de trabalho com os parâmetros definidos
    DBUseArea(lNewArea, cDriver, cArquivo, (cAlias), lShared, lReadOnly)

    // Define os caminhos dos arquivos de índice (geralmente arquivos .CDX no Protheus)
    cIndex01 := cArquivo + '1'
    cIndex2  := cArquivo + '2'

    // Carrega os índices manualmente com DbSetIndex()
    dbSetIndex(cIndex01)
    dbSetIndex(cIndex2)

    // -- Encerra o ambiente configurado (desfaz o rpcSetEnv)
    rpcClearEnv()

Return
