//
//  AchievementsView.swift
//  OTUS2
//
//  Created by Михаил Костров on 10.05.2023.
//

import SwiftUI
import MKNavigationStack

struct AchievementsView: View {
    @EnvironmentObject private var nav: NavigationViewModel
    @ObservedObject var achievements: AchievementsViewModel
    
    var body: some View {
        VStack {
            Button("Вернуться к списку игр") {
                nav.popToRoot()
            }
            
            switch achievements.achievement {
            case nil:
                ProgressView()
                    .onAppear{
                        achievements.loadCreatorsForGame()
                    }
            default:
                Text(achievements.achievement ?? "")
            }
        }
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView(achievements: AchievementsViewModel(gameID: 0))
    }
}

