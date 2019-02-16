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
    init(adminName:String,email:String,update:Bool){
        self.adminName = adminName
        self.email = email
        self.update = update
        super.init()
    
    }
    
 if(super.verifyLogin(userID: userId, password: password)){
    
    func updateCatalog(){
        if update == true
        {
            print("update successful")
        }
        else {
            print("update failed")
        }
    }
    }
}
