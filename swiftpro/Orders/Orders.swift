//
//  Orders.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
class Orders{
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
