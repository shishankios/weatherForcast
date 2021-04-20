//
//  CityLookUpViewModel.swift
//  WeatherForecast
//
//  Created by Shiva on 04/19/21.
//

import Foundation


class CityLookUpViewModel {
    
    var forcastModel: ForcastModel?
    var success: (()-> Void)?
    var failure: ((String)-> Void)?

    
    func fetchWeatherForecast(for city: String?) {
        
        guard let city = city else {
            return
        }
        let request = WeatherForecastServiceRequests()
        
        request.getWeatherForecastFor(city: city) { [weak self] apiResult in
            switch apiResult {
            case .success(let forcastModel):
                self?.forcastModel = forcastModel
                self?.success?()
            case .failure(let error):
                self?.failure?(error.localizedDescription)
            }
        }
    }
    
}
