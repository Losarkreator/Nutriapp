//  ListView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct ListView: View {
    var body: some View {
        Text("Prueba")
            .padding()
            .onAppear(perform: readFile)
        //        List(ingredients, id: \.id) { ingredient in
        //            RowView(ingredient: ingredient)
        //        }
        
    }
    
    private func readFile() {
        if let url = Bundle.main.url(forResource: "ingredients", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let jsonData = try? decoder.decode(JSONData.self, from: data) {
                print(jsonData.ingredients)
            }
        } else {
            print("Json no encontrado")
        }
    }
    
}

struct JSONData: Decodable {
    let ingredients: [Ingredient]
}


//private let ingredients = [
//    Ingredient(id: 1, name: "Alcachofa"),
//    Ingredient(id: 2, name: "Brócoli"),
//    Ingredient(id: 3, name: "Zanahoria")
//]


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
