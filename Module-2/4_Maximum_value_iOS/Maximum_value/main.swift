//
//  main.swift
//  Maximum_value
//
//  Created by mr.jb on 28/12/22.
// find maximum value frome three value

import Foundation

print("Enter the Fist number")
var num1 = Int(readLine()!)!
print(num1)

print("Enter The Second number")
var num2 = Int(readLine()!)!
print(num2)

print("Enter the third number")
var num3 = Int(readLine()!)!
print(num3)

var largestnum = max(num1, num2, num3)
print("largestnum is",largestnum)


