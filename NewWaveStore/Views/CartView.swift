//
//  CartView.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 12/6/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    var body: some View {
        VStack {
            List($cart.products) {
                CartItemView(product: $0)
            }
            Spacer()
            HStack {
                Text("Total")
                    .font(.headline)
                Text(String(format: "$%.2f", cart.total))
                    .foregroundColor(.blue)
                    .padding([.trailing, .leading])
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart())
    }
}
