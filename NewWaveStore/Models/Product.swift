//
//  Product.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
// TEST

import Foundation

class Product: ObservableObject {
    internal init(name: String = "", description: String, picture: String, quantity: Int, price: Double) {
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
}
