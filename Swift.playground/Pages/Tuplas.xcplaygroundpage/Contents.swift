//: [Anterior (Booleanos)](Booleanos)

/*:
 Tuplas
 As tuplas agrupam vários valores em um único valor composto. Os valores dentro de uma tupla podem ser de qualquer tipo e não precisam ser do mesmo tipo uns dos outros.

 Neste exemplo, (404, "Not Found") é uma tupla que descreve um código de status HTTP. Um código de status HTTP é um valor especial retornado por um servidor da Web sempre que você solicita uma página da Web. Um código de status 404 Not Found é retornado se você solicitar uma página da Web que não existe.
 
 */

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

/*:
 A tupla (404, “Not Found") agrupa um Int e uma String para fornecer ao código de status HTTP dois valores separados: um número e uma descrição legível por humanos. Pode ser descrito como “uma tupla do tipo (Int, String)”.

 Você pode criar tuplas a partir de qualquer permutação de tipos, e elas podem conter quantos tipos diferentes você desejar. Não há nada que impeça você de ter uma “tupla do tipo (Int, Int, Int), ou (String, Bool), ou qualquer outra permutação que você precisar.

 Você pode decompor o conteúdo de uma tupla em constantes ou variáveis ​​separadas, que você acessa normalmente:
*/

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found

/*:
 Se você precisar apenas de alguns dos valores da tupla, ignore partes da tupla com um sublinhado (_) ao decompor a tupla:
 */


let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404

/*:
 Como alternativa, acesse os valores de elementos individuais em uma tupla usando números de índice começando em zero:”

 */

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found

/*:
 Você pode nomear os elementos individuais em uma tupla quando a tupla é definida:

 */

let http200Status = (statusCode: 200, description: "OK")

/*:
 Se você nomear os elementos em uma tupla, poderá usar os nomes dos elementos para acessar os valores desses elementos:

 */

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK

/*:
 Tuplas são particularmente úteis como valores de retorno de funções. Uma função que tenta recuperar uma página da Web pode retornar o tipo de tupla (Int, String) para descrever o sucesso ou a falha da recuperação da página. Ao retornar uma tupla com dois valores distintos, cada um de um tipo diferente, a função fornece informações mais úteis sobre seu resultado do que se pudesse retornar apenas um único valor de um único tipo. Para obter mais informações, consulte Funções com vários valores de retorno.
 
 >Tuplas são úteis para grupos simples de valores relacionados. Eles não são adequados para a criação de estruturas de dados complexas. Se sua estrutura de dados provavelmente for mais complexa, modele-a como uma classe ou estrutura, em vez de uma tupla. Para obter mais informações, consulte Estruturas e classes.
 */

//: [Próxima(Opcionais)](Opcionais)
