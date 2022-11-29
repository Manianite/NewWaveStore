//
//  Product.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
// TEST

import Foundation

class Product: ObservableObject, Identifiable {
    internal init(name: String = "Default", description: String = "This is the default product", picture: String = "no pic", quantity: Int = 1, price: Double = 200) {
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
    
    var name: String = ""
    var description: String
    var picture: String
    var quantity: Int
    var price: Double
    let id = UUID()
}
