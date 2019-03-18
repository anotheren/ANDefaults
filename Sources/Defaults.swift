//
//  Defaults.swift
//  ANDefaults
//
//  Created by 刘栋 on 2018/7/21.
//  Copyright © 2018年 anotheren.com. All rights reserved.
//

import Foundation
import SwiftyBeaver

final public class Defaults {
    
    private let log = SwiftyBeaver.self
    private let userDefaults: UserDefaults
    
    public init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }
}

// MARK: Clear

extension Defaults {
    
    public func clear(_ key: Key<String>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear(_ key: Key<Bool>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear(_ key: Key<Int>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear(_ key: Key<Float>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear(_ key: Key<Double>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear(_ key: Key<Date>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
    
    public func clear<ValueType>(_ key: Key<ValueType>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("CLEAR \(key)", file, function, line: line)
        userDefaults.removeObject(forKey: key.name)
    }
}

// MARK: Get

extension Defaults {
    
    public func get(for key: Key<String>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> String? {
        let _value = userDefaults.object(forKey: key.name) as? String
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<String>, default value: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> String {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get(for key: Key<Bool>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Bool? {
        let _value = userDefaults.object(forKey: key.name) as? Bool
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<Bool>, default value: Bool, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Bool {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get(for key: Key<Int>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Int? {
        let _value = userDefaults.object(forKey: key.name) as? Int
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<Int>, default value: Int, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Int {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get(for key: Key<Float>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Float? {
        let _value = userDefaults.object(forKey: key.name) as? Float
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<Float>, default value: Float, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Float {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get(for key: Key<Double>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Double? {
        let _value = userDefaults.object(forKey: key.name) as? Double
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<Double>, default value: Double, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Double {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get(for key: Key<Date>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Date? {
        let _value = userDefaults.object(forKey: key.name) as? Date
        log.debug("GET \(key), VALUE=\(_value.unwrappedDescription)", file, function, line: line)
        return _value
    }
    
    public func get(for key: Key<Date>, default value: Date, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> Date {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
    
    public func get<ValueType>(for key: Key<ValueType>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> ValueType? {
        guard let _data = userDefaults.data(forKey: key.name) else {
            log.debug("GET \(key), VALUE=nil", file, function, line: line)
            return nil
        }
        do {
            let decoder = JSONDecoder()
            let decoded = try decoder.decode(ValueType.self, from: _data)
            log.debug("GET \(key), VALUE=\(decoded)", file, function, line: line)
            return decoded
        } catch {
            log.error("GET \(key), ERROR=\(error.localizedDescription))", file, function, line: line)
            return nil
        }
    }
    
    public func get<ValueType>(for key: Key<ValueType>, default value: ValueType, _ file: String = #file, _ function: String = #function, _ line: Int = #line) -> ValueType {
        if let _value = get(for: key, file, function, line) {
            return _value
        } else {
            log.debug("GET \(key), USE DEFAULT VALUE=\(value)", file, function, line: line)
            return value
        }
    }
}

// MARK: Set

extension Defaults {
    
    public func set(_ value: String, for key: Key<String>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: String?, for key: Key<String>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set(_ value: Bool, for key: Key<Bool>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: Bool?, for key: Key<Bool>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set(_ value: Int, for key: Key<Int>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: Int?, for key: Key<Int>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set(_ value: Float, for key: Key<Float>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: Float?, for key: Key<Float>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set(_ value: Double, for key: Key<Double>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: Double?, for key: Key<Double>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set(_ value: Date, for key: Key<Date>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
        userDefaults.set(value, forKey: key.name)
    }
    
    public func set(_ value: Date?, for key: Key<Date>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
    
    public func set<ValueType>(_ value: ValueType, for key: Key<ValueType>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        do {
            let encoder = JSONEncoder()
            let encoded = try encoder.encode(value)
            log.debug("SET \(key), VALUE=\(value)", file, function, line: line)
            userDefaults.set(encoded, forKey: key.name)
        } catch {
            log.error("SET \(key), ERROR=\(error.localizedDescription)", file, function, line: line)
        }
    }
    
    public func set<ValueType>(_ value: ValueType?, for key: Key<ValueType>, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        if let value = value {
            set(value, for: key, file, function, line)
        } else {
            clear(key, file, function, line)
        }
    }
}
