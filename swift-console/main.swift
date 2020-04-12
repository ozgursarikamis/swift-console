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

class TriangleAndSquare {
    /*
    If you don’t need to compute the property but still need to provide code that is run before and after setting a new value,
    use willSet and didSet. The code you provide is run any time the value changes outside of an initializer.
    For example, the class below ensures that the side length of its triangle is always the same as the side length of its square.
    */
    var triangle: ETriangle {
        willSet { // before setter is triggered
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet { // before set is triggered
            triangle.sideLength = newValue.sideLength;
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = ETriangle(sideLength: size, name: name)
    }
}

var tAnds = TriangleAndSquare(size: 10, name: "another test shape")
print(tAnds.square.sideLength)
print(tAnds.square.name)

