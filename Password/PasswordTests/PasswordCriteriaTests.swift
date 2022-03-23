//
//  PasswordCriteriaTests.swift
//  PasswordTests
//
//  Created by Ramon Ferreira do Nascimento on 23/03/22.
//

import XCTest

@testable import Password

class PasswordLengthCriteriaTests: XCTestCase {
    // Boundary conditions 8-32
    func testShort() throws { // 7
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet(String.random(length: 7)))
    }
    
    func testLong() throws { // 33
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet(String.random(length: 33)))
    }
    
    func testValidShort() throws { // 8
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet(String.random(length: 8)))
    }
    
    func testValidLong() throws { // 32
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet(String.random(length: 32)))
    }
}

class PasswordNoSpaceCriteriaTests: XCTestCase {
    func testSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }
    
    func testSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("a bc"))
    }
}

class PasswordLenghtAndNoSpaceCriteriaTests: XCTestCase {
    func testLengthAndNoSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("12345678"))
    }
    
    func testLengthAndNoSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lengthAndNoSpaceMet("1234567 8"))
    }
}

class PasswordUpperCaseCriteriaTests: XCTestCase {
    func testUpperCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("A"))
    }
    
    func testUpperCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("a"))
    }
}

class PasswordLowerCaseCriteriaTests: XCTestCase {
    func testLowerCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("a"))
    }
    
    func testLowerCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("A"))
    }
}

class PasswordDigitCriteriaTests: XCTestCase {
    func testDigitMet() throws {
        XCTAssertTrue(PasswordCriteria.digitMet("1"))
    }
    
    func testDigitNotMet() throws {
        XCTAssertFalse(PasswordCriteria.digitMet("a"))
    }
}

class PasswordSpecialCharCriteriaTests: XCTestCase {
    func testSpecicalCharMet() throws {
        XCTAssertTrue(PasswordCriteria.specialCharacterMet("@"))
    }
    
    func testSpecicalCharNotMet() throws {
        XCTAssertFalse(PasswordCriteria.specialCharacterMet("a"))
    }
}
