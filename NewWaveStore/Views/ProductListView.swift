//
//  ProductListView.swift
//  NewWaveStore
//
//  Created by Speer-Zisook, Ella on 11/29/22.
//

import SwiftUI

struct ProductListView: View {
    @Binding var product: Product
    var body: some View {
        HStack(alignment: .top) {
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
            VStack(alignment: .leading) {
                Text(product.name)
                    .padding([.trailing, .leading])
                Text(String(format: "$%.2f", product.price))
                    .foregroundColor(.blue)
                    .padding([.trailing, .leading])
                Spacer()
            }
            Spacer()
        }
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(product: Binding.constant(Product()))
    }
}
