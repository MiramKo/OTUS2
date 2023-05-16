//
//  GamesViewModel.swift
//  OTUS2
//
//  Created by Михаил Костров on 08.05.2023.
//

import Foundation
import NetworkLayer

struct GameModel: Identifiable {
    let id: Int
    let name: String
    let backgroundImage: String
    
    init?(from game: Game) {
        guard
            let id = game.id,
            let name = game.name,
            let backgroundImage = game.backgroundImage else { return nil }
        
        self.id = id
        self.name = name
        self.backgroundImage = backgroundImage
    }
}

final class GamesViewModel: ObservableObject {
    @Published var games = [GameModel]()
    var platformID: Int = 4 {
        didSet {
            currentPage = 1
            games.removeAll()
        }
    }
    
    private var isLoading = false
    private var currentPage = 1
    
    func getGames() {
        isLoading = true
        GamesAPI.gamesList(page: currentPage, pageSize: 40, platforms: "1") { [weak self] data, error in
            self?.isLoading = false
            if let data = data {
                self?.games.append(contentsOf: data.results.compactMap{ GameModel(from: $0) })
            }
        }
    }
    
    func loadNextPage() {
        guard !isLoading else { return }
        
        currentPage += 1
        getGames()
    }
}
