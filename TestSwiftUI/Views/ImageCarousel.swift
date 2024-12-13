//
//  ImageCarousel.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

// MARK: - Components
struct ImageCarousel: View {
    @Binding var selectedPage: Int

    var body: some View {
        TabView(selection: $selectedPage) {
            ForEach(ListViewModel.shared.sliderImages.indices, id: \.self) { index in
                Image(ListViewModel.shared.sliderImages[index])
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(30)
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 200)
    }
}

//#Preview {
//    ImageCarousel()
//}
