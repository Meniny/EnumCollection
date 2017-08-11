//
//  EnumCollection.swift
//  EnumCollection
//
//  Created by Meniny on 15/5/14.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

import Foundation

public protocol EnumCollection: Hashable {}

public extension EnumCollection {
    public static var allCases: AnySequence<Self> {
        typealias S = Self
        return AnySequence { () -> AnyIterator<S> in
            var raw = 0
            return AnyIterator {
                let current: Self = withUnsafePointer(to: &raw) {
                    $0.withMemoryRebound(to: S.self, capacity: 1) {
                        $0.pointee
                    }
                }
                guard current.hashValue == raw else {
                    return nil
                }
                raw += 1
                return current
            }
        }
    }
    
    public static var allValues: [Self] {
        return Self.allCases.map({ (e) -> Self in
            return e
        })
    }
}
