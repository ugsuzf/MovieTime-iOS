//
//  HomeTableView.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 26/10/2021.
//

import SwiftUI

struct HomeTableView: View {
    
    enum Tab : Int {
        case movie
        case discover
    }
    
    @State private var selectedTab = Tab.movie
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MoviesView().tabItem {
                tabBarItem(text: "Movies", image: "film")
            }.tag(Tab.movie)
            
            DiscoverView().tabItem {
                tabBarItem(text: "Discover", image: "square.stack")
            }.tag(Tab.discover)
            
        }
    }
    
    private func tabBarItem(text: String, image: String) -> some View {
        VStack {
            Image(systemName: image)
                .imageScale(.large)
            Text(text)
        }
    }
}

struct HomeTableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTableView()
    }
}
