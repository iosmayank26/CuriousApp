//
//  RecentEpisodesView.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//


import SwiftUI

struct Episode: Identifiable {
    let id = UUID()
    let title: String
    let duration: String
    let artwork: String
}

struct RecentEpisodesView: View {
    let episodes: [Episode] = [
        Episode(title: "Mastering Your Mind", duration: "28 min", artwork: "mastering-your-mind"),
        Episode(title: "AI in Daily Life", duration: "35 min", artwork: "ai-daily-life"),
        Episode(title: "Nutrition Myths Busted", duration: "42 min", artwork: "nutrition-myths-busted"),
        Episode(title: "The Startup Grind", duration: "31 min", artwork: "ai-daily-life")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Recent Episodes")
                .font(.title3.bold())
                .padding(.horizontal)

            ForEach(episodes) { episode in
                RecentEpisodeRow(episode: episode)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    RecentEpisodesView()
}
