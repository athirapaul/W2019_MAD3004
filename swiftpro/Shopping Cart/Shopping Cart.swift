//
//  Shopping Cart.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class ShoppingCart{
 private    var cartId :Int
   private  var productId :Int
   private  var quantity:Int
  private   var dateAdded:Int
    init(){
        self.cartId = Int()
        self.productId = Int()
        self.quantity = Int()
        self.dateAdded = Int()
    }
    func addCartItem(){
        print("  Enter cartId :\(cartId)")
        print(" Enter productId  :\(productId)")
        print(" Enter quantity :\(quantity)")
        print(" Enter dateAdded :\( dateAdded)")
        print("Items Added successfully to the cart")
        
    }
    func updateQuantity(cartId: Int,productId: Int,quantity:Int,dateAdded: Int){
        if((cartId != self.cartId)||(productId != self.productId)||(quantity != self.quantity)||(dateAdded != self.dateAdded)){
            self.cartId = cartId
            self.productId = productId
            self.quantity = quantity
            self.dateAdded = dateAdded
            print("  Enter cartId :\(self.cartId)")
            print(" Enter productId  :\(self.productId)")
            print("quantity:\(self.quantity)")
            print(" Enter dateAdded :\(self.dateAdded)")
            print("Updated successfully")
        }
        
    }
    func viewCartDetails(cartId: Int,productId: Int,quantity:Int,dateAdded: Int){
        
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
        print("  Enter cartId :\(self.cartId)")
        print(" Enter productId  :\(self.productId)")
        print("quantity:\(self.quantity)")
        print(" Enter dateAdded :\(self.dateAdded)")
        
        
    func checkOut(){
        
    }
}
