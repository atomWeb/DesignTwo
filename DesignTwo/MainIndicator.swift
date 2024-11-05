//
//  MainIndicator.swift
//  DesignTwo
//
//  Created by Cristian Jose Perez Guerra on 3/11/24.
//


import SwiftUI

struct MainIndicator: View {
    var body: some View {
        HStack {
            Image(systemName: "cloud.sun.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 260)
        }
    }
}

#Preview {
    MainIndicator()
}
