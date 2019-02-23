//
//  Customer.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class Customer : User  {

private var customerName : String
private  var address : String
private var email :String
private   var creditCardInfo : String
private var shippingInfo : String
    var checklogin :String
//var shopObject = ShoppingCart()
    //var ordersObject = Orders(orderId: <#Int#>, dateCreated: <#String#>, dateShipped: <#String#>, customerId: <#String#>, customerName: <#String#>, status: <#String#>, shippingId: <#String#>)
//var shippingObject = shippingInfo()
 //   var orderDetailObject = OrderDetails()
    override init() {
        
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.checklogin  = String()
        super.init()
    }
    /*init(userId:String,password:String,customerName:String,address:String,email:String,creditCardInfo:String,shippingInfo:String){
        
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        super.init(userId: userId,password: password,loginStatus: "C")
    
    }*/
    func register() {
          print("Welcome to the world of shopping ")
        
        print("Enter customer Name ")
        self.customerName = readLine()!
       var customername = self.customerName
        print(customername)
        print("Enter Address  :")
         self.address = readLine()!
        print("Enter Email Id :")
        self.email = readLine()!
        print("Enter Credit Card Info :")
        self.creditCardInfo = readLine()!
        print("Enter Shipping Info :")
        self.shippingInfo = readLine()!
        print("\(customerName)\(address)\(email)\(creditCardInfo)\(shippingInfo)\nRegistration successful")
       //self.address = readLine()!
        
    }
    func needtologin(){
        print("Do you need to login? ")
        self.checklogin = readLine()!
        if ((checklogin == "YES" ) || (checklogin == "yes")){
            print("Enter user id")
            self.customerName = readLine()!
            
            print("Enter password  :")
            self.address = readLine()!
          
        }
        else{
            print("login failed")
        }
        
    }
    func login(userId:String,password:String){
        //var userId : String = ""
        //var password :String = ""
        //if(userId == self.user && password == " "){
    //    if(super.verifyLogin(userID: userId, password: password)){
             if(super.verifyLogin(userId: userId, password: password)){
            print("login successful")
           // if (Product.init(product1: String, product2: self.product2, product3: self.product3, quantity: self.quantity)){
               
        }
        else{
            print("login failed")
           
        }
    
    }
  
    func updateProfile(customerName:String,address:String,email:String,creditCardInfo:String,shippingInfo:String){
        //if ((customerName != self.customerName )||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
        if((customerName != customerName)||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
            self.customerName = customerName
            self.address = address
            self.email = email
            self.creditCardInfo = creditCardInfo
            self.shippingInfo = shippingInfo
            
            print("Customer name :\(customerName)")
            print("Address :\(self.address)")
            print("Email:\(self.email)")
            print("Credit Card Info :\(self.creditCardInfo)")
            print("Shipping Info :\(self.shippingInfo)")
       
            
        }
        
    }
    
}



/*extension Customer :IDisplay{
    func printMyData() -> String {
        <#code#>
    }
    
    
    
    
    
}*/
