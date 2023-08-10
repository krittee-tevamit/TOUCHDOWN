//
//  CategoryGridView.swift
//  TOUCHDOWN
//
//  Created by codinglife365 on 10/8/2566 BE.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - property
    
    // MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Text("Placeholder")
        }//:SCROLLVIEW
    }
}

// MARK: - preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
