//
//  main.swift
//  swiftpro
//


import Foundation
//var  h = Customer(userId: "bobjohn", password: "bobjohn", customerName: "bob john", address: "9 Mossbank drive, Scarborough, Ontario,Canada", email: "bobjohn@gmail.com", creditCardInfo: "2144556577575765", shippingInfo: "Bluedart")
var h =  Customer()
h.register()

var p1 = Product.init(productId: 200, productName: "Necklace", price: 20.50, quantity: 2)
var p2 = Product.init(productId: 201, productName: "Ring", price: 50.00, quantity: 5)
var p3 = Product.init(productId: 202, productName: "Anklet", price: 75.25, quantity: 1)
var p = [p1,p2,p3]
//do{
try h.needtologin()
//}catch(let error)
//{
//    print(error)
//}
//print(h)
//var l = Customer(userId: "123", password: "4556", loginStatus: "5678")
//h.login(userId: "",password: "")
print("details before updation")
print(h.display())
/*
 //////UPDATE PROFILE
 print("Updation(enter new/old info)\nEnter Name")
 let name=readLine()!
 print("Enter address")
 let address=readLine()!
 print("Enter email")
 let email=readLine()!
 print("Enter credit card info")
 let credinfo=readLine()!
 print("Shipping info")
 let shipinfo=readLine()!
 h.updateProfile(customerName: name, address: address, email: email, creditCardInfo: credinfo, shippingInfo: shipinfo)
 print(h.display())
 */

var s1 = ShoppingCart.init(cartId:Int.random(in: 1...100), productId: p1.productId!, quantity: p1.getProductQuantity!, dateAdded: Date().getForamttedDate(), productName: p1.getProductName!, price: p1.getProductPrice!)

var s2 = ShoppingCart.init(cartId: Int.random(in: 1...100), productId: p2.productId!, quantity: p2.getProductQuantity!, dateAdded: Date().getForamttedDate(), productName: p2.getProductName!, price: p2.getProductPrice!)
h.shopObject.append(s1)
h.shopObject.append(s2)
h.checkOut()


//var a = Administrator(adminName: "chinnu", email: "chinnu@gmail.com", update: true, adminuserId: "chinnu", adminpassword: "chinnu")

//a.updateCatalog(adminuserId: "chinnu", adminpassword: "chinnu")
//print(a)
//var p = Product()
//p.chooseProduct(Product1: "Anklet")
//print(p)

//var o1 = Order.init(orderId: 1, dateCreated: Date(), dateShipped: Date(), customerName: h.customerName, customerId: 1, status: "order placed", shippingId: 1)
//print(o1.display())
//qqvar o2 = Order.init(orderId: <#T##Int#>, dateCreated: <#T##Date#>, dateShipped: <#T##Date#>, customerName: <#T##String#>, customerId: <#T##String#>, status: <#T##String#>, shippingId: <#T##String#>, arrayProducts: <#T##[Product]#>)


