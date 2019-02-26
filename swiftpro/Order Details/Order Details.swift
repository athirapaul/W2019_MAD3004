//
//  Order Details.swift
//  swiftpro
//
// 
import Foundation
class OrderDetails{
    private var orderid:Int
    private  var productId:Int
    private var productName:String
    private  var quantity: Int
    private  var unitCost:Float
    private  var subTotal:Float
    
    init(orderid:Int,productId:Int,productName:String,quantity: Int,unitCost:Float,subTotal:Float){
        self.orderid = orderid
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
        self.subTotal = subTotal
    }
    func calcPrice(){
        subTotal = unitCost * Float(quantity)
    }
}

