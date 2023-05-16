//
//  NavigationViewModel.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import Foundation
import SwiftUI

public final class NavigationViewModel: ObservableObject {
    //MARK: pivate params
    private let easing: Animation
    private var screenStack = NavigationStack() {
        didSet {
            currentScreen = screenStack.top()
        }
    }
    
    //MARK: Published params
    @Published var currentScreen: NavigationStackScreen?
    
    //MARK: internal params
    var navigationType = NavigationType.push
    
    //MARK: - init
    public init(easing: Animation) {
        self.easing = easing
    }
    
    //MARK: - Navigation Stack methods
    public func push<T: View>(_ view: T) {
        withAnimation(easing) {
            navigationType = .push
            let screen = NavigationStackScreen(id: UUID().uuidString, view: AnyView(view))
            screenStack.push(screen)
        }
    }
    
    public func pop() {
        withAnimation(easing) {
            navigationType = .pop
            screenStack.pop()
        }
    }
    
    public func popToRoot() {
        withAnimation(easing) {
            navigationType = .pop
            screenStack.popToRoot()
        }
    }
}
