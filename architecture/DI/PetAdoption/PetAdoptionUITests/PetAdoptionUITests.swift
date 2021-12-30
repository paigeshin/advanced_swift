//
//  PetAdoptionUITests.swift
//  PetAdoptionUITests
//
//  Created by Mohammad Azam on 7/3/21.
//

import XCTest

class When_user_fills_correct_credentials_and_press_login_button: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        self.app = XCUIApplication()
        self.app.launchEnvironment = ["ENV": "TEST"]
        self.app.launch()
    }
    
    func test_should_display_lock_successfully() {
        
        let usernameTextField = self.app.textFields["usernameTextField"]
        let passwordTextField = self.app.textFields["passwordTextField"]
        let loginButton = self.app.buttons["loginButton"]
        
        usernameTextField.tap()
        usernameTextField.typeText("johndoe")
        passwordTextField.tap()
        passwordTextField.typeText("password")
        loginButton.tap()
        
        let imageLock = self.app.images["imageLock"]
        XCTAssertTrue(imageLock.exists)
    }
    
}
