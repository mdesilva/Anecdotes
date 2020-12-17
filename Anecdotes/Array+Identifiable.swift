//
//  Array+Identifiable.swift
//  Anecdotes
//
//  Created by Manuja DeSilva on 12/17/20.
//

import Foundation

extension Array where Element: Identifiable {
    func indexOf(element: Element) -> Int?{
        for index in 0..<self.count {
            if self[index].id == element.id {
                return index
            }
        }
        return nil //a return type of Int optional allows us to return a null value if we don't find the element we're looking for
    }
}
