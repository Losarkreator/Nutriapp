//  ViewModel.swift
//  Nutriapp
//  Created by Losark on 23/5/23.


import Foundation

class ViewModel: ObservableObject {
    @Published var ingredientList = [IngredientModel]()
    
    func getData() {
        if let url = Bundle.main.url(forResource: "ingredients", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let jsonData = try? decoder.decode(JSONData.self, from: data) {
                ingredientList = jsonData.ingredients
//                print(ingredientList)
            }
        } else {
            print("Json no encontrado")
        }
    }
}
