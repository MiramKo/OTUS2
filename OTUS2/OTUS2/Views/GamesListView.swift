//
//  GamesListView.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import SwiftUI
import MKNavigationStack

struct GamesListView: View {
    
    private enum Platforms: Int, CaseIterable, Identifiable {
        case pc = 4
        case ps4 = 18
        case xboxOne = 1
        
        var id: Self { self }
    }
    
    @StateObject private var viewModel = GamesViewModel()
    @EnvironmentObject private var nav: NavigationViewModel
    @State private var platformChoice: Platforms = .pc
    
    var body: some View {
        VStack {
            Picker("", selection: $platformChoice) {
                Text("PC").tag(Platforms.pc)
                Text("PS4").tag(Platforms.ps4)
                Text("XboxOne").tag(Platforms.xboxOne)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            List {
                ForEach(viewModel.games) { game in
                    Text(game.name)
                    
                        .onTapGesture {
                            nav.push(GameInfoView(game: game))
                        }
                        .onAppear {
                            if viewModel.games.isCloseToLast(item: game) {
                                viewModel.loadNextPage()
                            }
                        }
                }
            }
            .onChange(of: platformChoice, perform: { platform in
                viewModel.platformID = platform.rawValue
                viewModel.getGames()
            })
            .onAppear {
                viewModel.platformID = platformChoice.rawValue
                viewModel.getGames()
            }
        }
    }
    
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        GamesListView()
    }
}

struct OrbitalEffect: GeometryEffect {

    let initialAngle: CGFloat = 0

    var percent: CGFloat = 0
    let radius: CGFloat
    let goOn: Bool

    var animatableData: CGFloat {
        get { percent }
        set { percent = newValue }
    }

    func effectValue(size: CGSize) -> ProjectionTransform {
        let angle: CGFloat = 2 * .pi * percent + initialAngle
        let point: CGPoint = .init(x: cos(angle) * radius,
                                   y: sin(angle) * radius)
        return goOn
           ? ProjectionTransform(CGAffineTransform(translationX: point.x, y: point.y))
           : ProjectionTransform()
    }


}
