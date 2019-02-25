//
//  Administrator.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class Administrator : User{
    private var adminName : String
    private  var email :String
    private var update:Bool
    private var adminuserId :String
    private var adminpassword:String
    init(adminName:String,email:String,update:Bool,adminuserId:String,adminpassword:String){
        self.adminName = adminName
        self.email = email
        self.update = update
        self.adminuserId = adminuserId
        self.adminpassword = adminpassword
        super.init()
        // super.init(verifyLogin(userID:userId, password:password))
    }
    
    //override func verifyLogin(userID: String, password: String) -> Bool {
    //     super.verifyLogin(userID:userID, password: password)
    //    return true
    // }
    
    func updateCatalog(adminuserId:String,adminpassword:String){
        if(adminuserId == self.adminuserId && adminpassword == self.adminpassword){
            print("Admin logged in successfully")
            if update == true
            {
                print("update successful")
                // return "updated"
            }
            else {
                print("update failed")
                // return false
            }
        }
    }}


//
//

