//
//  Incrementable.swift
//  Incrementor
//
//  Created by Hadevs on 14/10/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import Foundation

// MARK: Interface for implementation of number incrementing
protocol Incrementable {
  // MARK: Returns current number, should be zero by default
  func getNumber() -> Int
  
  // MARK: Increments current number, and returns itself for class-immutability
  @discardableResult
  func incrementNumber() -> Incrementable
  
  // MARK: Set maximum value for incrementing. If curret number is greater, than setted value, then current number becomes zero again. This method also returns self object.
  @discardableResult
  func set(maximumValue: Int) -> Incrementable
}
