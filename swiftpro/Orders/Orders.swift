//
//  Orders.swift
//  swiftpro
//


import Foundation

class Order:IDisplay {

    
    var orderId:Int
    private   var dateCreated:String
    private  var dateShipped:String
    private  var customerName:String
    private   var customerId:Int
    private  var status:String
    private   var shippingId:Int
    var orderDetailObj = [OrderDetails]()
    //lazy var arrayProducts:[Product] = [Product]()
    //Computed Property : Order Total
    var orderTotal:Float{
        var finalOrderTotal:Float = 0.0
        for product in p {
            finalOrderTotal = finalOrderTotal + (product.getProductPrice! * Float(product.getProductQuantity!))
        }
        return finalOrderTotal
    }
   
   
    init()
    {
        self.orderId = Int()
        self.dateCreated = String()
        self.dateShipped = String()
        self.customerId = Int()
        self.customerName  = String()
        self.status = String()
        self.shippingId = Int()
        //self.arrayProducts = [Product]()
    }
    init(orderId:Int,dateCreated: String,dateShipped:String,customerName:String,customerId:Int,status:String,shippingId:Int) {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.customerId = customerId
        self.customerName  = customerName
        self.status = status
        self.shippingId = shippingId
        //self.arrayProducts = arrayProducts
    }
    
   
    func placeOrder(shopCartObj:[ShoppingCart]){
        for i in shopCartObj{
            for j in p{
                if(i.productId == j.productId){
                    orderDetailObj.append(OrderDetails(orderid: self.orderId, productId: i.productId!, productName: i.productName!, quantity: i.getProductQuantity!, unitCost:j.getProductPrice!))
                }
            }
        }
       print(display())
        print("******OrderDetails are********\nOrderId\t\tProductId\t\tProduct Name\t\tQuantity\t\tUnit Cost\t\tSubtotal")
        var fintotal:Float=0
        for i in orderDetailObj{
            fintotal = fintotal+i.getsubTotal
            print(i.display())
            print("Total: \(fintotal)")
        }
    }
    

    func display() -> String {
        let code = "************************* ORDER DETAILS *********************\nOrder Id is : \(self.orderId)\ndateCreated is : \(self.dateCreated)\ndateShipped is : \(self.dateShipped)\ncustomerId  is : \(self.customerId)\ncustomerName is : \(self.customerName)\nstatus is : \(self.status)\nshippingId is : \(self.shippingId)"
        return code
    }
    

    
}


