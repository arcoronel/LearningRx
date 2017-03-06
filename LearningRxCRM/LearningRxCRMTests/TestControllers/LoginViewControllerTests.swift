//
//  LoginViewControllerTests.swift
//  LearningRxCRM
//
//  Created by Austin Borth on 3/6/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import XCTest

@testable import LearningRxCRM

class LoginViewControllerTests: XCTestCase {
    
    var sut: LoginViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        _ = sut.view

        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginVC_HasButtons(){
        XCTAssertNotNil(sut.loginButton)
    }
    
    func testLoginVC_HasTextFields(){
        XCTAssertNotNil(sut.username)
        XCTAssertNotNil(sut.password)
    }
    
    func testLoginVC_CanGetUsernameAndPassword(){
        sut.username.text = "admin"
        sut.password.text = "admin"
        
        sut.loginButton.sendActions(for: .touchUpInside)
        
        XCTAssert(sut.loggedIn == true)

    }
    
    func testLoginVC_CanBeWrong(){
        sut.username.text = "Admun"
        sut.password.text = "Sdmon"
        
        sut.loginButton.sendActions(for: .touchUpInside)
        
        XCTAssert(sut.loggedIn == false)

    }
    
}
