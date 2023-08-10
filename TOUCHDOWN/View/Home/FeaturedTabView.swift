//
//  FeaturedTabView.swift
//  TOUCHDOWN
//
//  Created by codinglife365 on 10/8/2566 BE.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        VStack {
            TabView {
                ForEach(players) { player in

                    FeaturedItemView(player: player)
                        .padding(.top, 10)
                        .padding(.horizontal, 4)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
