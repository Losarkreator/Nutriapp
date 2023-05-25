//  Ingredient.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import Foundation

struct IngredientModel: Decodable, Identifiable {
    let id: Int
    let name: String
    var calorias: Int
}

struct JSONData: Decodable {
    let ingredients: [IngredientModel]
}
