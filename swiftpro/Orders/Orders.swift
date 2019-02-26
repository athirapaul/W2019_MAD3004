//
//  Orders.swift
//  swiftpro
//


import Foundation
/*class Orders{
 private  var orderId :Int
 private  var dateCreated:String
 private  var dateShipped:String
 private  var customerName:String
 private  var customerId:String
 private  var status:String
 private  var shippingId:String
 
 init(orderId:Int,dateCreated:String,dateShipped:String,customerId:String,customerName:String,status:String,shippingId:String) {
 self.orderId = orderId
 self.dateCreated = dateCreated
 self.dateShipped = dateShipped
 self.customerName = customerName
 self.customerId = customerId
 self.status = status
 self.shippingId = shippingId
 }
 func placeOrder(){
 
 }
 }
 */
class Order:IDisplay {
    //func printMyData() -> String {
    //
    //}
    
    
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
    //DICTIONARY ORDERS
    private static var dictOrders=[Int:Order]()
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
    
    /*
     
     
     " \n\n\n\n"
     \n)")
     print("status is : \(String(describing: self.status ))")
     print(" shippingId is : \(String(describing: self.shippingId ))")
     print("arrayProducts is : \(String(describing: self.arrayProducts ))")
     //Some formating required to display
     print("orderId","dateCreated","dateShipped"," customerId","customerName","status","shippingId","arrayProducts","PRODUCT ID"," PRODUCT NAME","PRICE","QUANTITY")
     for product in self.arrayProducts {
     product.printDetails()
     }
     print("****************************************************************************")
     print("Order Total is : \(self.orderTotal.currency())\n\n\n")
     }
     */
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
    
    static func sortOrderByTotal()
    {
        let newOrders = dictOrders.sorted(by:   {o1, o2 in
            return o1.value.orderTotal > o2.value.orderTotal
        })
        
        for o in newOrders
        {
            print(o.value.display())
        }
    }
    
    func display() -> String {
        let code = "************************* ORDER DETAILS *********************\nOrder Id is : \(self.orderId)\ndateCreated is : \(self.dateCreated)\ndateShipped is : \(self.dateShipped)\ncustomerId  is : \(self.customerId)\ncustomerName is : \(self.customerName)\nstatus is : \(self.status)\nshippingId is : \(self.shippingId)"
        return code
    }
    
    //GET ORDER DETAILS BY USING ITS ORDER ID
    static func getOrderById(orderId:Int) -> Order? {
        
        if let order = dictOrders[orderId] {
            return order as Order
        }
        else {
            return nil
        }
    }
    
    /*    //REMOVE PRODUCT from Order
     func removeProduct(productId:Int) {
     var arrayNewProducts:[Product] = [Product]()
     for product in self.arrayProducts {
     if product.productId != productId {
     arrayNewProducts.append(product)
     }
     }
     self.arrayProducts = arrayNewProducts
     }*/
}


