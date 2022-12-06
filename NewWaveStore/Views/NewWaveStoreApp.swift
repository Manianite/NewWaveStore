//
//  NewWaveStoreApp.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
//

import SwiftUI

@main
struct NewWaveStoreApp: App {
    @StateObject var products: ProductList = ProductList()
    @StateObject var cart: Cart = Cart()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(products)
                .environmentObject(cart)
        }
    }
}
