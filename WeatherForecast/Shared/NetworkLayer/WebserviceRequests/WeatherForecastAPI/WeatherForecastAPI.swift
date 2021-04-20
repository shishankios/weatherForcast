//
//  RestaurantAPI.swift
//  NetworkLayerDemo
//
//  Created by Shiva on 04/19/21.
//

import Foundation
import CoreLocation



///  This API will hold all APIs related to restaurant
enum WeatherForecastAPI {
    case getWeatherForecast(city: String)
}

extension WeatherForecastAPI: APIProtocol {
    func httpMethodType() -> HTTPMethodType {
        var methodType = HTTPMethodType.get
        switch self {
        case .getWeatherForecast(_):
            methodType = .get
        }
        return methodType
    }

    func apiEndPath() -> String {
        var apiEndPath = ""
        switch self {
        case .getWeatherForecast(let city):
            apiEndPath += WebserviceConstants.getWeatherForecast + "q=\(city)&appid=\(WebserviceConstants.APIKey)"
        }
        return apiEndPath
    }

    func apiBasePath() -> String {
        switch self {
        case .getWeatherForecast(_):
            return WebserviceConstants.baseURL
        }
    }
}
