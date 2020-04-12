//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation


func returnFifteen() -> Int {
    var y = 10;

    func add() {
        y += 5;
    }
    add()
    return y;
}

returnFifteen(); // functions can be nested.