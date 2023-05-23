//  RowView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct RowView: View {
//    var programmer: Programmer
    var ingredient: Ingredient
    
    var body: some View {
        Text(ingredient.name)
            .font(.title)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(ingredient: Ingredient(id: 1, name: "Acelgas"))
    }
}
