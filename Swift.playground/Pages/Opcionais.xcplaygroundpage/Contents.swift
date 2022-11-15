//: [Anterior (Tuplas)](Tuplas)

/*:
 ### Opcionais
 Você usa opcionais em situações em que um valor pode estar ausente. Um opcional representa duas possibilidades: ou existe um valor e você pode desembrulhar o opcional para acessar esse valor, ou não existe nenhum valor.

 > O conceito de opcionais não existe em C ou Objective-C. A coisa mais próxima em Objective-C é a capacidade de retornar nil de um método que, de outra forma, retornaria um objeto, com nil significando “a ausência de um objeto válido”. No entanto, isso só funciona para objetos - não funciona para estruturas, tipos básicos de C ou valores de enumeração. Para esses tipos, os métodos Objective-C normalmente retornam um valor especial (como NSNotFound) para indicar a ausência de um valor. Essa abordagem pressupõe que o chamador do método sabe que há um valor especial para testar e se lembra de verificar. Os opcionais do Swift permitem indicar a ausência de um valor para qualquer tipo, sem a necessidade de constantes especiais.



 Aqui está um exemplo de como opcionais podem ser usados ​​para lidar com a ausência de um valor. O tipo Int do Swift tem um inicializador que tenta converter um valor String em um valor Int. No entanto, nem toda string pode ser convertida em um inteiro. A string "123" pode ser convertida no valor numérico 123, mas a string "hello, world" não tem um valor numérico óbvio para converter.

 O exemplo abaixo usa o inicializador para tentar converter uma String em um Int:
 
 */

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int


/*:
 Como o inicializador pode falhar, ele retorna um Int opcional, em vez de um Int. Um Int opcional é escrito como Int?, não como Int. O ponto de interrogação indica que o valor que ele contém é opcional, o que significa que ele pode conter algum valor Int ou pode não conter nenhum valor. (Ele não pode conter mais nada, como um valor Bool ou um valor String. É um Int ou não é nada.)

 ### nil
 Você define uma variável opcional para um estado sem valor, atribuindo-lhe o valor especial nil:
 */

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value”

/*:
 > Você não pode usar nil com constantes e variáveis não opcionais. Se uma constante ou variável em seu código precisar funcionar com a ausência de um valor sob certas condições, sempre a declare como um valor opcional do tipo apropriado.
 
 Se você definir uma variável opcional sem fornecer um valor padrão, a variável será automaticamente definida como nil para você:
 */

var surveyAnswer: String?
// surveyAnswer is automatically set to nil

/*:
 > O nil de Swift não é o mesmo que nil em Objective-C. Em Objective-C, nil é um ponteiro para um objeto inexistente. Em Swift, nil não é um ponteiro – é a ausência de um valor de um certo tipo. Opcionais de qualquer tipo podem ser definidos como nil, não apenas tipos de objeto.
 
 
 #### Declarações if e desempacotamento forçado
 Você pode usar uma instrução if para descobrir se um opcional contém um valor comparando o opcional com nil. Você executa essa comparação com o operador “igual a” (==) ou o operador “diferente de” (!=).

 Se um opcional tem um valor, é considerado “diferente de” nil:
*/

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value.

/*:
 Depois de ter certeza de que o opcional contém um valor, você pode acessar seu valor subjacente adicionando um ponto de exclamação (!) ao final do nome do opcional. O ponto de exclamação efetivamente diz: “Sei que este opcional definitivamente tem um valor; por favor, use-o.” Isso é conhecido como desdobramento forçado do valor do opcional:
 */

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123.

/*:
 Para obter mais informações sobre a instrução if, consulte Fluxo de controle.

 > Tentando usar! acessar um valor opcional inexistente aciona um erro de tempo de execução. Sempre certifique-se de que um opcional contém um valor diferente de zero antes de usar ! forçar a desembrulhar seu valor.

 #### Encadernação opcional
 Você usa a ligação opcional para descobrir se um opcional contém um valor e, em caso afirmativo, para disponibilizar esse valor como uma constante ou variável temporária. A ligação opcional pode ser usada com instruções if e while para verificar um valor dentro de um opcional e para extrair esse valor em uma constante ou variável, como parte de uma única ação. As instruções if e while são descritas com mais detalhes em Control Flow.

 Escreva uma ligação opcional para uma instrução if da seguinte forma:
 */

/*:
if let constantName = someOptional {
    statements
}

 Você pode reescrever o exemplo possibleNumber da seção Optionals para usar a vinculação opcional em vez do desempacotamento forçado:
*/

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

/*:
 “Se o opcional Int retornado por Int(possibleNumber) contiver um valor, defina uma nova constante chamada atualNumber para o valor contido no opcional.”

 Se a conversão for bem-sucedida, a constante atualNumber ficará disponível para uso na primeira ramificação do if declaração. Ele já foi inicializado com o valor contido no opcional e, portanto, você não usa o ! sufixo para acessar seu valor. Neste exemplo, actualNumber é usado simplesmente para imprimir o resultado da conversão.

 Você pode usar constantes e variáveis ​​com vinculação opcional. Se você quisesse manipular o valor de atualNumber dentro da primeira ramificação da instrução if, você poderia escrever if var atualNumber, e o valor contido no opcional seria disponibilizado como uma variável em vez de uma constante.

 Você pode incluir quantas associações opcionais e condições booleanas em uma única instrução if forem necessárias, separadas por vírgulas. Se qualquer um dos valores nas associações opcionais for nil ou qualquer condição booleana for avaliada como falsa, toda a condição da instrução if será considerada falsa. As seguintes declarações if são equivalentes

*/

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100

/*:
 > Constantes e variáveis criadas com ligação opcional em uma instrução if estão disponíveis apenas no corpo da instrução if. Em contraste, as constantes e variáveis criadas com uma instrução guard estão disponíveis nas linhas de código que seguem a instrução guard, conforme descrito em Early Exit.

 Opcionais Implicitamente Desempacotados
 Conforme descrito acima, os opcionais indicam que uma constante ou variável pode ter “nenhum valor”. Os opcionais podem ser verificados com uma instrução if para ver se existe um valor e podem ser desempacotados condicionalmente com uma ligação opcional para acessar o valor do opcional, se existir.

 Às vezes fica claro pela estrutura de um programa que um opcional sempre terá um valor, depois que esse valor for definido pela primeira vez. Nesses casos, é útil remover a necessidade de verificar e desempacotar o valor do opcional toda vez que ele for acessado, pois pode-se presumir com segurança que ele tem um valor o tempo todo.

 Esses tipos de opcionais são definidos como opcionais desempacotados implicitamente. Você escreve um opcional desempacotado implicitamente colocando um ponto de exclamação (String!) em vez de um ponto de interrogação (String?) após o tipo que deseja tornar opcional. Em vez de colocar um ponto de exclamação após o nome do opcional ao usá-lo, você coloca um ponto de exclamação após o tipo do opcional ao declará-lo.
 
 Opcionais implicitamente desempacotados são úteis quando o valor de um opcional é confirmado como existente imediatamente após o opcional ser definido pela primeira vez e pode definitivamente ser assumido como existindo em todos os pontos posteriores. O principal uso de opcionais desempacotados implicitamente no Swift é durante a inicialização da classe, conforme descrito em Referências sem dono e propriedades opcionais desempacotadas implicitamente.

 Um opcional desempacotado implicitamente é um opcional normal nos bastidores, mas também pode ser usado como um valor não opcional, sem a necessidade de desempacotar o valor opcional toda vez que for acessado. O exemplo a seguir mostra a diferença de comportamento entre uma string opcional e uma string opcional desempacotada implicitamente ao acessar seu valor encapsulado como uma String explícita:
 */

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

/*:
 Você pode pensar em um opcional desempacotado implicitamente como dando permissão para que o opcional seja desempacotado à força, se necessário. Quando você usa um valor opcional desempacotado implicitamente, o Swift primeiro tenta usá-lo como um valor opcional comum; se não puder ser usado como opcional, o Swift desempacotará o valor à força. No código acima, o valor opcional assumidoString é desempacotado à força antes de atribuir seu valor a implicitString porque implicitString tem um tipo de String explícito e não opcional. No código abaixo, optionalString não tem um tipo explícito, então é um opcional comum.
 */

let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.


/*:
 Se um opcional desempacotado implicitamente for nil e você tentar acessar seu valor encapsulado, você acionará um erro de tempo de execução. O resultado é exatamente o mesmo que se você colocar um ponto de exclamação após um opcional normal que não contém um valor.

 Você pode verificar se um opcional desempacotado implicitamente é nil da mesma forma que verifica um opcional normal:
 
 */

if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string.


/*:
 Você também pode usar um opcional desempacotado implicitamente com ligação opcional, para verificar e desempacotar seu valor em uma única instrução:
 */

if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string.

/*:
 > Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point. Always use a normal optional type if you need to check for a nil value during the lifetime of a variable.
 */

//: [Próxima (Manipulacao de erros)](Manipulacao%20de%20erros)
