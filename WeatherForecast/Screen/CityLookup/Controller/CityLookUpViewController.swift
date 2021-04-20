//
//  CityLookUpViewController.swift
//  WeatherForecast
//
//  Created by Shiva on 04/19/21.
//

import UIKit

class CityLookUpViewController: BaseViewController {
    @IBOutlet weak var textfieldCity: UITextField!

    let viewModel = CityLookUpViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewModel()
    }
    
    private func setupViewModel() {
        
        self.viewModel.success = {
            DispatchQueue.main.async {
                guard let list = self.viewModel.forcastModel?.list, let city = self.textfieldCity.text else {
                    return
                }
                let forecastListVC: ForcastListViewController = self.instantiateController()
                forecastListVC.viewModel = ForcastListViewModel(list: list, city: city)
                self.navigationController?.pushViewController(forecastListVC, animated: true)
            }
        }
        
        self.viewModel.failure = { [weak self] (message) in
            DispatchQueue.main.async {
                self?.showAlert( message: message)
            }
        }
        
    }
    
    @IBAction func buttonHandlerLookup(_ sender: UIButton) {
        self.view.endEditing(true)
        viewModel.fetchWeatherForecast(for: self.textfieldCity.text)
    }
    
}
