//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Тагир Аюпов on 2021-06-10.
//

import Foundation


extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
