//
//  iDisplay.swift
//  swiftpro
//
//  Created by Athira Paul on 2019-02-14.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import Foundation
protocol IDisplay
{
    func display()  -> String
}

extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}

extension Int
{
    public func unit() -> String
    {
        return String.init(format: "%d Units", self)
    }
}
extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
}

