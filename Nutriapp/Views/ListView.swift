//
//  ListView.swift
//  Nutriapp
//
//  Created by Losark on 23/5/23.
//

import SwiftUI

private let programmers = [
    Programmer(id: 1, name: "Carlos", languages: "Swift, C#", avatar: Image(systemName: "person.fill")),
    Programmer(id: 2, name: "Yo", languages: "Swift", avatar: Image(systemName: "person.fill")),
    Programmer(id: 3, name: "Tu", languages: "Kotlin", avatar: Image(systemName: "person.fill")),
    Programmer(id: 4, name: "El", languages: "Alcachofa", avatar: Image(systemName: "person.fill"))
]

struct ListView: View {
    var body: some View {
        List(programmers, id: \.id) { programmer in
            RowView(programmer: programmer)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
