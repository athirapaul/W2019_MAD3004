//
//  Customer.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.

import Foundation
class Customer : User,IDisplay  {
    var customerName : String
    private  var address : String
    private var email :String
    private   var creditCardInfo : String
    private var shippingInfo : String
    var checklogin :String
    var shopObject = [ShoppingCart]()
    var orderObject = [Order]()
   
    override init() {
        
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.checklogin  = String()
        super.init()
    }
    
    func register() {
        print("Welcome to the world of shopping ")
        print("Enter ID")
        self.userId=readLine()!
        print("Enter password")
        //let passw=readLine()!
        //if(passw.is)
        self.password=readLine()!
        print("Enter customer Name ")
        self.customerName = readLine()!
        //var customername = self.customerName
        print(self.customerName)
        print("Enter Address  :")
        self.address = readLine()!
        print("Enter Email Id :")
        self.email = readLine()!
        print("Enter Credit Card Info :")
        self.creditCardInfo = readLine()!
        print("Enter Shipping Info :")
        self.shippingInfo = readLine()!
        
    }
    func needtologin() throws{
        print("Do you need to login? ")
        self.checklogin = readLine()!
        var uid=String()
        var upass=String()
        if ((checklogin == "YES" ) || (checklogin == "yes")){
            print("Enter user id")
             uid = readLine()!
            
            print("Enter password  :")
            upass = readLine()!
            
        }
        else{
            print("login failed")
        }
        try login(userId: uid, password: upass)
    }
    func login(userId:String,password:String) throws{
        //var userId : String = ""
        //var password :String = ""
        //if(userId == self.user && password == " "){
        //    if(super.verifyLogin(userID: userId, password: password)){
        if(super.verifyLogin(userId: userId, password: password)){
            print("login successful")
           
        }
        else{
            print("login failed")
            throw exceptionerror.LoginFail
        }
        
    }
    
    func updateProfile(customerName:String,address:String,email:String,creditCardInfo:String,shippingInfo:String){
        //if ((customerName != self.customerName )||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
        // if((customerName != customerName)||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        
        
        
    }
    func display() -> String {
        let code="\t\(self.customerName) \t\(self.address)\t \(self.email) \t  \(self.creditCardInfo)  \(self.shippingInfo)"
        return code
    }
    func checkOut(){
        //shipdate shipcost shiptype,regionId
       
           // var orderidinit = 0
        let tempordObj=Order(orderId: Int.random(in: 100...150), dateCreated: Date().getForamttedDate(), dateShipped: Date().getForamttedDate(), customerName: self.customerName, customerId: Int.random(in: 1...100), status: "Placed", shippingId: Int.random(in: 1...100))
        orderObject.append(tempordObj)
        tempordObj.placeOrder(shopCartObj: h.shopObject)
       
        let tempordObj1=Order(orderId: Int.random(in: 1...100), dateCreated: Date().getForamttedDate(), dateShipped: Date().getForamttedDate(), customerName: self.customerName, customerId: Int.random(in: 1...100), status: "Placed", shippingId: Int.random(in: 1...100))
        orderObject.append(tempordObj1)
        tempordObj1.placeOrder(shopCartObj: h.shopObject)
    
    }

}
////


 
 
 



