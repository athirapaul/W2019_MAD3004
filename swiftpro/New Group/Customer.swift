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
    var ordernum : Int = 1
    override init() {
        
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.checklogin  = String()
        self.ordernum = 1
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
    func needtologin() throws {
        print("Do you need to login? ")
        self.checklogin = readLine()!
        var uid=String()
        var upass=String()
        if ((checklogin == "YES" ) || (checklogin == "yes")){
            print("Enter user id")
             uid = readLine()!
            
            print("Enter password  :")
            upass = readLine()!
           // let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
           
        
            
        }

        else{
            print("login failed")
        }
        try login(userId: uid, password: upass)
    }
    func login(userId:String,password:String) throws {
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
    func checkOut() -> Int {
        //shipdate shipcost shiptype,regionId
       
        var tempordObj=Order(orderId: ordernum, dateCreated: Date().getForamttedDate(), dateShipped: Date().getForamttedDate(), customerName: self.customerName, customerId: Int.random(in: 1...100), status: "Placed", shippingId: Int.random(in: 1...100))
        orderObject.append(tempordObj)
        tempordObj.placeOrder(shopCartObj: h.shopObject)
     
            ordernum = ordernum + 1
        
           return ordernum
        }
   
    }


    
    


 

 



