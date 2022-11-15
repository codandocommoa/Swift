//: [Anterior (Básico) ](Basico)
/*:
 ### Constantes e Variáveis
 Constantes e variáveis ​​associam um nome (como maximumNumberOfLoginAttempts ou welcomeMessage) a um valor de um tipo específico (como o número 10 ou a string "Hello"). O valor de uma constante não pode ser alterado depois de definido, enquanto uma variável pode ser definida com um valor diferente no futuro.

 ### Declarando Constantes e Variáveis
 Constantes e variáveis ​​devem ser declaradas antes de serem usadas. Você declara constantes com a palavra-chave let e variáveis ​​com a palavra-chave var. Aqui está um exemplo de como constantes e variáveis ​​podem ser usadas para rastrear o número de tentativas de login que um usuário fez:
 */
let maximumNumberOfLoginAttempts = 10
var currentLoginAttemp = 0


/*:
 ### Este código pode ser lido como:

 “Declare uma nova constante chamada maximumNumberOfLoginAttempts e dê a ela um valor de 10. Em seguida, declare uma nova variável chamada currentLoginAttempt e dê a ela um valor inicial de 0.”

 Neste exemplo, o número máximo de tentativas de login permitidas é declarado como uma constante, porque o valor máximo nunca muda. O contador de tentativas de login atual é declarado como uma variável, pois esse valor deve ser incrementado após cada tentativa de login com falha.

 Você pode declarar várias constantes ou várias variáveis em uma única linha, separadas por vírgulas:”

 */

var x = 0.0, y = 0.0, z = 0.0

/*:
 > Se um valor armazenado em seu código não mudar, sempre o declare como uma constante com a palavra-chave let. Use variáveis apenas para armazenar valores que precisam ser alterados.
 */

/*:
### Tipo de anotações
 Você pode fornecer uma anotação de tipo ao declarar uma constante ou variável, para esclarecer o tipo de valores que a constante ou variável pode armazenar. Escreva uma anotação de tipo colocando dois pontos após o nome da constante ou variável, seguido por um espaço, seguido pelo nome do tipo a ser usado.

 Este exemplo fornece uma anotação de tipo para uma variável chamada welcomeMessage, para indicar que a variável pode armazenar valores de String:
*/

var welcomeMessage: String

/*:
 Os dois pontos na declaração significam “… do tipo…”, então o código acima pode ser lido como:

 “Declare uma variável chamada welcomeMessage que é do tipo String.”

 A frase “do tipo String” significa “pode armazenar qualquer valor de String”. Pense nisso como significando “o tipo de coisa” (ou “o tipo de coisa”) que pode ser armazenado.

 A variável welcomeMessage agora pode ser definida para qualquer valor de string sem erro:
*/

welcomeMessage = "Hello"

/*:
 Você pode definir várias variáveis relacionadas do mesmo tipo em uma única linha, separadas por vírgulas, com uma anotação de tipo único após o nome da variável final:
*/
 
var red, green, blue: Double

/*:
 > É raro que você precise escrever anotações de tipo na prática. Se você fornecer um valor inicial para uma constante ou variável no ponto em que ela é definida, o Swift quase sempre pode inferir o tipo a ser usado para essa constante ou variável, conforme descrito em Type Safety and Type Inference. No exemplo welcomeMessage acima, nenhum valor inicial é fornecido e, portanto, o tipo da variável welcomeMessage é especificado com uma anotação de tipo em vez de ser inferido a partir de um valor inicial.
 */
 

/*:
 ### Nomeando Constantes e Variáveis
 Nomes de constantes e variáveis podem conter quase qualquer caractere, incluindo caracteres Unicode:
*/

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

/*:
 Nomes de constantes e variáveis não podem conter caracteres de espaço em branco, símbolos matemáticos, setas, valores escalares Unicode de uso privado ou caracteres de desenho de linha e caixa. Nem podem começar com um número, embora os números possam ser incluídos em outros lugares dentro do nome.

 Depois de declarar uma constante ou variável de um determinado tipo, você não pode declará-la novamente com o mesmo nome ou alterá-la para armazenar valores de um tipo diferente. Nem você pode transformar uma constante em uma variável ou uma variável em uma constante.
 
>Se você precisar dar a uma constante ou variável o mesmo nome de uma palavra-chave reservada do Swift, coloque a palavra-chave com acentos graves (`) ao usá-la como um nome. No entanto, evite usar palavras-chave como nomes, a menos que você não tenha absolutamente nenhuma escolha.
 
 Você pode alterar o valor de uma variável existente para outro valor de um tipo compatível. Neste exemplo, o valor de friendlyWelcome é alterado de "Hello!" para “Bonjour!":
*/

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!”

/*:
 Ao contrário de uma variável, o valor de uma constante não pode ser alterado depois de definido. A tentativa de fazer isso é relatada como um erro quando seu código é compilado:
*/

let languageName = "Swift"
// remova o comentario // da linha abaixo e veja o erro
//languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.”

/*:
 Impressão de Constantes e Variáveis
 Você pode imprimir o valor atual de uma constante ou variável com a função print(_:separator:terminator:):
*/

print(friendlyWelcome)
// Prints "Bonjour!”


/*:
 A função print(_:separator:terminator:) é uma função global que imprime um ou mais valores em uma saída apropriada. No Xcode, por exemplo, a função print(_:separator:terminator:) imprime sua saída no painel “console” do Xcode. Os parâmetros separador e terminator têm valores padrão, portanto, você pode omiti-los ao chamar essa função. Por padrão, a função encerra a linha que imprime adicionando uma quebra de linha. Para imprimir um valor sem uma quebra de linha depois dele, passe uma string vazia como o terminator—por exemplo, print(someValue, terminator: ""). Para obter informações sobre parâmetros com valores padrão, consulte Valores de parâmetro padrão.

 O Swift usa a interpolação de strings para incluir o nome de uma constante ou variável como um espaço reservado em uma string mais longa e para solicitar que o Swift o substitua pelo valor atual dessa constante ou variável. Coloque o nome entre parênteses e escape com uma barra invertida antes do parêntese de abertura:
*/
 

print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Prints "The current value of friendlyWelcome is Bonjour!”

/*:
 > Todas as opções que você pode usar com a interpolação de strings estão descritas em String Interpolation
 */
 
 
 
//: [Próxima (Comentários)](Comentarios)

