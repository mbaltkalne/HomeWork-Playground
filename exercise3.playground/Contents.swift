import UIKit

/*Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let period = 5
let startingBalance:Double = 500000
let interestRate = 0.2

var profit:Double = 0

/* Simple interest
 
 let endingBalance = Double(period) * startingBalance * interestRate + startingBalance
 
 */

//Compound interest

var runningBalance = startingBalance

for _ in 1...period{
    runningBalance = runningBalance * (1 + interestRate)
}

profit = runningBalance - startingBalance

print ("Amount of income after \(period) years will be \(runningBalance) Eur. My total deposit will be \(profit) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var randomNumbers = [1, 233, 789, 564, 98, 7, 22, 19898976]

var evenNumbers:[Int] = []

for i in randomNumbers{
    if i % 2 == 0{
        evenNumbers.append(i)
    }
}

print("My even numbers are: \(evenNumbers)")


//Method 2 - using filter function

var randomNumbers1 = [1, 233, 789, 564, 98, 7, 22, 19898976]

let evenNumbers1 = randomNumbers1.filter { $0 % 2 == 0 }

print ("My even numbers are: \(evenNumbers1)")


/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

/*
 
 My first version of the code - it does contain for loop as requested in the exercise but the counter does not seem to stop after it encounters number 5 and just keeps going
 
 var generatedValue = [Int]()
 
 var counter = 0
 
 while true {
 let randomValue = Int.random(in: 1 ... 1000)
 generatedValue.append(randomValue)
 for i in generatedValue{
 if i != 5{
 counter += 1
 }
 else if i == 5 {
 print("Number 5 will be after \(counter) shuffles")
 break
 }
 }
 }
 
 */

var counter = 0
while true {
    let randomValue = Int.random(in:1...10)
    randomValue != 5
    counter += 1
    if randomValue == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let postHeight = 10
var reachedHeight = 0
let dayDistance = 2
let nightDistance = -1

var counterBug = 0

while (true) {
    reachedHeight < postHeight
    reachedHeight = reachedHeight + dayDistance
    counterBug += 1
    if postHeight == reachedHeight {
        break
    }
    else {
        reachedHeight = reachedHeight + nightDistance}
}
print("Bug will spend \(counterBug) days to reach the top of the post")


//Alternative method

var distance = 0
var numberOfDays = 0
var isDay = true
while distance != 10 {
    if isDay {
        distance += 2
        numberOfDays += 1
        isDay = false
    }else{
        distance -= 1
        isDay = true
    }
}
print("bug will spend \(numberOfDays) to reach top of the post")

