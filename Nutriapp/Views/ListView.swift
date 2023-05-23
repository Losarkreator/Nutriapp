//
//  ListView.swift
//  Nutriapp
//
//  Created by Losark on 23/5/23.
//

import SwiftUI

private let ingredients = [
    Ingredient(id: 1, name: "Alcachofa"),
    Ingredient(id: 2, name: "Brócoli"),
    Ingredient(id: 3, name: "Zanahoria")
]

struct ListView: View {
    var body: some View {
        List(ingredients, id: \.id) { ingredient in
            RowView(ingredient: ingredient)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
