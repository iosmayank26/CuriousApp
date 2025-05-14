//
//  ContentView.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                PodcastCategoriesView()
                FeaturedPodcastView()
                RecentEpisodesView()
            }
            .padding(.horizontal)
        }
        .navigationTitle("Listen Now")
    }
}

#Preview {
    HomeView()
}
