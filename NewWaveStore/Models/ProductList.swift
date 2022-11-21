//
//  ProductList.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
//

import Foundation

class ProductList: ObservableObject {
    @Published var products:[Product] = [
        Product(name: "NW-PC", description: "PC", picture: "NW-PC", quantity: 1, price: 800.0),
        Product(name: "wPhone", description: "Phone", picture: "wPhone", quantity: 1, price: 800.0),
        Product(name: "wPen", description: "Pen", picture: "wPen", quantity: 1, price: 800.0),
        Product(name: "Software", description: "OS", picture: "Software", quantity: 2, price: 200.0)
    ]
}
