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
print(h.display())
var a = Administrator(adminName: "chinnu", email: "chinnu@gmail.com", update: true, adminuserId: "chinnu", adminpassword: "chinnu")

a.adminlogin(adminuserId: "chinnu", adminpassword: "chinnu")
print(a)
a.updateCatalog(productId: 200)
print(a)
print("************details before updation********\n")


 //UPDATE PROFILE
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


var s1 = ShoppingCart.init(cartId:Int.random(in: 1...100), productId: p1.productId!, quantity: p1.getProductQuantity!, dateAdded: Date().getForamttedDate(), productName: p1.getProductName!, price: p1.getProductPrice!)


h.shopObject.append(s1)

h.checkOut()
print("*******NEXT ORDER*******")
var s2 = ShoppingCart.init(cartId: Int.random(in: 1...100), productId: p3.productId!, quantity: p3.getProductQuantity!, dateAdded: Date().getForamttedDate(), productName: p3.getProductName!, price: p3.getProductPrice!)
var s3 = ShoppingCart.init(cartId: Int.random(in: 1...100), productId: p2.productId!, quantity: p2.getProductQuantity!, dateAdded: Date().getForamttedDate(), productName: p2.getProductName!, price: p2.getProductPrice!)
h.shopObject.append(s2)
h.shopObject.append(s3)
h.checkOut()







