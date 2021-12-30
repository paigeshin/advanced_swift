//
//  WebserviceFactory.swift
//  PetAdoption
//
//  Created by Mohammad Azam on 7/3/21.
//

import Foundation

class WebserviceFactory {
    
    func create() -> Webservice {
        
        let environment = ProcessInfo.processInfo.environment["ENV"]
        if environment == "TEST" {
            return FakeAuthService()
        } else {
            return PetAdoptionService() 
        }
        
    }
    
}
