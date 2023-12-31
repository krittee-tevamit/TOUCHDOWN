//
//  ContentView.swift
//  TOUCHDOWN
//
//  Created by codinglife365 on 9/8/2566 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
            
        ZStack {
            VStack (spacing: 0) {

                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05),radius: 5, x: 0, y:5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack (spacing: 0) {
                        FeaturedTabView()
                            .frame(height: 250)
                            .padding(.horizontal)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProducrtItemView(product: product)
                            }//: FOREACH
                        }//: LAZYVGRID
                        .padding()
                        
                        TitleView(title: "Brand")
                        
                        BrandGridView()
                            
                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
