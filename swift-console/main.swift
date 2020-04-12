//
//  main.swift
//  swift-console
//
//  Created by Özgür Sarıkamış on 10.04.2020.
//  Copyright © 2020 Özgür Sarıkamış. All rights reserved.
//

import Foundation

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has toner" {
        throw PrinterError.noToner
    }
    return "Job Sent"
}
do {
    // send(job: 1040, toPrinter: "Bi Sheng");
    let resp = try send(job: 1040, toPrinter: "Never has toner");
    print(resp)
} catch {
    print(error)
}

