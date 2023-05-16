//
//  NavigationViewController.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import Foundation
import SwiftUI

public struct NavigationViewController<Content>: View where Content: View {
    //MARK: Observed object
    @ObservedObject private var viewModel: NavigationViewModel
    
    //MARK: Internal params
    var content: Content
    var transition: (push: AnyTransition, pop: AnyTransition)
    
    //MARK: - init
    public init(viewModel: NavigationViewModel = NavigationViewModel(easing: .easeOut(duration: 0.4)),
         transition: AnimationType,
         @ViewBuilder contentBuilder: @escaping () -> Content) {
        self.viewModel = viewModel
        switch transition {
        case .none:
            self.transition = (.identity, .identity)
        case .custom(push: let push, pop: let pop):
            self.transition = (push, pop)
        }
        
        self.content = contentBuilder()
    }
    
    //MARK: - Body
    public var body: some View {
        let isRoot = viewModel.currentScreen == nil
        
        return ZStack {
            if isRoot {
                content
                    .environmentObject(viewModel)
                    .transition(viewModel.navigationType == .push ? transition.push : transition.pop)
            } else {
                viewModel.currentScreen?.view
                    .environmentObject(viewModel)
                    .transition(viewModel.navigationType == .push ? transition.push : transition.pop)
            }
        }
    }
}
