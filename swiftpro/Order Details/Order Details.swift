//
//  Order Details.swift
//  swiftpro
//


import Foundation
class OrderDetails:IDisplay{
    private var orderid:Int
    private  var productId:Int
    private var productName:String
    private  var quantity: Int
    private  var unitCost:Float
    private  var subTotal:Float
    var getsubTotal:Float{
        return subTotal
    }
    init() {
        self.orderid = 0
        self.productId = 0
        self.productName = String()
        self.quantity = 0
        self.unitCost = 0.0
        self.subTotal = 0.0
    }
    init(orderid:Int,productId:Int,productName:String,quantity: Int,unitCost:Float){
        self.orderid = orderid
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
        self.subTotal = 0.0
        calcPrice()
    }
    func calcPrice(){
        subTotal = unitCost * Float(quantity)
    }
    func display() -> String {
        let code = "\(self.orderid)\t\t\(self.productId)\t\t\(self.productName)\t\t\(self.quantity.unit())\t\t\(self.unitCost.currency())\t\t\(self.subTotal.currency())"
        return code
    }
    
    func sorting(){
        if (orderid > 0){
           // var sort = sorting()
            let code1 = "\(self.orderid)\t\t\(self.productId)\t\t\(self.productName)\t\t\(self.quantity.unit())\t\t\(self.unitCost.currency())\t\t\(self.subTotal.currency())"
            print(code1)
        }
    
    
}


}
