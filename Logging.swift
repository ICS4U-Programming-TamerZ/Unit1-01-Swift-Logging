//
//  HelloWorld.swift
//
//  Created by Tamer Zreg
//  Created on 2024-02-22
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
//  This program calculates how many Logs a truck can hold.

// Imports Module
import Foundation

// Output to Console
print("This program will help calculate how many logs you can fit based on their respective lengths.")

// Declaring Constants and Variables
let MAX_TRUCK_MASS: Float = 1100
let MASS_PER_METER: Float = 20
var metersPerLog: Float = 0
var massPerLog: Float = 0
var numLogFloat: Float = 0
var numLog: Int = 0

// Creates an Error that can be thrown
enum ErrorMessages: Error {
    case invalidUserChoice
}

// Do block to handle user input and perform calculations
do {
    // Asks for length of logs
    print("Please Input the length of logs 0.25m, 0.5m, or 1m: ")
    // Reads input
    let metersPerLogString = readLine()
    // Tries converting to float and checks if it is inside of array [0.25, 0.5,1]
    if let metersPerLog = Float(metersPerLogString ?? ""), [0.25, 0.5,1].contains(metersPerLog) {
        // print(metersPerLog) **debug**
        // Calculates the mass of each log
        massPerLog = metersPerLog * MASS_PER_METER
        // Calculates how much the truck can hold
        numLogFloat = (MAX_TRUCK_MASS / massPerLog)
        // print(numLogFloat) **debug**
        numLog = Int(numLogFloat)
        // print(numLog) **debug**
        // Output to Console
        print("You can hold \(numLog) Logs in the truck!")
    } else {
        // If input does not match array [0.25, 0.5,1]
        print("Invalid input. Please enter 0.25, 0.5, or 1.")
        // Throws Error Message Expects Catch
        throw ErrorMessages.invalidUserChoice;
    }
// Error Message
} catch ErrorMessages.invalidUserChoice{
    print("Error must be 0.25m, 0.5m, 1m")
}
