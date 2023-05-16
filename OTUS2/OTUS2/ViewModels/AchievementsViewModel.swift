//
//  AchievementsViewModel.swift
//  OTUS2
//
//  Created by Михаил Костров on 10.05.2023.
//

import SwiftUI
import NetworkLayer

final class AchievementsViewModel: ObservableObject {
    let gameID: Int
    @Published private(set) var achievement: String?
    
    init(gameID: Int) {
        self.gameID = gameID
    }
    
    func loadCreatorsForGame() {
        GamesAPI.gamesAchievementsRead(id: "\(gameID)") { [weak self] data, error in
            if let data = data {
                self?.achievement = data.name
            }
        }
    }
}
