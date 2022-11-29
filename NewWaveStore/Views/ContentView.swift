//
//  ContentView.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var productList: ProductList = ProductList()
    var body: some View {
        VStack {
            List($productList.products) {
                ProductListView(product: $0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
