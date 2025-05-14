//
//  FeaturedPodcastView.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//

import SwiftUI

struct FeaturedPodcastView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("mastering-your-mind-landscape")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()

            VStack(alignment: .leading, spacing: 8) {
                Text("Mind Matters")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                Text("New episode out now")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding()
        }
        .cornerRadius(16)
        .shadow(radius: 5)
    }
}

#Preview {
    FeaturedPodcastView()
}
