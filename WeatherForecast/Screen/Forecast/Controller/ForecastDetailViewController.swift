//
//  ForecastDetailViewController.swift
//  WeatherForecast
//
//  Created by Shiva on 04/20/21.
//

import UIKit

class ForecastDetailViewController: BaseViewController {

    @IBOutlet weak var labelTemp: UILabel!
    @IBOutlet weak var labelFeelLike: UILabel!
    @IBOutlet weak var labelWeather: UILabel!
    @IBOutlet weak var labelWeatherDescription: UILabel!
    var viewModel:  ForcastDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForecastDetail()
        // Do any additional setup after loading the view.
    }
    
    private func setupForecastDetail() {
        self.labelTemp.text = viewModel.temp
        self.labelFeelLike.text = viewModel.feelLike
        self.labelWeather.text = viewModel.weather
        self.labelWeatherDescription.text = viewModel.weatherDescription
        self.title = viewModel.city
    }
}
