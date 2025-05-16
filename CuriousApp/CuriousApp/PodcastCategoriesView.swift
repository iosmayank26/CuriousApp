//
//  PodcastCategoriesView.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//

import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String?
}

struct PodcastCategoriesView: View {
    let categories: [Category] = [
        Category(title: "Business", systemImage: "briefcase.fill"),
        Category(title: "Health", systemImage: "heart.fill"),
        Category(title: "Tech", systemImage: "cpu"),
        Category(title: "Comedy", systemImage: "face.smiling.fill"),
        Category(title: "News", systemImage: "newspaper.fill"),
        Category(title: "Education", systemImage: "book.fill")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categories) { category in
                    HStack(spacing: 8) {
                        Image(systemName: category.systemImage!)
                            .font(.subheadline)
                        Text(category.title)
                            .font(.subheadline.weight(.medium))
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .background(.ultraThinMaterial)
                    .foregroundColor(.primary)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule().stroke(Color.primary.opacity(0.1), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                }
            }
            .scrollTargetBehavior(.viewAligned) // iOS 17+
            .padding(.horizontal)
        }
    }
}


#Preview {
    PodcastCategoriesView()
}
