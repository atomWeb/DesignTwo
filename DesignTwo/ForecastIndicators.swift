//
//  ForecastIndicators.swift
//  DesignTwo
//
//  Created by Cristian Jose Perez Guerra on 3/11/24.
//

import SwiftUI

struct ForecastIndicators: View {
    let forecastItems = getWeatherIcons()
    let forecastTemps = getTemperatures()
    let flexibleItems: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]
    var body: some View {
        
        LazyVGrid(columns: flexibleItems) {
            ForEach(forecastItems, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 100, height: 100)
                    .background {
                        Color(white: 0.9)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            ForEach(forecastTemps, id: \.self) { temp in
                Text("\(temp)°")
                    .font(.custom("Helvetica", size: 40, relativeTo: .title))
                    .padding()
                    .frame(width: 100, height: 100)
                    .background {
                        Color(white: 0.9)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    ForecastIndicators()
}
