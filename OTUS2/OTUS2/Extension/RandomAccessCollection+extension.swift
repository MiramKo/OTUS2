//
//  RandomAccessCollection+extension.swift
//  OTUS2
//
//  Created by Михаил Костров on 11.05.2023.
//

import Foundation

extension RandomAccessCollection where Self.Element: Identifiable {
    func isCloseToLast<T: Identifiable>(item: T) -> Bool {
        guard
            !isEmpty,
            let itemIndex = firstIndex(where: { AnyHashable($0.id) == AnyHashable(item.id) }) else { return false }
        
        let distance = distance(from: itemIndex, to: endIndex)
        
        return distance == 10
    }
}
