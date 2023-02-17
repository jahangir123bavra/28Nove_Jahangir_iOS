//
//  main.swift
//  D_ass8_iOS
//
//  Created by mr.jb on 27/12/22.
//

import Foundation

var a:Int
var b:Int
var ch:Int

print("Enter A:")
a=Int(readLine()!)!
print("Enter B:")
b=Int(readLine()!)!
print("Enter your choice:")
ch=Int(readLine()!)!


switch(ch)
{
case 1:
    print("Sum:",a+b)
    
    
    case 2:
    print("Sub:",a-b)
    
        
    case 3:
    print("Mul:",a*b)
    
        
    case 4:
    print("Div:",a/b)
    
    
    default:
    print("Error!Plz select proper choice.")
    
}
