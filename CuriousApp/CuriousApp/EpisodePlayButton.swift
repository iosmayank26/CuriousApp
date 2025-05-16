//
//  EpisodePlayButton.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//

import SwiftUI

struct EpisodePlayButton: View {
    var body: some View {
        Button(action: {
            print("Play tapped")
        }) {
            Image(systemName: "play.fill")
                .foregroundColor(.white)
                .padding(10)
                .background(Color.blue)
                .clipShape(Circle())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    EpisodePlayButton()
}
