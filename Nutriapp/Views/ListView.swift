//  ListView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct ListView: View {
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        List(model.ingredientList) { item in
//            Text(item.name)
            RowView(ingredient: item)
        }
    }
    
    init() {
        model.getData()
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
