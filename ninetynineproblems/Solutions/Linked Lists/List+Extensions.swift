//
//  List+Extensions.swift
//  ninetynineproblems
//
//  Created by Marc O'Neill on 07/04/2018.
//  Copyright © 2018 marcexmachina. All rights reserved.
//

import Foundation

extension List {

    /// P01 - Last element of a linked list
    /// O(n)
    var last: T {
        return nextItem?.last ?? value
    }

    /// P02 - Second last element of a linked list
    /// O(n)
    var pennultimate: T? {
        guard let nextItem = self.nextItem else { return nil }
        guard self.nextItem?.nextItem != nil else { return value }
        return nextItem.pennultimate
    }


    /// P03 - Find the Kth element of a linked list
    ///
    /// - Parameter index: index of element to return
    /// O(n)
    subscript(index: Int) -> T? {
        var current = self
        for _ in 0..<index {
            guard let nextItem = current.nextItem else { return nil }
            current = nextItem
        }
        return current.value
    }


    /// P04 - Find the number of elements in the linked list
    /// O(n)
    var length: Int {
        var current = self
        var count = 1
        while let nextItem = current.nextItem {
            current = nextItem
            count += 1
        }
        return count
    }
}
