//
//  Key.swift
//  ANDefaults
//
//  Created by 刘栋 on 2018/7/21.
//  Copyright © 2018年 anotheren.com. All rights reserved.
//

import Foundation

public struct Key<ValueType: Codable>: Hashable {
    
    public let name: String
    
    public init(_ name: String) {
        self.name = name
    }
}

extension Key: CustomStringConvertible {
    
    public var description: String {
        return "Key<\(String(describing: ValueType.self))>=\(name)"
    }
}
