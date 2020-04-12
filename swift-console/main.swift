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