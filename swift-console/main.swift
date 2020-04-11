//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

let nickName: String? = nil;
let fullName: String = "John Appleseed"
let informalGreeting = "Ji \(String(describing: nickName))"
print(informalGreeting)

let arr = [1, 2, 3, 4];
print(arr);

for i in arr {
    print(i)
}

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("onion")
case "cucumber", "watercress":
    print("potato")
case let x where x.hasSuffix("pepper"):
    print("is it spicy? \(x)")
default:
    print("nothing above")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibionacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 2, 4, 9, 16, 25]
];

for (kind, numbers) in interestingNumbers {
    print(kind, numbers);
}

func greet() -> String {
    return "hello özgür";
}

func greet(name: String, on day: String) -> String {
    return "Hello \(name), today is \(day)";
}

print(greet())
var g = greet(name: "Özgür", on: "Saturday")
print(g);

