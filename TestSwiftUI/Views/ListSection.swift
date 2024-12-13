//
//  ListSection.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

struct ListSection: View {
    let filteredList: [ListModel]

    var body: some View {
        VStack(spacing: 10) {
            ForEach(filteredList.indices, id: \.self) { index in
                ListRow(
                    title: filteredList[index].title,
                    subtitle: filteredList[index].subTitle,
                    imageName: filteredList[index].image
                )
            }
        }
        .padding(20)
    }
}

//#Preview {
//    ListSection()
//}
