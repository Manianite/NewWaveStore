//
//  ProductDetailView.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/29/22.
//

import SwiftUI

struct ProductDetailView: View {
    @Binding var product: Product
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.picture)
                .resizable()
                .frame(width: 300, height: 300)
            Text(product.name)
                .font(.system(.headline))
            Text(product.description)
            Text(String(format: "$%.2f", product.price))
                .foregroundColor(.blue)
            Text("Quantity Avalible: \(product.quantity)")
            Button {
                //
            } label: {
                Text("Add to Cart")
                    .background(.blue)
                    .frame(width: 300, height: 50, alignment: .bottom)
                    .cornerRadius(10)
            }

        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Binding.constant(Product()))
    }
}
