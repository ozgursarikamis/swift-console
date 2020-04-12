//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
