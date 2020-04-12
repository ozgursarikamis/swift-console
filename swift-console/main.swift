//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

/*
 Use defer to write a block of code that is executed after all other code in the function, just before the function returns.
 */

var fridgeIsOpen = false
var fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        print(fridgeIsOpen)
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}

print(fridgeContains("banana"))
print(fridgeIsOpen)
