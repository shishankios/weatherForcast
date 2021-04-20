//
//  RestaurantRequests.swift
//  NetworkLayerDemo
//
// Created by Shiva on 04/19/21.
//

import Foundation

typealias WeatherForecastResponse = (Result<ForcastModel, Error>) -> Void

protocol WeatherForecastServiceRequestType {
    @discardableResult func getWeatherForecastFor(city: String, completion: @escaping WeatherForecastResponse) -> URLSessionDataTask?
}

struct WeatherForecastServiceRequests: WeatherForecastServiceRequestType {
    
    @discardableResult func getWeatherForecastFor(city: String, completion: @escaping WeatherForecastResponse) -> URLSessionDataTask? {
        let weatherForecastRequestModel = APIRequestModel(api: WeatherForecastAPI.getWeatherForecast(city: city))
        return WebserviceHelper.requestAPI(apiModel: weatherForecastRequestModel) { response in
            switch response {
            case .success(let serverData):
                JSONResponseDecoder.decodeFrom(serverData, returningModelType: ForcastModel.self, completion: { (forcastModelResponse, error) in
                    if let parserError = error {
                        completion(.failure(parserError))
                        return
                    }

                    if let forcastModelResponse = forcastModelResponse {
                        completion(.success(forcastModelResponse))
                        return
                    }
                })
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
