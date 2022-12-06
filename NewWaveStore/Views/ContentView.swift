//
//  ContentView.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var productList: ProductList
    var body: some View {
        TabView {
            VStack {
                List($productList.products) {
                    ProductListView(product: $0)
                }
            }
                .tabItem {
                    Image(systemName: "house")
                    Text("store")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("cart")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Cart())
            .environmentObject(ProductList())
    }
}
