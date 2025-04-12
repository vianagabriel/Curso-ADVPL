#include 'Totvs.ch'


/*/{Protheus.doc} zLogi01
   função para explicação do uso da User Function em ADVPL.

   A User Function é o ponto de entrada principal de um fonte ADVPL. 
   É usada para definir uma função visível e executável diretamente no Protheus, seja via menu, chamada direta no configurador ou outro processo.
/*/
User Function zLogi01
   
    // Características da `User Function`:
    // - Pode ser chamada diretamente pelo Protheus.
    // - Nome único dentro do ambiente ( não pode repetir em outros fontes compilados ).
    // - Sempre deve conter `Return` ( mesmo que não retorne nada ).
    // - Recarrega o fonte inteiro quando chamada.

    
Return 
