//
//  main.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
var  h = Customer(userId: "bobjohn", password: "bobjohn", customerName: "bob john", address: "9 Mossbank drive, Scarborough, Ontario,Canada", email: "bobjohn@gmail.com", creditCardInfo: "2144556577575765", shippingInfo: "Bluedart")
var h1 =  Customer()
h1.register()

var p1 = Product.init(customerId: 1, customerName: "Athira", productId: 200, productName: "Necklace", price: 20.50, quantity: 2)
var p2 = Product.init(customerId: 2, customerName: "Ashly", productId: 201, productName: "Ring", price: 50.00, quantity: 5)
var p3 = Product.init(customerId: 3, customerName: "Anna", productId: 200, productName: "Anklet", price: 75.25, quantity: 1)

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



//var shop = ShoppingCart()
//print(shop.addCartItem())
