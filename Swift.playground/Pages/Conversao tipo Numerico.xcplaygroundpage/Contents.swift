//: [Anterior (Literais Numéricos)](Literais%20Numericos)

/*:
 ### Conversão de tipo numérico
 Use o tipo Int para todas as constantes e variáveis ​​inteiras de uso geral em seu código, mesmo que sejam conhecidas como não negativas. Usar o tipo inteiro padrão em situações cotidianas significa que constantes e variáveis ​​inteiras são imediatamente interoperáveis ​​em seu código e corresponderão ao tipo inferido para valores literais inteiros.

 Use outros tipos inteiros somente quando forem especificamente necessários para a tarefa em questão, devido a dados de tamanho explícito de uma fonte externa ou para desempenho, uso de memória ou outra otimização necessária. O uso de tipos de tamanho explícito nessas situações ajuda a detectar qualquer estouro de valor acidental e documenta implicitamente a natureza dos dados que estão sendo usados.

 ### Conversão de inteiro
 O intervalo de números que podem ser armazenados em uma constante ou variável inteira é diferente para cada tipo numérico. Uma constante ou variável Int8 pode armazenar números entre -128 e 127, enquanto uma constante ou variável UInt8 pode armazenar números entre 0 e 255. Um número que não cabe em uma constante ou variável de um tipo inteiro dimensionado é relatado como um erro quando seu código é compilado:
*/

/*:
 let cannotBeNegative: UInt8 = -1
 // UInt8 can't store negative numbers, and so this will report an error
 let tooBig: Int8 = Int8.max + 1
 // Int8 can't store a number larger than its maximum value,
 // and so this will also report an error
*/

/*:
 Como cada tipo numérico pode armazenar um intervalo diferente de valores, você deve optar pela conversão de tipo numérico caso a caso. Essa abordagem opt-in evita erros de conversão ocultos e ajuda a tornar as intenções de conversão de tipo explícitas em seu código.

 Para converter um tipo de número específico em outro, você inicializa um novo número do tipo desejado com o valor existente. No exemplo abaixo, a constante twoThousand é do tipo UInt16, enquanto a constante one é do tipo UInt8. Eles não podem ser adicionados diretamente, porque não são do mesmo tipo. Em vez disso, este exemplo chama UInt16(one) para criar um novo UInt16 inicializado com o valor de one e usa esse valor no lugar do original:
 */

 let twoThousand: UInt16 = 2_000
 let one: UInt8 = 1
 let twoThousandAndOne = twoThousand + UInt16(one)

/*:
 
 Como ambos os lados da adição agora são do tipo UInt16, a adição é permitida. A constante de saída (twoThousandAndOne) é inferida como sendo do tipo UInt16, porque é a soma de dois valores UInt16.

 SomeType(ofInitialValue) é a maneira padrão de chamar o inicializador de um tipo Swift e passar um valor inicial. Nos bastidores, o UInt16 tem um inicializador que aceita um valor UInt8 e, portanto, esse inicializador é usado para criar um novo UInt16 a partir de um UInt8 existente. Você não pode passar nenhum tipo aqui, no entanto - tem que ser um tipo para o qual UInt16 fornece um inicializador. A extensão de tipos existentes para fornecer inicializadores que aceitam novos tipos (incluindo suas próprias definições de tipo) é abordada em Extensions.
 
 
### Conversão de inteiro e ponto flutuante
 As conversões entre tipos numéricos inteiros e de ponto flutuante devem ser explicitadas:

 Aqui, o valor da constante 3 é usado para criar um novo valor do tipo Double, de modo que ambos os lados da adição sejam do mesmo tipo. Sem essa conversão, a adição não seria permitida.

 A conversão de ponto flutuante para inteiro também deve ser explicitada. Um tipo inteiro pode ser inicializado com um valor Double ou Float:

*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double


/*:

 Aqui, o valor da constante três é usado para criar um novo valor do tipo Double, para que ambos os lados da adição sejam do mesmo tipo. Sem essa conversão, a adição não seria permitida.

 A conversão de ponto flutuante para inteiro também deve ser explicitada. Um tipo inteiro pode ser inicializado com um valor Double ou Float:
 
 */

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

/*:
 
 Os valores de ponto flutuante são sempre truncados quando usados para inicializar um novo valor inteiro dessa maneira. Isso significa que 4,75 se torna 4 e -3,9 se torna -3.
 
 > As regras para combinar constantes e variáveis numéricas são diferentes das regras para literais numéricos. O valor literal 3 pode ser adicionado diretamente ao valor literal 0,14159, porque os literais numéricos não possuem um tipo explícito em si. Seu tipo é inferido apenas no momento em que são avaliados pelo compilador.
 
 */



//: [Próxima (Tipo Aliases)](Tipo%20Aliases)
