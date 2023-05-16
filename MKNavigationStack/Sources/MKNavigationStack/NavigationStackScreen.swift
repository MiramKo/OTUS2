//
//  NavigationStackRootScreen.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import Foundation
import SwiftUI

struct NavigationStackScreen {
    let id: String
    let view: AnyView
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}
