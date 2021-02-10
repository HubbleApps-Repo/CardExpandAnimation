//
//  ContentView.swift
//  CardExpand
//
//  Created by denzel banegas on 02/02/2021.
//

import SwiftUI

struct CardView: View {
    let title: String
    let colors: Color
    var body: some View {
        ZStack {
            Rectangle() 
                .fill(colors)
                .cornerRadius(12)
                .frame(width: 300, height: 150)
            Text(title)
                .font(.largeTitle) 
                .bold()
                .foregroundColor(.white)
        }.shadow(color: .gray, radius: 10, x: 1, y: 1)
    }
}
