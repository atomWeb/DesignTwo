//
//  ContentView.swift
//  DesignTwo
//
//  Created by Cristian Jose Perez Guerra on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                let azulGoo = Color(red: 58 / 255, green: 94 / 255, blue: 152 / 255)
                
                VStack {
                    
                    MainIndicator()
                    CoreIndicators()
                    ForecastIndicators()
                    
                }
                // .foregroundStyle(.indigo.gradient)
                .foregroundStyle(Color(azulGoo))
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
