#include 'Totvs.ch'


// Variáveis estáticas
Static dDataAtu  := Date()
Static cHoraAtu  := Time()



/*/{Protheus.doc} zLogi02
   função para explicação de variaveis
   
   Variavéis locais: 
    Escopo: São variáveis declaradas dentro de um função, bloco ou procedimento.
    Tempo de Vida: Existiraão apenas enquanto a execução do código estiver dentro da função ou bloco.
    Uso: Usadas para armazenar dados temporários necessários apenas para a execução de uma função ou procedimento. 


   Variáveis Privadas
    Escopo: São variáveis que pertencem a um obketo ou classe, mas não são acessíveis fora desse objeto ou classe, a menos que haja
            métodos específicos para manipular elas.

    Tempo de Vida: Exitem enquanto o objeto ou classe ou função estiver instanciado e disponivel.
    Uso: São usadas quando você quer mnater o controle sobre os dados dentro de um onjeto sem permitir acesso direto externo


   Variáveis estáticas 
    Escopo: Mantém o valor entre diferentes chamadas da função ou bloco onde foi declarada, ou seja, seu valor persiste entre execuções do código.

    Tempo de Vida: É iniciada apenas uma vez e existe durante toda a execução do programa, até que o processo seja finalizado.
    Uso: Usada qundo você deseja que uma variável mantenha seu valor entre várias invocações de funções ou métodos, mas sem ser acessível globalmente.


   Variáveis Públicas
    Escopo: São variáveis que podem ser acessadas globalmente dentro do sistema ou do módulo onde foram declaradas. Podem ser manipuladas em qualquer parte do código.

    Tempo de Vida: A variável pública existe durante toda a execução do programa.

    Uso: Usadas quando você precisa de uma variável acessível por várias partes do código, como configuração global ou para comunicação entre diferentes partes do sistema.

   
   Autor: Gabriel Viana
/*/


User Function zLogi02
   Local cNome       := 'Gabriel'
   Private cSobrenome  := 'Viana'
   

   Public _cCidade  := 'São Paulo'
  

Return 


