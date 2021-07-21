import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var firstNumber:Float = 3.14
var secondNumber:Float = 42.0

var thirdNumber:Double = Double(firstNumber + secondNumber)
print(thirdNumber)


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne = 10
var numberTwo = 7

//Casting Int as Double to be able to perform division

let result:Double = Double(numberOne) / Double(numberTwo)

//Calculating remainder

let remainder = numberOne % numberTwo

print ("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var numberMacbooks = 9

var priceMacbookNormal = 1000
var priceMacbookDiscount1 = 900
var priceMacbookDiscount2 = 850


if numberMacbooks >= 10{
    print("new: \(numberMacbooks) MacBook Pro with the price of \(priceMacbookDiscount2) EUR, will cost you \(numberMacbooks * priceMacbookDiscount2) Eur")
}else if numberMacbooks >= 5 {
    print("new: \(numberMacbooks) MacBook Pro with the price of \(priceMacbookDiscount1) EUR, will cost you \(numberMacbooks * priceMacbookDiscount1) Eur")
}else {
    ("new: \(numberMacbooks) MacBook Pro with the price of \(priceMacbookNormal) EUR, will cost you \(numberMacbooks * priceMacbookNormal) Eur")
}

//Alternative method

let qty = 0
var price = 1000
var totalSum = qty * price
if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10{
    price = 850
}
if qty != 0 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}else{
    print("please enter a valid MacBook qty")
}


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */


var userInputAge:String = "33a"

var convertToInt = Int(userInputAge)

if convertToInt == nil {
    print("Variable convertToInt does not contain numbers")
}else{
    print("Conversion was successful)")
}

// Alternative method

let userInputAge1 = "33a"
//let convertStringToInt = Int(userInputAge)!
if Int(userInputAge1) != nil {
    print("String is convertible to Int with the value \(Int(userInputAge1) ?? 0)")
}else{
    print("Unable to convert")
}


/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

var years = 0
var months = 0
var days = 0

let birthDate = formatter.date(from: "26.07.1984")
let currentDate = Date()

let calendar = Calendar.current
years = calendar.component(.year, from: currentDate) - calendar.component(.year, from: birthDate!)

let birthDay = calendar.component(.day, from: birthDate!)
let birthMonth = calendar.component(.month, from: birthDate!)
let birthYear = calendar.component(.year, from: birthDate!)

let currentMonth = calendar.component(.month, from: currentDate)

//get difference between current month and birthMonth

months = currentMonth - birthMonth
//if month difference is in negative then reduce years by one and calculate the number of months.
if months < 0
{
    years = years - 1
    months = 12 - birthMonth + currentMonth
    if calendar.component(.day, from: Date()) < calendar.component(.day, from: birthDate!){
        months = months - 1
    }
} else if months == 0 && calendar.component(.day, from: Date()) < calendar.component(.day, from: birthDate!)
{
    years = years - 1
    months = 11
}

//Not entirely sure what this extension does but without it the result is not proper

extension Date{
    var daysInMonth:Int{
        let calendar = Calendar.current
        
        let dateComponents = DateComponents(year: calendar.component(.year, from: self), month: calendar.component(.month, from: self))
        let date = calendar.date(from: dateComponents)!
        
        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count
        
        return numDays
    }
}

//Calculate the days

if calendar.component(.day, from: Date()) > calendar.component(.day, from: birthDate!){
    days = calendar.component(.day, from: Date()) - calendar.component(.day, from: birthDate!)
}
else if calendar.component(.day, from: Date()) < calendar.component(.day, from: birthDate!)
{
    let today = calendar.component(.day, from: Date())
    let date = calendar.date(byAdding: .month, value: -1, to: Date())
    
    days = date!.daysInMonth - calendar.component(.day, from: birthDate!) + today
} else
{
    days = 0
    if months == 12
    {
        years = years + 1
        months = 0
    }
}

print ("Total years: \(years) , total months: \(months), total days: \(days)")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

if let month = calendar.dateComponents([.month], from: birthDate!).month {
    var quarter = 0
    switch month {
    case 1...3:
        quarter = 1
    case 4...6:
        quarter = 2
    case 7...9:
        quarter = 3
    case 10...12:
        quarter = 4
    default:
        quarter = 0
    }
    if quarter != 0 {
        print("I was born in the \(quarter) quarter")
    }else{
    }
}
