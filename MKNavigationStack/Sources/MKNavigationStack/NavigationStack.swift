//
//  NavigationStack.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import Foundation

struct NavigationStack {
    var screens = [NavigationStackScreen]()
    
    func top() -> NavigationStackScreen? {
        screens.last
    }
    
    mutating func push(_ screen: NavigationStackScreen) {
        screens.append(screen)
    }
    
    mutating func pop() {
        _ = screens.popLast()
    }
    
    mutating func popToRoot() {
        screens.removeAll()
    }
}
