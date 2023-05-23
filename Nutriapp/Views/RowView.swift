//  RowView.swift
//  Nutriapp
//  Created by Losark on 23/5/23.

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    
    var body: some View {
        HStack(){
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Carlos", languages: "Swift, C#", avatar: Image(systemName: "person.fill")))
    }
}
