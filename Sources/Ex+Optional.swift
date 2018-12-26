//
//  Ex+Optional.swift
//  ANDefaults
//
//  Created by 刘栋 on 2018/7/21.
//  Copyright © 2018年 anotheren.com. All rights reserved.
//

import Foundation

extension Optional {
    
    var unwrappedDescription: String {
        switch self {
        case .none:
            return "nil"
        case .some(let unwrapped):
            return String(describing: unwrapped)
        }
    }
}
