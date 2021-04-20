//
//  ForcastDetailViewModel.swift
//  WeatherForecast
//
//  Created by Shiva on 04/20/21.
//

import Foundation

class ForcastDetailViewModel {
    
    let temp : String
    let feelLike : String
    let weather : String
    let weatherDescription : String
    let city : String

    init(list : List, city: String) {
        self.temp = "\(list.main?.temp ?? 0)"
        self.feelLike = "Feels Like: \(list.main?.feels_like ?? 0)"
        self.weather = list.weather?.first?.main ?? ""
        self.weatherDescription = list.weather?.first?.description ?? ""
        self.city = city
    }

    
}
