//: [Anterior (Inteiros)](Inteiros)

/*:
 ### Números de ponto flutuante
 Números de ponto flutuante são números com um componente fracionário, como _3,14159_, _0,1_ e _-273,15_.

 Os tipos de ponto flutuante podem representar um intervalo muito maior de valores do que os tipos inteiros e podem armazenar números muito maiores ou menores do que podem ser armazenados em um Int. Swift fornece dois tipos de números de ponto flutuante assinados:

 * Double representa um número de ponto flutuante de 64 bits.
 * Float representa um número de ponto flutuante de 32 bits.

 > Double tem uma precisão de pelo menos 15 dígitos decimais, enquanto a precisão de Float pode ser de apenas 6 dígitos decimais. O tipo de ponto flutuante apropriado a ser usado depende da natureza e do intervalo de valores com os quais você precisa trabalhar em seu código. Em situações em que qualquer tipo seria apropriado, Double é o preferido.
 
 ### Segurança de tipo e inferência de tipo
 Swift é uma linguagem de tipo seguro(type-safe). Uma linguagem de tipo seguro incentiva você a ser claro sobre os tipos de valores com os quais seu código pode trabalhar. Se parte do seu código requer uma String, você não pode passar um Int por engano.

 Como o Swift é seguro para tipos, ele executa verificações de tipo ao compilar seu código e sinaliza quaisquer tipos incompatíveis como erros. Isso permite que você detecte e corrija erros o mais cedo possível no processo de desenvolvimento.

 A verificação de tipo ajuda a evitar erros ao trabalhar com diferentes tipos de valores. No entanto, isso não significa que você precisa especificar o tipo de cada constante e variável que você declara. Se você não especificar o tipo de valor necessário, o Swift usa a inferência de tipo para descobrir o tipo apropriado. A inferência de tipo permite que um compilador deduza o tipo de uma determinada expressão automaticamente ao compilar seu código, simplesmente examinando os valores fornecidos.

 Por causa da inferência de tipo, Swift requer muito menos declarações de tipo do que linguagens como C ou Objective-C. Constantes e variáveis ainda são explicitamente tipadas, mas muito do trabalho de especificar seu tipo é feito para você.

 A inferência de tipo é particularmente útil quando você declara uma constante ou variável com um valor inicial. Isso geralmente é feito atribuindo um valor literal (ou literal) à constante ou variável no ponto em que você a declara. (Um valor literal é um valor que aparece diretamente em seu código-fonte, como 42 e 3,14159 nos exemplos abaixo.)

 Por exemplo, se você atribuir um valor literal de 42 a uma nova constante sem dizer de que tipo ela é, Swift deduz que você quer que a constante seja um Int, porque você a inicializou com um número que parece um inteiro:
 */

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

/*:
 Da mesma forma, se você não especificar um tipo para um literal de ponto flutuante, o Swift deduzirá que você deseja criar um Double:
*/

let pi = 3.14159
// pi is inferred to be of type Double

/*:
 Swift sempre escolhe Double (em vez de Float) ao inferir o tipo de números de ponto flutuante.

 Se você combinar literais inteiros e de ponto flutuante em uma expressão, um tipo de Double será inferido do contexto:

 */

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

/*:
 O valor literal de 3 não tem um tipo explícito em si e, portanto, um tipo de saída apropriado de Double é inferido da presença de um literal de ponto flutuante como parte da adição.
*/

//: [Próxima (Literais Numéricos)](Literais%20Numericos)
