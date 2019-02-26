//
//  Shopping Cart.swift
//  swiftpro
//

import Foundation
class ShoppingCart : Product {
    private var cartId :Int
    //    private var productId :Int
    //private  var quantity:Int
    private   var dateAdded:String
    init(cartId:Int,productId:Int,quantity:Int,dateAdded:String,productName:String,price:Float){
        self.cartId = cartId
        //self.productId = Int()
        //self.quantity = Int()
        self.dateAdded = dateAdded
        //self.productName = String()
        super.init(productId: productId, productName: productName, price: price, quantity: quantity)
        //  self.price = Float()
        
        
    }
    func addCartItem(Product1:String) {
        
    }
    func updateQuantity(){
        
    }
    func viewCartDetails(){
        
    }
}


