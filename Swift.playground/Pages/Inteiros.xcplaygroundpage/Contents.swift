//: [Anterior (Ponto e Virgula)](Ponto%20e%20Virgula)

/*:
 ### Inteiros
 Os inteiros são números inteiros sem componente fracionário, como 42 e -23. Os inteiros são com sinal (positivo, zero ou negativo) ou sem sinal (positivo ou zero).

 Swift fornece inteiros assinados e não assinados em formatos de 8, 16, 32 e 64 bits. Esses inteiros seguem uma convenção de nomenclatura semelhante a C, em que um inteiro sem sinal de 8 bits é do tipo UInt8 e um inteiro com sinal de 32 bits é do tipo Int32. Como todos os tipos no Swift, esses tipos inteiros têm nomes em maiúsculas.


 Limites inteiros
 Você pode acessar os valores mínimo e máximo de cada tipo inteiro com suas propriedades min e max:
*/

let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8


/*:
 Os valores dessas propriedades são do tipo numérico de tamanho apropriado (como UInt8 no exemplo acima) e, portanto, podem ser usados em expressões ao lado de outros valores do mesmo tipo.




### Int
 Na maioria dos casos, você não precisa escolher um tamanho específico de inteiro para usar em seu código. Swift fornece um tipo inteiro adicional, Int, que tem o mesmo tamanho que o tamanho da palavra nativa da plataforma atual:

* Em uma plataforma de 32 bits, Int é do mesmo tamanho que Int32.
* Em uma plataforma de 64 bits, Int tem o mesmo tamanho que Int64.

 A menos que você precise trabalhar com um tamanho específico de inteiro, sempre use Int para valores inteiros em seu código. Isso ajuda a consistência e a interoperabilidade do código. Mesmo em plataformas de 32 bits, Int pode armazenar qualquer valor entre -2.147.483.648 e 2.147.483.647 e é grande o suficiente para muitos intervalos de números inteiros.

 ### UInt
 O Swift também fornece um tipo inteiro sem sinal, UInt, que tem o mesmo tamanho que o tamanho da palavra nativa da plataforma atual:

* Em uma plataforma de 32 bits, UInt é do mesmo tamanho que UInt32.
* Em uma plataforma de 64 bits, UInt é do mesmo tamanho que UInt64.
 

 
> Use UInt somente quando precisar especificamente de um tipo inteiro não assinado com o mesmo tamanho que o tamanho da palavra nativa da plataforma. Se este não for o caso, Int é preferível, mesmo quando os valores a serem armazenados são conhecidos como não negativos. Um uso consistente de Int para valores inteiros ajuda na interoperabilidade do código, evita a necessidade de converter entre diferentes tipos de números e corresponde à inferência de tipo inteiro, conforme descrito em Segurança de tipo e Inferência de tipo.
 */

//: [Próxima (Pontos Flutuantes)](Pontos%20Flutuantes)
