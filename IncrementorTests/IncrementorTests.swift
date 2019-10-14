//
//  IncrementorTests.swift
//  IncrementorTests
//
//  Created by Hadevs on 14/10/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import XCTest
@testable import Incrementor

class IncrementorTests: XCTestCase {
  // MARK: This methods tests max value overflowing. It have to returns zero
  func testIncrementorMaxValueOverflow() {
    let resultValue = 0
    let incrementor: Incrementable = Incrementor()
    incrementor.set(maximumValue: 2)
    .incrementNumber()
    .incrementNumber()
    .incrementNumber()
    let result = incrementor.getNumber()
    XCTAssertEqual(resultValue, result)
  }
  
  // MARK: This methods tests max value without overflowing. It have to returns right number, i.e. 2
  func testIncrementorDefaultValue() {
    let resultValue = 2
    let incrementor: Incrementable = Incrementor()
    .set(maximumValue: 2)
    .incrementNumber()
    .incrementNumber()
    let result = incrementor.getNumber()
    XCTAssertEqual(resultValue, result)
  }
  
  // MARK: This methods tests max value without setting max value. It have to returns right number, i.e. 2
  func testIncrementorWithoutSettingsMaxValue() {
    let resultValue = 5
    let incrementor: Incrementable = Incrementor()
    .incrementNumber()
    .incrementNumber()
    .incrementNumber()
    .incrementNumber()
    .incrementNumber()
    let result = incrementor.getNumber()
    XCTAssertEqual(resultValue, result)
  }
}
