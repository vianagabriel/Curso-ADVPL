#include 'Totvs.ch'


/*/{Protheus.doc} zLogi01
   fun��o para explica��o do uso da User Function em ADVPL.

   A User Function � o ponto de entrada principal de um fonte ADVPL. 
   � usada para definir uma fun��o vis�vel e execut�vel diretamente no Protheus, seja via menu, chamada direta no configurador ou outro processo.
/*/
User Function zLogi01
   
    // Caracter�sticas da `User Function`:
    // - Pode ser chamada diretamente pelo Protheus.
    // - Nome �nico dentro do ambiente ( n�o pode repetir em outros fontes compilados ).
    // - Sempre deve conter `Return` ( mesmo que n�o retorne nada ).
    // - Recarrega o fonte inteiro quando chamada.

    
Return 
