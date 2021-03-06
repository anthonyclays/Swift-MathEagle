//
//  Powerable.swift
//  MathEagle
//
//  Created by Rugen Heidbuchel on 18/06/15.
//  Copyright © 2015 Jorestha Solutions. All rights reserved.
//



// MARK: Powerable Protocols

infix operator ** {associativity left precedence 160}

public protocol NaturalPowerable {
    
    typealias NaturalPowerType
    func ** (Self, UInt) -> NaturalPowerType
    init(NaturalPowerType)
}

public func ** (left: Int, right: UInt) -> Int {
    return Int(pow(Double(left), Double(right)))
}
public func ** (left: Int8, right: UInt) -> Int {
    return Int(pow(Double(left), Double(right)))
}
public func ** (left: Int16, right: UInt) -> Int {
    return Int(pow(Double(left), Double(right)))
}
public func ** (left: Int32, right: UInt) -> Int {
    return Int(pow(Double(left), Double(right)))
}
public func ** (left: Int64, right: UInt) -> Int {
    return Int(pow(Double(left), Double(right)))
}
public func ** (left: UInt, right: UInt) -> UInt {
    return UInt(pow(Double(left), Double(right)))
}
public func ** (left: UInt8, right: UInt) -> UInt {
    return UInt(pow(Double(left), Double(right)))
}
public func ** (left: UInt16, right: UInt) -> UInt {
    return UInt(pow(Double(left), Double(right)))
}
public func ** (left: UInt32, right: UInt) -> UInt {
    return UInt(pow(Double(left), Double(right)))
}
public func ** (left: UInt64, right: UInt) -> UInt {
    return UInt(pow(Double(left), Double(right)))
}
public func ** (left: Float, right: UInt) -> Float {
    return pow(left, Float(right))
}
public func ** (left: Double, right: UInt) -> Double {
    return pow(left, Double(right))
}



public protocol IntegerPowerable {
    
    typealias IntegerPowerType
    func ** (Self, Int) -> IntegerPowerType
    init(IntegerPowerType)
}

public func ** (left: Int, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: Int8, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: Int16, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: Int32, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: Int64, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: UInt, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: UInt8, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: UInt16, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: UInt32, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: UInt64, right: Int) -> Double {
    return pow(Double(left), Double(right))
}
public func ** (left: Float, right: Int) -> Float {
    return pow(left, Float(right))
}
public func ** (left: Double, right: Int) -> Double {
    return pow(left, Double(right))
}



public protocol RealPowerable {
    
    typealias RealPowerType
    func ** (Self, Double) -> RealPowerType
    init(RealPowerType)
}

public func ** (left: Int, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Int8, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Int16, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Int32, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Int64, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: UInt, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: UInt8, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: UInt16, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: UInt32, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: UInt64, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Float, right: Double) -> Double {
    return pow(Double(left), right)
}
public func ** (left: Double, right: Double) -> Double {
    return pow(left, right)
}



public func root <X: RealPowerable> (x: X, order: Int) -> X.RealPowerType {
    //FIXME: This function does not work properly for negative x'. root(-8, 3) returns NaN for example.
    return x ** (1.0 / Double(order))
}