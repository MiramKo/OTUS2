//
//  AnimationType.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import Foundation
import SwiftUI

public enum AnimationType {
    case none
    case custom(push: AnyTransition, pop: AnyTransition)
}
