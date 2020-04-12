//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String;

    init(name: String) {
        self.name = name;
    }

    func simpleDesc() -> String {
        return "A sahpe with \(numberOfSides) sides"
    }
}

class Square : NamedShape {
    var sideLength: Double = 0;
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength;
        super.init(name: name);
        numberOfSides = 4;
    }

    func area() -> Double {
        return sideLength * sideLength;
    }

    override func simpleDesc() -> String {
        return "a square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.4, name: "my test square")
test.area()
test.simpleDesc()

print(test.area())
print(test.simpleDesc())

class ETriangle: NamedShape {
    var sideLength: Double = 0;

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength;
        super.init(name: name)
        numberOfSides = 3;
    }

    var perimeter: Double {
        get {
            3.0 * sideLength;
        } set {
            sideLength = newValue / 3.0;
        }
    }
    override func simpleDesc() -> String {
        return "an equilateral triangle with sides of length \(sideLength)";
    }
}

var triangle = ETriangle(sideLength: 3.1, name: "a tringle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

