//: [Anterior (Conversão de tipo Numérico)](Conversao%20tipo%20Numerico)

/*:
### Tipo Aliases
 
 Os aliases de tipo definem um nome alternativo para um tipo existente. Você define aliases de tipo com a palavra-chave typealias.

 Os aliases de tipo são úteis quando você deseja se referir a um tipo existente por um nome que seja contextualmente mais apropriado, como ao trabalhar com dados de um tamanho específico de uma fonte externa:
 
*/

typealias AudioSample = UInt16

/*:
 Depois de definir um alias de tipo, você pode usar o alias em qualquer lugar em que possa usar o nome original:

 */

var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

/*:
 Aqui, AudioSample é definido como um alias para UInt16. Por ser um alias, a chamada para AudioSample.min na verdade chama UInt16.min, que fornece um valor inicial de 0 para a variável maxAmplitudeFound.

 */



//: [Próxima(Booleanos)](Booleanos)
