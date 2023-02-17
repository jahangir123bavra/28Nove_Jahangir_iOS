//
//  main.swift
//  15_specific dictionaries_iOS
//
//  Created by mr.jb on 29/12/22.
//

import Foundation

var state:[String:String] = ["Gujrat":"Gandhinagr",
                             "Panjab":"Chandigadh",
                             "Bihar":"Patana",
                             "Nagaland":"Kohima"]

print(state)

for (key,value) in state
{
    print("key:\(key) ----- value: \(value)")
    
}
