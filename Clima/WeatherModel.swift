//
//  WeatherModel.swift
//  Clima
//
//  Created by Candi Chiu on 21.11.21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let cityName: String
    let conditionId: Int
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId{
        case 801...804:
            return "cloud"
            
        case 800:
            return "sun.max"
            
        case 701...781:
            return "cloud.fog"
            
        case 600...622:
            return "cloud.snow"
            
        case 500...531:
            return "cloud.rain"
            
        case 300...321:
            return "cloud.drizzle"
            
        case 200...232:
            return "cloud.bolt"
            
        default:
            return "cloud"
        }
        
    }
    
}
