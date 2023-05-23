//  RowView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct RowView: View {
//    var programmer: Programmer
    var ingredient: Ingredient
    
    var body: some View {
        HStack {
            Text(String(ingredient.id))
            Text(ingredient.name)
                .font(.title)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(ingredient: Ingredient(id: 0, name: "Acelgas"))
    }
}
