//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

class Shape {
    var numberOfSides = 0;

    func simpleDesc() -> String {
        return "a shape with \(numberOfSides) sides";
    }
}

var shape = Shape();
shape.numberOfSides = 7;
var desc = shape.simpleDesc();
print(desc);

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

var namedShape = NamedShape(name: "circle");
namedShape.numberOfSides = 0;
var desc2 = namedShape.simpleDesc();
print(desc2)