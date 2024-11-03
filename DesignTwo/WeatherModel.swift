//
//  WeatherModel.swift
//  DesignTwo
//
//  Created by Cristian Jose Perez Guerra on 3/11/24.
//

let weatherIcon: [String] = ["sun.max",  "sun.min", "cloud.sun.bolt", "cloud.sun.rain", "cloud.moon", "cloud.bolt.rain", "cloud.bolt", "cloud.snow", "cloud.fog", "cloud.heavyrain", "cloud.rain", "cloud.drizzle", "cloud"]

let thermometerIcon: [String] = ["thermometer", "thermometer.sun", "thermometer.low", "thermometer.medium", "thermometer.high", "thermometer.snowflake"]

func getWeatherIcon() -> String {
    return weatherIcon.randomElement() ?? "cloud.sun"
}

func getThermometerIcon() -> String {
    return thermometerIcon.randomElement() ?? "thermometer"
}

func getWeatherIcons() -> [String] {
    return generateUniqueArray(6) { getWeatherIcon() }
}

func getTemperatures () -> [String] {
    return generateUniqueArray(3) { String(Int.random(in: -7...40)) }
}

func generateUniqueArray(_ count: Int, funcion: () -> String) -> [String] {
    var arrayResult: [String] = []
    var idx = 0
    while idx < count {
        let value = funcion()
        if !arrayResult.contains(value) {
            arrayResult.append(value)
            idx += 1
        }
    }
    return arrayResult
}
