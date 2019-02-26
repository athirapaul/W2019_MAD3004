//
//  User.swift
//  swiftpro
//


import Foundation
class User {
    var userId :String
    var password : String
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
    func toContinue(){
        print("Do you want to login? ")
        // self.customerName = readLine()!
        
    }
    func verifyLogin(userId:String,password:String) -> Bool {
        if(self.userId==userId && self.password==password){
            return true
        }
        else{
            return false
        }
    }
    
}



