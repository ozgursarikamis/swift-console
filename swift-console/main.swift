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

var a = SimpleClass();
print(a.simpleDesc);
a.adjust();
