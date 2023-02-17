//
//  main.swift
//  10_conditional_operator
//
//  Created by mr.jb on 28/12/22.
//

import Foundation
print("Enter num1",num1)
var num1 = Int(readLine()!)!

print("Enter num2",num2)
var num2 = Int(readLine()!)!

print("Enter num3",num3)
var num3 = Int(readLine()!)!

print("Enter num4",num4)
var num4 = Int(readLine()!)!




if num1>num2, num1>num3, num1>num4
{
    print("num1 ia max",num1)
}
else if num2>num3,num2>num4,num2>num1
{
    print("num2 is max",num2)
}
else if num3>num4,num3>num2,num3>num1
        
{
    print("num3 is max",num3)
}
else if num4>num1,num4>num2,num4>num3
{
    print("num4 is max",num4)
}





