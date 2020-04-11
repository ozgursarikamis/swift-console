//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibionacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 2, 4, 9, 16, 25]
];

for (kind, numbers) in interestingNumbers {
    print(kind, numbers);
}


let stats = calculateStats(scores: [5, 3, 100, 3, 9])
print(stats)
//

let numbers = [20, 19, 7, 12]
let result = hasAnyMatches(list: numbers, condition: lessThanTen)
print(result)