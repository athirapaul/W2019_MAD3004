//
//  User.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class User {
    private var userId :String
    private var password : String
    private var loginStatus :String
    

 init(){
        self.userId = String()
        self.password = String()
        self.loginStatus = String()
    }

    init(userId:String,password:String,loginStatus:String){
        self.userId = userId
        self.password = password
        self.loginStatus = loginStatus
    }
    
    func verifyLogin(userID:String,password:String) -> Bool {
        if(self.userId==userId && self.password==password){
            return true
        }
        else{
            return false
        }
    }
  
}

