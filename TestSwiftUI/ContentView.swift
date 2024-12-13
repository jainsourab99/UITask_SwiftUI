//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 12/12/24.
//

import SwiftUI

//struct ListModel {
//    let image: String
//    let title: String
//    let subTitle: String
//    
//    init(image: String, title: String, subTitle: String) {
//        self.image = image
//        self.title = title
//        self.subTitle = subTitle
//    }
//}

//struct ListViewModel {
//    static let shared = ListViewModel()
//    private init () {}
//    
//    var listItems: [ListModel] = [
//        ListModel(image: "image1", title: "Streamline Your Day", subTitle: "Simplify tasks and stay organized effortlessly."),
//        ListModel(image: "image2", title: "Shop Smart, Live Better", subTitle: "Connecting local sellers with savvy shoppers."),
//        ListModel(image: "image3", title: "Astrology, Redefined", subTitle: "Personalized insights for your cosmic journey."),
//        ListModel(image: "image4", title: "Track Every Penny", subTitle: "Stay in control of your expenses, every day."),
//        ListModel(image: "image5", title: "Plan Smarter", subTitle: "Get more done with an intuitive to-do list."),
//        
//        ListModel(image: "image1", title: "Secure Banking, Simplified", subTitle: "Innovative solutions for seamless transactions."),
//        ListModel(image: "image2", title: "Your Design, Our Focus", subTitle: "Elevating user experiences through research-driven design."),
//        ListModel(image: "image3", title: "Learn, Grow, Achieve", subTitle: "Master coding with tailored study plans."),
//        ListModel(image: "image4", title: "From Cards to Actions", subTitle: "Transform interactions with dynamic UI components."),
//        ListModel(image: "image5", title: "Future-Ready Apps", subTitle: "Empowering businesses with cutting-edge solutions."),
//    ]
//    
//    let sliderImages = ["image1", "image2", "image3", "image4", "image5"]
//}

//struct ContentView: View {
//    @State private var selectedPage = 0
//    @State private var searchText = ""
//    @State private var showBottomSheet = false
//        
//    var filteredList: [ListModel] {
//        return searchText.isEmpty
//        ? ListViewModel.shared.listItems
//        : ListViewModel.shared.listItems.filter { $0.title.lowercased().contains(searchText.lowercased()) }
//    }
//    
//    var body: some View {
//        ZStack {
//            // Scrollable Content
//            ScrollView {
//                VStack(spacing: 0) {
//                    // Image Carousel
//                    TabView(selection: $selectedPage) {
//                        ForEach(ListViewModel.shared.sliderImages.indices, id: \.self) { index in
//                            Image(ListViewModel.shared.sliderImages[index])
//                                .resizable()
//                                .scaledToFill()
//                                .frame(height: 200)
//                                .cornerRadius(10)
//                                .padding(30)
//                                .tag(index)
//                        }
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .frame(height: 200)
//                    
//                    // Search Bar
//                    SearchBar(text: $searchText)
//                        .padding(.horizontal)
//                    
//                    // List
//                    VStack(spacing: 10) {
//                        ForEach(filteredList.indices, id: \.self) { index in
//                            ListRow(
//                                title: filteredList[index].title,
//                                subtitle: filteredList[index].subTitle,
//                                imageName: filteredList[index].image
//                            )
//                        }
//                    }
//                    .padding(20)
//                }
//                .background(Color(.systemGroupedBackground))
//            }
//            
//            // Floating Action Button
//            VStack {
//                Spacer()
//                HStack {
//                    Spacer()
//                    FloatingActionButton(action: {
//                        // Action for the FAB
//                        showBottomSheet.toggle()
//                    })
//                }
//                .padding()
//            }
//        }
//        .background(Color(.systemGroupedBackground))
//        .sheet(isPresented: $showBottomSheet) {
//            StatisticsView(items: filteredList)
//        }
//    }
//}
//
//struct ListRow: View {
//    let title: String
//    let subtitle: String
//    let imageName: String
//
//    var body: some View {
//        HStack(spacing: 16) {
//            Image(imageName)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 50, height: 50)
//                .clipShape(RoundedRectangle(cornerRadius: 8))
//            
//            VStack(alignment: .leading, spacing: 4) {
//                Text(title)
//                    .font(.headline)
//                    .foregroundColor(.black)
//                Text(subtitle)
//                    .font(.subheadline)
//                    .foregroundColor(.gray)
//            }
//            Spacer()
//        }
//        .padding()
//        .background(Color(.systemMint).opacity(0.2))
//        .clipShape(RoundedRectangle(cornerRadius: 16))
//    }
//}
//
//struct FloatingActionButton: View {
//    let action: () -> Void
//
//    var body: some View {
//        Button(action: action) {
//            Image(systemName: "ellipsis")
//                .font(.system(size: 24, weight: .bold))
//                .foregroundColor(.white)
//                .frame(width: 56, height: 56)
//                .background(Color.blue)
//                .clipShape(Circle())
//                .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 4)
//        }
//    }
//}
//
//struct SearchBar: View {
//    @Binding var text: String
//    var body: some View {
//        TextField("Search...", text: $text)
//            .padding(10)
//            .background(Color.gray.opacity(0.2))
//            .cornerRadius(8)
//            .padding()
//    }
//}
//
//struct StatisticsView: View {
//    let items: [ListModel]
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Statistics")
//                .font(.title)
//                .fontWeight(.bold)
//            Text("Total items: \(items.count)")
//            
//            let allCharacters = items.flatMap { $0.title }
//            let characterCounts = Dictionary(allCharacters.map { ($0, 1) }, uniquingKeysWith: +)
//            let top3Characters = characterCounts.sorted(by: { $0.value > $1.value }).prefix(3)
//
//            ForEach(top3Characters, id: \.key) { char, count in
//                Text("\(char) = \(count)")
//            }
//        }
//        .padding()
//    }
//}

// MARK: - Main ContentView
struct ContentView: View {
    @State private var selectedPage = 0
    @State private var searchText = ""
    @State private var showBottomSheet = false
    
    private var filteredList: [ListModel] {
        searchText.isEmpty ? ListViewModel.shared.listItems :
        ListViewModel.shared.listItems.filter { $0.title.lowercased().contains(searchText.lowercased()) }
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 0) {
                    ImageCarousel(selectedPage: $selectedPage)
                    SearchBar(text: $searchText)
                        .padding(.horizontal)
                    ListSection(filteredList: filteredList)
                }
                .background(Color(.systemGroupedBackground))
            }
            FloatingActionButton {
                showBottomSheet.toggle()
            }
            .padding()
        }
        .sheet(isPresented: $showBottomSheet) {
            StatisticsView(items: filteredList)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
