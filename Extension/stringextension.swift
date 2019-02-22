//
//  stringextension.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-16.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
extension String//whereever we use string we get this method
{
    func sayHello(){
        print("Hello")
    }
    
    
    func currency() -> String{
        return "$\(self)"
    }
}
