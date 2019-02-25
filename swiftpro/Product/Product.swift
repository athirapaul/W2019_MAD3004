//
//  Product.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-16.
//  Copyright © 2019 Athira Paul. All rights reserved.
//


import Foundation

class Product  {
    
    var productId:Int?
    var productName:String?
    var getProductName:String?
    {
        get{
            return productName
        }
        
    }
    private var price:Float?
    var getProductPrice:Float?
    {
        get{
            return price
        }
    }
    private var quantity:Int?
    var getProductQuantity:Int?
    {
        get{
            return quantity
        }
    }
    
    init(productId:Int,productName:String,price:Float,quantity:Int) {
        self.productId = productId
        // super.init(customerId: customerId, customerName: customerName)
        
        self.productName = productName
        self.price = price
        self.quantity = quantity
    }
    
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity! + newQuantity
    }
    
    func printDetails()
    {
        print(self.productId!,self.productName!,self.price!.currency(), self.quantity!.unit(), separator:"\t")
        
    }
}

