//
//  StartSurveyViewControllerTests.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/7/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import XCTest
@testable import LearningRxCRM

class StartSurveyViewControllerTests: XCTestCase {
    var sut: SurveyStartViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "SurveyStartVC") as! SurveyStartViewController
        _ = sut.view
        
        
        UIApplication.shared.keyWindow?.rootViewController = sut
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testSurveyStartVC_HasStartSurveyButton() {
        XCTAssertNotNil(sut.startSurvey)
    }
    
    func testSurveyStartVC_HasSelectablePerson() {
        XCTAssertNotNil(sut.surveyTaker)
    }
    
    func testSurveyStartVC_HasEnterablePersonName() {
        XCTAssertNotNil(sut.surveyUsername)
    }
    
    func testSurveyStartVC_CanGetSurveyTaker() {
        
        sut.surveyTaker.selectedSegmentIndex = 0
        
        XCTAssert(sut.getSurveyTaker() == "Self")
        
        sut.surveyTaker.selectedSegmentIndex = 1
        
        XCTAssert(sut.getSurveyTaker() == "Parent/Guardian")
        
        sut.surveyTaker.selectedSegmentIndex = 2
        
        XCTAssert(sut.getSurveyTaker() == "Other")
        
    }
    
    func testSurveyStartVC_AlertsIfUsernameNotEntered() {
        sut.startSurvey.sendActions(for: .touchUpInside)
        
        XCTAssert(sut.presentedViewController is UIAlertController)
        XCTAssertEqual(sut.presentedViewController?.title, "Invalid Username")
    }
    
}
