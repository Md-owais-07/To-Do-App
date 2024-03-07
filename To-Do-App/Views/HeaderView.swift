//
//  HeaderView.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let Rectangle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: Rectangle))
            
            VStack {
                Text(title)
                    .font(.system(size: 40))
                    .font(.headline)
                    .foregroundStyle(.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 20))
                    .font(.footnote)
                    .foregroundStyle(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(title: "title", subTitle: "subtitle", Rectangle: 15, background: .blue)
}
