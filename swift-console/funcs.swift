//
// Created by Özgür Sarıkamış on 10.04.2020.
// Copyright (c) 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

func greet() -> String {
    return "hello özgür";
}

func greet(name: String, on day: String) -> String {
    return "Hello \(name), today is \(day)";
}

// return multiple values:
func calculateStats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

// Function takes a function as a parameter:

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) { return true }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10;
}

