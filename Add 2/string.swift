//
//  string.swift
//  Add 2
//
//  Created by Sourabh kehar on 2020-04-09.
//  Copyright © 2020 Sourabh kehar. All rights reserved.
//

import Foundation

extension String{
    
    static func randomNumber(length: Int) -> String{
        
        var result = ""
        
        for _ in 0..<length{
            let digit = Int.random(in: 0...9)
            result += "\(digit)"
        }
        return result
    }
}
