//
//  FloatingActionButton.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

struct FloatingActionButton: View {
    let action: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: action) {
                    Image(systemName: "ellipsis")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 4)
                }
            }
        }
    }
}
