//  ListView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct ListView: View {
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        List(model.ingredientList) { item in
            HStack {
                Text(String(item.id))
                Text(item.name)
            }
        }
    }
    
    init() {
        model.getData()
    }
    
}


/*
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
 */



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
