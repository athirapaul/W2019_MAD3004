//
//  Product.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-16.
//  Copyright © 2019 Athira Paul. All rights reserved.
//


import Foundation
//class Product{
// var prod : [String] = ["Necklace" ,"Ring", "Anklet"]

// var prodId :
/*    var productname :String
 
 
 
 
 //  func chooseProduct(Product1:String) -> bool{
 if (Product1 == prod[0]){
 print(prod[0])
 
 }
 else if (Product1 == prod[1]){
 print(prod[1])
 
 }
 else if (Product1 == prod[2]){
 print(" \(prod[2]) is selected")
 }
 else{
 print("Product not found")
 }
 return true
 
 
 class Product {
 
 var productId :Int
 var productName: String
 var price: Float
 var quantity : Int
 
 init(productId:Int,productName:String,price:Float,quantity:Int) {
 self.productId = productId
 self.productName = productName
 self.price = price
 self.quantity = quantity
 
 }
 init() {
 self.productId = Int()
 self.productName = String()
 self.price = Float()
 self.quantity = Int()
 }
 
 }*/
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

