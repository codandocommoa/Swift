//: [Anterior (Tipo Aliases)](Tipo%20Aliases)

/*:
### Booleanos
 Swift tem um tipo booleano básico, chamado Bool. Os valores booleanos são chamados de lógicos, porque só podem ser verdadeiros ou falsos. Swift fornece dois valores de constantes booleanas, true e false:
*/

let orangesAreOrange = true
let turnipsAreDelicious = false


/*:
 Os tipos de orangesAreOrange e turnipsAreDelicious foram inferidos como Bool pelo fato de terem sido inicializados com valores literais Booleanos. Assim como Int e Double acima, você não precisa declarar constantes ou variáveis como Bool se as definir como true ou false assim que as criar. A inferência de tipo ajuda a tornar o código Swift mais conciso e legível quando inicializa constantes ou variáveis com outros valores cujo tipo já é conhecido.

 Os valores booleanos são particularmente úteis quando você trabalha com instruções condicionais, como a instrução if: */

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible.


/*:
 Declarações condicionais, como a instrução if, são abordadas com mais detalhes no Fluxo de Controle.
 A segurança de tipo do Swift impede que valores não booleanos sejam substituídos por Bool. O exemplo a seguir relata um erro em tempo de compilação:
*/

let i = 1
if i {
    // this example will not compile, and will report an error
}

/*:
 No entanto, o exemplo alternativo abaixo é válido:
*/

let i = 1
if i == 1 {
    // this example will compile successfully
}

/*:
 O resultado da comparação i == 1 é do tipo Bool e, portanto, este segundo exemplo passa na verificação de tipo. Comparações como i == 1 são discutidas em Basic Operators.
 
 Assim como em outros exemplos de segurança de tipo no Swift, essa abordagem evita erros acidentais e garante que a intenção de uma seção específica do código seja sempre clara.
 */


//: [Próxima (Tuplas)](Tuplas)
