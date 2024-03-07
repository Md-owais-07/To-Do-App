//
//  TLButtonView.swift
//  To-Do-App
//
//  Created by codilar on 02/03/24.
//

import SwiftUI

struct TLButtonView: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        })
    }
}

#Preview {
    TLButtonView(title: "Title", background: .blue) {
        //action
    }
}
