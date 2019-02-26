//
//  Administrator.swift
//  swiftpro
//


import Foundation
class Administrator : User{
    private var adminName : String
    private  var email :String
    private var update:Bool
    private var adminuserId :String
    private var adminpassword:String
   // var productId :Int
    init(adminName:String,email:String,update:Bool,adminuserId:String,adminpassword:String){
        self.adminName = adminName
        self.email = email
        self.update = update
        self.adminuserId = adminuserId
        self.adminpassword = adminpassword
        //self.productId = productId
        super.init()
        // super.init(verifyLogin(userID:userId, password:password))
    }
    
    //override func verifyLogin(userID: String, password: String) -> Bool {
    //     super.verifyLogin(userID:userID, password: password)
    //    return true
    // }
    
    func adminlogin(adminuserId:String,adminpassword:String){
        if(adminuserId == self.adminuserId && adminpassword == self.adminpassword){
            print("Admin logged in successfully")
            
        }}
        func updateCatalog(productId :Int)
        {
            //var p1 = Product.init(productId: 200, productName: "Necklace", price: 20.50, quantity: 2)

            if (productId == 200)
                
            {
                var p1 = Product(productId: 250, productName: "chain", price: 50, quantity: 3)
                print("product with id = 200 id upadted\(p1)")
                // return "updated"
            }
            else {
                print("update failed")
                // return false
            }
        
    }}


//
//


