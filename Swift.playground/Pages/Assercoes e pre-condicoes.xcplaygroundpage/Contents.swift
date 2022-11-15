//: [Anterior (Manipulacao de erros)](Manipulacao%20de%20erros)

/*:
 ### Asserções e pré-condições
 Asserções e pré-condições são verificações que acontecem em tempo de execução. Você os usa para garantir que uma condição essencial seja satisfeita antes de executar qualquer código adicional. Se a condição booleana na asserção ou pré-condição for avaliada como verdadeira, a execução do código continua normalmente. Se a condição for avaliada como falsa, o estado atual do programa é inválido; a execução do código termina e seu aplicativo é encerrado.

 Você usa asserções e pré-condições para expressar as suposições feitas e as expectativas que você tem durante a codificação, para que possa incluí-las como parte de seu código. Asserções ajudam a encontrar erros e suposições incorretas durante o desenvolvimento, e as pré-condições ajudam a detectar problemas na produção.

 Além de verificar suas expectativas em tempo de execução, asserções e pré-condições também se tornam uma forma útil de documentação dentro do código. Ao contrário das condições de erro discutidas em Tratamento de erros acima, asserções e pré-condições não são usadas para erros recuperáveis ​​ou esperados. Como uma asserção ou pré-condição com falha indica um estado de programa inválido, não há como capturar uma asserção com falha.

 Usar asserções e pré-condições não é um substituto para projetar seu código de tal forma que seja improvável que surjam condições inválidas. No entanto, usá-los para impor dados e estados válidos faz com que seu aplicativo seja encerrado de forma mais previsível se ocorrer um estado inválido e ajuda a facilitar a depuração do problema. Interromper a execução assim que um estado inválido for detectado também ajuda a limitar os danos causados ​​por esse estado inválido.

 A diferença entre asserções e pré-condições está em quando elas são verificadas: asserções são verificadas apenas nas compilações de depuração, mas as pré-condições são verificadas nas compilações de depuração e de produção. Nas compilações de produção, a condição dentro de uma asserção não é avaliada. Isso significa que você pode usar quantas asserções quiser durante o processo de desenvolvimento, sem afetar o desempenho na produção.

 ### Depuração com asserções
 Você escreve uma declaração chamando a função assert(_:_:file:line:) da biblioteca padrão do Swift. Você passa a esta função uma expressão que avalia como verdadeiro ou falso e uma mensagem para exibir se o resultado da condição for falso. Por exemplo:
*/

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.


/*:
 Neste exemplo, a execução do código continua se age >= 0 for avaliado como true, ou seja, se o valor de age não for negativo. Se o valor de age for negativo, como no código acima, então age >= 0 será avaliado como false e a asserção falhará, encerrando o aplicativo.

 Você pode omitir a mensagem de asserção - por exemplo, quando ela apenas repetiria a condição como prosa.

 */
assert(age >= 0)

/*:
 Se o código já verifica a condição, você usa a função assertionFailure(_:file:line:) para indicar que uma asserção falhou. Por exemplo:
 
 */

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

/*:
 ### Aplicação de pré-condições
 Use uma pré-condição sempre que uma condição tiver o potencial de ser falsa, mas deve definitivamente ser verdadeira para que seu código continue a execução. Por exemplo, use uma pré-condição para verificar se um subscrito não está fora dos limites ou para verificar se uma função recebeu um valor válido.

 Você escreve uma pré-condição chamando a função precondition(_:_:file:line:). Você passa a esta função uma expressão que avalia como verdadeiro ou falso e uma mensagem para exibir se o resultado da condição for falso. Por exemplo:
 */

// In the implementation of a subscript...
precondition(index > 0, "Index must be greater than zero.")

/*:
 Você também pode chamar a função preconditionFailure(_:file:line:) para indicar que ocorreu uma falha—por exemplo, se o caso padrão de um switch foi usado, mas todos os dados de entrada válidos devem ter sido tratados por um dos switch's. outros casos.

 > Se você compilar no modo não verificado (-Ounchecked), as pré-condições não serão verificadas. O compilador assume que as pré-condições são sempre verdadeiras e otimiza seu código de acordo. No entanto, a função fatalError(_:file:line:) sempre interrompe a execução, independentemente das configurações de otimização.

 Você pode usar a função fatalError(_:file:line:) durante a prototipagem e desenvolvimento inicial para criar stubs para funcionalidades que ainda não foram implementadas, escrevendo fatalError("Unimplemented") como a implementação do stub. Como os erros fatais nunca são otimizados, ao contrário das asserções ou pré-condições, você pode ter certeza de que a execução sempre será interrompida se encontrar uma implementação de stub.
 */

//: [Próxima (Continue os Estudos)](Continue%20os%20Estudos)
