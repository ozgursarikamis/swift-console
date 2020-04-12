//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]();
    for _ in 0...numberOfTimes {
        result.append(item)
    }
    return result
}

let i = makeArray(repeating: "knock", numberOfTimes: 4)
print(i)

let k = makeArray(repeating: 2, numberOfTimes: 3)
print("k", k)
