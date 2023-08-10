//
//  ProducrtItemView.swift
//  TOUCHDOWN
//
//  Created by codinglife365 on 10/8/2566 BE.
//

import SwiftUI

struct ProducrtItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.color[0], green: product.color[2], blue: product.color[2]))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProducrtItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProducrtItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
