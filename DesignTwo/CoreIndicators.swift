//
//  CoreIndicators.swift
//  DesignTwo
//
//  Created by Cristian Jose Perez Guerra on 3/11/24.
//

import SwiftUI

struct CoreIndicators: View {
    
    let weather = getWeatherIcon()
    let thermometer = getThermometerIcon()
    let temperature = String(Int.random(in: -7...40))
    
    var body: some View {
        HStack {
            Image(systemName: "\(weather).fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            Spacer()
            Text("\(temperature)°")
                .font(.custom("Helvetica", size: 52, relativeTo: .title))
                .bold()
                //.padding()
            Spacer()
            Image(systemName: "\(thermometer)")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
        }
        .padding()
    }
}

#Preview {
    CoreIndicators()
}
