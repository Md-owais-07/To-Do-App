//
//  ToDoListItemsView.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import SwiftUI

struct ToDoListItemsView: View {
    @StateObject var viewModel = ToDoListItemsViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            
            Button(action: {
                viewModel.toggleIsDone(item: item)
            }, label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(item.isDone ? .green : .blue)
            })
        }
    }
}

#Preview {
    ToDoListItemsView(item: .init(id: "123",
                                  title: "Dumy data",
                                  dueDate: Date().timeIntervalSince1970,
                                  createDate: Date().timeIntervalSince1970,
                                  isDone: true))
}
