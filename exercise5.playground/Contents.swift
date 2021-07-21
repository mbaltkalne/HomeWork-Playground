import UIKit

/*
 Exercise 1
 */

class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
}

let someOrange = Orange()

someOrange.color = "orange"
someOrange.taste = "sweet"
someOrange.weight = 0.66

print("My \(someOrange.weight) kg of oranges has \(someOrange.color) color and \(someOrange.taste) taste")


/*
 Exercise 2
 */

class Figure {
    var height: Float = 0.0
    var width: Float = 0.0
    var radius: Float = 0.0
    var square: Float = 0.0
    var perimeter: Float = 0.0
    
    init (height: Float, width: Float){
        self.height = height
        self.width = width
    }
    
    func squareOfFigure() -> Float {
        return square
    }
    func perimeterOfFigure() -> Float {
        return perimeter}
}

class Rectangle:Figure {
    override func squareOfFigure() -> Float {
        square = height * width
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = 2 * height + width
        return perimeter
    }
    
    func description() {
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
        return
    }
}

let myRectangle = Rectangle(height: 1.56, width: 3.56)

myRectangle.description()

