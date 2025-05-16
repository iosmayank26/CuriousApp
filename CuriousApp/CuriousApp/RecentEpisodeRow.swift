//
//  RecentEpisodeRow.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//
import SwiftUI

struct RecentEpisodeRow: View {
    let episode: Episode
    
    var body: some View {
        HStack(spacing: 16) {
            Image(episode.artwork)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 64, height: 64)
                .cornerRadius(8)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(episode.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(episode.duration)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            EpisodePlayButton()
        }
    }
}

