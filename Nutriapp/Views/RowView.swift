//  RowView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct RowView: View {
    var ingredient: IngredientModel
    
    var body: some View {
        HStack {
            Text(ingredient.name)
                .font(.title)
                .foregroundColor(Color.white)
        }
        .padding(.horizontal, 24.0)
        .padding(.vertical, 12.0)
        .background(Capsule().fill(Color.gray))
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(ingredient: IngredientModel(id: 1, name: "Acelgas", calorias: 12))
    }
}
