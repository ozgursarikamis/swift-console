//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

func makeIncrementer() -> ((Int) -> Int) { // output: a function takes Int as parameter, outputs: Int
    func addOne(number: Int) -> Int {
        return 1 + number;
    }
    return addOne;
}

var increment = makeIncrementer();
let i = increment(7)
print(i)

