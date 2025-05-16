//
//  ContentView.swift
//  CuriousApp
//
//  Created by Mayank Gupta on 14/05/25.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.textBackgroundColor)
                .edgesIgnoringSafeArea(.all)

            VStack {
                ZStack {
                    VStack {
                        HStack {
                            VStack {
                                Text("Listen Now")
                                    .font(.largeTitle.bold())
                                    .padding(.leading)

                                Spacer()
                            }

                            Spacer()

                            HStack(spacing: 12) {
                                Image(systemName: "bell")
                                Image(systemName: "gear")
                            }
                            .padding(.trailing)
                        }

                        VStack {
                            ZStack {
                                VStack {
                                    FeaturedPodcastView()

                                    HStack {
                                        PodcastCategoriesView()

                                        Spacer()
                                    }

                                    VStack {
                                        RecentEpisodesView()

                                        VStack {
                                            HStack {
                                                Text("You reached the end 👇")
                                                    .font(.footnote)
                                                    .foregroundColor(.gray)
                                                    .padding()

                                                Spacer()
                                            }

                                            HStack {
                                                Text("Want more? Try Premium.")
                                                    .font(.caption)
                                                    .padding()

                                                Spacer()
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
