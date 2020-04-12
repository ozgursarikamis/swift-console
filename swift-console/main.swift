//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

protocol ExampleProtocol {
    var simpleDesc: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDesc: String = "a sample class"
    var anotherProperty: Int = 65;
    
    func adjust() {
        simpleDesc += " Now 100% adjusted";
    }
}

class SimpleClass2: ExampleProtocol {
    var simpleDesc: String = "a simple simple class"
    var anotherProp: Int64 = 65
    func adjust() {
        simpleDesc += " , from adjust method";
    }
}

var a = SimpleClass();
var b = SimpleClass2();

print(a.simpleDesc);
a.adjust();


extension Int: ExampleProtocol {
    var simpleDesc: String {
        return "the number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDesc)

print("------------------")
let protocolValue: ExampleProtocol = a;
let protocolValue2: ExampleProtocol = b;

print(protocolValue.simpleDesc)
