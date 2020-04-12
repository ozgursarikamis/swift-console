//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

var numbers = [20, 19, 7, 12]

var mappedNumbers = numbers.map({ number in 3 + number })
var sortedNumbers = mappedNumbers.sorted(by: { $1 > $0 })
print(mappedNumbers)
print(sortedNumbers)