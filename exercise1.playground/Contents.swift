import UIKit

/*
 Exercise 1
 Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift".
 Print the phrase "I'm learing swift !!!" using these string variables.
 */

let firstString = "I'm learning"
let secondString = "swift"

print ("\(firstString)"+" "+"\(secondString)"+" !!!")

/*
 Exercise 2.1
 Create a constant named myAge and assign it the value of your age.
 */

let myAge = 36

/*
 Exercise 2.2
 Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years
 (use the constant myAge and the addition(+) operator).
 */

let yearsToAdd = 10
var myAgeInTenYears:Int = myAge + yearsToAdd

/*
 Exercise 2.3
 Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
 */

let daysInYear = 365.35

/*
 Exercise 2.4
 Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years
 (use myAgeInTenYears(variable) and daysInYear(constant)).
 */

//Method 1

var daysPassed:Float = Float(myAgeInTenYears) * Float(daysInYear)

//Method 2

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
var dateComponent = DateComponents()
dateComponent.year = yearsToAdd
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "01.05.1986")
let futureDate = calendar.date(byAdding: dateComponent, to: currentDate)
let daysPassedMethodTwo = calendar.dateComponents([.day], from: birthDate!, to: futureDate!).day

//Method 3

let birthDay = calendar.component(.day, from: birthDate!)
let birthMonth = calendar.component(.month, from: birthDate!)
let birthYear = calendar.component(.year, from: birthDate!)
let currentDay = calendar.component(.day, from: currentDate)
let currentMonth = calendar.component(.month, from: currentDate)
let currentYear = calendar.component(.year, from: currentDate)
let numberOfMonthInOneYear: Double = 12
let numberOfDaysInOneMonth = (daysInYear / numberOfMonthInOneYear)
let numberOfFullMonthsInFirstYear = numberOfMonthInOneYear - Double(birthMonth)
let numberOfDaysInFirstMonth = numberOfDaysInOneMonth - Double(birthDay)
let numberOfDaysInFirstYear = numberOfDaysInOneMonth * numberOfFullMonthsInFirstYear + numberOfDaysInFirstMonth
var numberOfFullYears = currentYear - birthYear
if birthMonth >= currentMonth {
    if birthDay < currentDay {
        numberOfFullYears = numberOfFullYears - 1
    }
}
let numberOfDaysInFullYear = daysInYear * Double(numberOfFullYears)
let numberOfFullMonth = currentMonth - 1
let numberOfDaysInCurrentYear = numberOfDaysInOneMonth * Double(numberOfFullMonth) + Double(currentDay)
let numberOfDaysInTenYear = daysInYear * Double(yearsToAdd)
let daysPassedMethodThree = numberOfDaysInFirstYear + numberOfDaysInFullYear + numberOfDaysInCurrentYear + numberOfDaysInTenYear

/*
 Exercise 2.5
 Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old.
 From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
 */

/*print ("My age is \(myAge) years. In 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birthday have passed approximately \(daysPassed) days.")
 */

print("\nAll three methods return different results: \nFirst Method: \(Int(daysPassed)) full days \nSecond Method: \(String(describing: daysPassedMethodTwo)) \nThird Method: \(daysPassedMethodThree)")

/*
 Exercise 3.
 Calculate triangle's area and perimeter.
 Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function,
 replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
 */

var leg1:Double = 8.0
var leg2:Double = 6.0

//Calculate hypotenuse

var hypotenuse = sqrt(pow(leg1,2) + pow(leg2,2))

//Calculate the area

var areaTriangle = (leg1 * leg2)/2

//Calculate perimeter

var perimeterTriangle = leg1 + leg2 + sqrt(pow(leg1,2) + pow(leg2,2))

//Print the result

print("The area is \(areaTriangle) and the perimeter is \(perimeterTriangle).")
