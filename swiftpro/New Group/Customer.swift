//
//  Customer.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class Customer : User {

private var customerName : String
private  var address : String
private var email :String
private   var creditCardInfo : String
private var shippingInfo : String
var shopObject = ShoppingCart()
//var ordersObject = Orders()
//var shippingObject = shippingInfo()
 //   var orderDetailObject = OrderDetails()
    init(userId:String,password:String,customerName:String,address:String,email:String,creditCardInfo:String,shippingInfo:String){
        
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        super.init(userId: userId,password: password,loginStatus: "C")
    
    }
    func register() {
        print("Enter customer Name  :\(customerName)")
        print("Enter Address  :\(address)")
        print("Enter Email Id :\(email)")
        print("Enter Credit Card Info :\( creditCardInfo)")
        print("Enter Shipping Info :\(shippingInfo)")
        print("Registration successful")
       
    }
    func login(userId:String,password:String){
        //var userId : String = ""
        //var password :String = ""
        //if(userId == self.user && password == " "){
        if(super.verifyLogin(userID: userId, password: password)){
            print("login successful")
        }
        else{
            print("login failed")
           
        }
    
    }
  
    func updateProfile(customerName:String,address:String,email:String,creditCardInfo:String,shippingInfo:String){
        //if ((customerName != self.customerName )||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
        if((customerName != self.customerName)||(address != self.address)||(email != self.email) || (creditCardInfo != creditCardInfo)||(shippingInfo != shippingInfo)){
            self.customerName = customerName
            self.address = address
            self.email = email
            self.creditCardInfo = creditCardInfo
            self.shippingInfo = shippingInfo
            
            print("Customer name :\(self.customerName)")
            print("Address :\(self.address)")
            print("Email:\(self.email)")
            print("Credit Card Info :\(self.creditCardInfo)")
            print("Shipping Info :\(self.shippingInfo)")
       
            
        }
        
    }
    
}



extension Customer :IDisplay{
    
    
    func display() {
        print(self.register())
    }
    
   
    
}
