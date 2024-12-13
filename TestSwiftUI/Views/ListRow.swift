//
//  ListRow.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

struct ListRow: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
        .background(Color(.systemMint).opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
