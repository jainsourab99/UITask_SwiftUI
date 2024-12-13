//
//  SearchBar.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        TextField("Search...", text: $text)
            .padding(10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .padding()
    }
}
