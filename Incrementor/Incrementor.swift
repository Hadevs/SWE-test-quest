//
//  Incrementor.swift
//  Incrementor
//
//  Created by Hadevs on 14/10/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import Foundation

class Incrementor: Incrementable {
  // MARK: Private variable which will be change
  private var currentNumber: Int = 0
  // MARK: Private variable, for constraint maximum value of incrementing number
  private var maxValue: Int = Int.max
  
  func getNumber() -> Int {
    return currentNumber
  }
  
  func incrementNumber() -> Incrementable {
    if currentNumber + 1 > maxValue {
      currentNumber = 0
    } else {
      currentNumber += 1
    }
    return self
  }
  
  func set(maximumValue: Int) -> Incrementable {
    maxValue = maximumValue
    return self
  }
}
