//
//  GameInfoView.swift
//  OTUS2
//
//  Created by Михаил Костров on 10.05.2023.
//

import SwiftUI
import MKNavigationStack

struct GameInfoView: View {
    let game: GameModel
    @EnvironmentObject private var nav: NavigationViewModel
    
    var body: some View {
        VStack {
            Text(game.name)
            
            AsyncImage(url: URL(string: game.backgroundImage)){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .opacity(0.5)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            
            Button("Награды") {
                nav.push(AchievementsView(achievements: AchievementsViewModel(gameID: game.id)))
            }
            .buttonStyle(.bordered)
            
            Button("Назад") {
                nav.pop()
            }
            .buttonStyle(.bordered)
        }
        .navigationTitle(game.name)
    }
}

