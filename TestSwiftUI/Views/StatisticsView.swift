//
//  StatisticsView.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import SwiftUI

struct StatisticsView: View {
    let items: [ListModel]

    var body: some View {
        VStack(spacing: 20) {
            Text("Statistics")
                .font(.title)
                .fontWeight(.bold)
            Text("Total items: \(items.count)")

            let allCharacters = items.flatMap { $0.title }
            let characterCounts = Dictionary(allCharacters.map { ($0, 1) }, uniquingKeysWith: +)
            let top3Characters = characterCounts.sorted(by: { $0.value > $1.value }).prefix(3)

            ForEach(top3Characters, id: \.key) { char, count in
                Text("\(char) = \(count)")
            }
        }
        .padding()
    }
}
