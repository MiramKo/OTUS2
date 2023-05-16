//
//  RootAppView.swift
//  OTUS2
//
//  Created by Михаил Костров on 10.05.2023.
//

import SwiftUI
import MKNavigationStack

struct RootAppView: View {
    var body: some View {
        NavigationViewController(
            transition: .none
        ) {
            GamesListView()
        }
    }
}

struct RootAppView_Previews: PreviewProvider {
    static var previews: some View {
        RootAppView()
    }
}
