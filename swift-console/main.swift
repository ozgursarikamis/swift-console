//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6.00", "8:09 pm")
let failure = ServerResponse.failure("out of cheese")

switch success {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
    case let.failure(message):
        print("Failure... \(message)")
}
