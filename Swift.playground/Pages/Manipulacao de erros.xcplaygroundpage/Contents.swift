//: [Anterior (Opcionais)](Opcionais)

/*:
 ### Manipulação de erros
 Você usa o tratamento de erros para responder às condições de erro que seu programa pode encontrar durante a execução.

 Ao contrário dos opcionais, que podem usar a presença ou ausência de um valor para comunicar o sucesso ou a falha de uma função, o tratamento de erros permite determinar a causa subjacente da falha e, se necessário, propagar o erro para outra parte do programa .

 Quando uma função encontra uma condição de erro, ela gera um erro. O chamador dessa função pode detectar o erro e responder adequadamente.
 */

func canThrowAnError() throws {
    // this function may or may not throw an error
}

/*:
 Uma função indica que pode gerar um erro incluindo a palavra-chave throws em sua declaração. Quando você chama uma função que pode gerar um erro, você adiciona a palavra-chave try à expressão.

 O Swift propaga automaticamente os erros fora de seu escopo atual até que sejam tratados por uma cláusula catch.
 */

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

/*:
 Uma instrução do cria um novo escopo de contenção, que permite que os erros sejam propagados para uma ou mais cláusulas catch.

 Aqui está um exemplo de como o tratamento de erros pode ser usado para responder a diferentes condições de erro:
 */

func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}

/*:
 Neste exemplo, a função makeASandwich() lançará um erro se não houver pratos limpos disponíveis ou se algum ingrediente estiver faltando. Como makeASandwich() pode gerar um erro, a chamada da função é encapsulada em uma expressão try. Ao envolver a chamada de função em uma instrução do, quaisquer erros lançados serão propagados para as cláusulas catch fornecidas.

 Se nenhum erro for lançado, a função eatASandwich() é chamada. Se um erro for lançado e ele corresponder ao caso SandwichError.outOfCleanDishes, a função washDishes() será chamada. Se um erro for lançado e corresponder ao caso SandwichError.missingIngredients, a função buyGroceries(_:) será chamada com o valor [String] associado capturado pelo padrão catch.
 
 Lançar, capturar e propagar erros é abordado com mais detalhes em Tratamento de erros.
 

 */

//: [Próxima (Asserções e pré-condições)](Assercoes%20e%20pre-condicoes)
