import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType:String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}


/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
 var result = numberOne
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 return result
 */

func calculateResult(firstNumber numberOne:Int, secondNumber numberTwo:Int, withCalculationType  calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        result /= numberTwo
    }
    
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}


/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */

let firstNumber = 100
let secondNumber = 48

calculateResult (firstNumber: firstNumber, secondNumber: secondNumber, withCalculationType: .addition)
calculateResult (firstNumber: firstNumber, secondNumber: secondNumber, withCalculationType: .subtraction)
calculateResult (firstNumber: firstNumber, secondNumber: secondNumber, withCalculationType: .multiplication)
calculateResult (firstNumber: firstNumber, secondNumber: secondNumber, withCalculationType: .division)


/*
 Exercise 2
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsPower: Int
    func getSpecs(){
        print("The specs of \(name) are: production year \(productionYear), horse power \(horsPower)")
    }
}

/*Exercise 2.1
 Make example of struct Car with the name audiQ7
 Make a copy of audiQ7 and name it audiTT.
 Provide the correct name for audiTT
 Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = Car(name: "audiQ7", productionYear: 2017, horsPower: 4)

var audiTT = audiQ7

audiTT.name = "audiTT"

audiQ7.getSpecs()
audiTT.getSpecs()

