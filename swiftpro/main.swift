//
//  main.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
//var  h = Customer(userId: "bobjohn", password: "bobjohn", customerName: "bob john", address: "9 Mossbank drive, Scarborough, Ontario,Canada", email: "bobjohn@gmail.com", creditCardInfo: "2144556577575765", shippingInfo: "Bluedart")
var h =  Customer()
h.register()

var p1 = Product.init(productId: 200, productName: "Necklace", price: 20.50, quantity: 2)
var p2 = Product.init(productId: 201, productName: "Ring", price: 50.00, quantity: 5)
var p3 = Product.init(productId: 200, productName: "Anklet", price: 75.25, quantity: 1)

//var l = Customer(userId: "123", password: "4556", loginStatus: "5678")
h.login(userId: "bobjohn",password: "bobjohn")

h.updateProfile(customerName:" athira", address: "a", email: "ghfh", creditCardInfo: "hgc", shippingInfo: "Bluedart")
print(h)
var a = Administrator(adminName: "chinnu", email: "chinnu@gmail.com", update: true, adminuserId: "chinnu", adminpassword: "chinnu")

a.updateCatalog(adminuserId: "chinnu", adminpassword: "chinnu")
print(a)
//var p = Product()
//p.chooseProduct(Product1: "Anklet")
//print(p)

var o1 = Order.init(orderId: 1, dateCreated: Date(), dateShipped: Date(), customerName: "Athira", customerId: "1", status: "order placed", shippingId: "1", arrayProducts: [p1,p2,p3])
o1.printDetails()
//qqvar o2 = Order.init(orderId: <#T##Int#>, dateCreated: <#T##Date#>, dateShipped: <#T##Date#>, customerName: <#T##String#>, customerId: <#T##String#>, status: <#T##String#>, shippingId: <#T##String#>, arrayProducts: <#T##[Product]#>)
