//
//  SurveyModelTests.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/5/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//
//  Caleb Wood

import XCTest
@testable import LearningRxCRM

class SurveyModelTests: XCTestCase {
    
    var sut: SurveyData!
    
    override func setUp() {
        super.setUp()
        sut = SurveyData()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSurveyM_CanGetQuestions() {
        XCTAssertNotNil(sut.getQuestions())
    }
    
    func testSurveyM_CanGetAgreementOptions() {
        XCTAssertNotNil(sut.getAgreementOptions())
    }
    
}
