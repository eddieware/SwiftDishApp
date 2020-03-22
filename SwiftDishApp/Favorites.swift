//
//  Favorites.swift
//  SwiftDishApp
//
//  Created by EDUARDO MEJIA on 21/03/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items = [MenuItem]()

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
