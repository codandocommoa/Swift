//: [Anterior (Pontos Flutuantes)](Pontos%20Flutuantes)

/*:
 ### Literais Numéricos

 Literais inteiros podem ser escritos como:

 * Um número decimal, sem prefixo
 * Um número binário, com um prefixo _0b_
 * Um número octal, com um prefixo _0o_
 * Um número hexadecimal, com um prefixo _0x_

 Todos esses literais inteiros têm um valor decimal de _17_:
 */

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

/*:
 Os literais de ponto flutuante podem ser decimais (sem prefixo) ou hexadecimais (com um prefixo 0x). Eles devem sempre ter um número (ou número hexadecimal) em ambos os lados da vírgula. Os floats decimais também podem ter um expoente opcional, indicado por um e maiúsculo ou minúsculo; floats hexadecimais devem ter um expoente, indicado por um p maiúsculo ou minúsculo.

 Para números decimais com um expoente de exp, o número base é multiplicado por 10exp:”

![literais1](literais1.png)

 Para números hexadecimais com um expoente de exp, o número base é multiplicado por 2exp:

 ![literais2](literais2.png)

 
 Todos esses literais de ponto flutuante têm um valor decimal de 12,1875:


 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*:
 Os literais numéricos podem conter formatação extra para torná-los mais fáceis de ler. Tanto os inteiros quanto os floats podem ser preenchidos com zeros extras e podem conter sublinhados para ajudar na legibilidade. Nenhum tipo de formatação afeta o valor subjacente do literal:

 */

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//: [Próximo (Conversão de tipo Numérico)](Conversao%20tipo%20Numerico)
