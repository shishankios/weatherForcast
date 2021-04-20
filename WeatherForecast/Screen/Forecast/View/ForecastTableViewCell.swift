//
//  ForecastTableViewCell.swift
//  WeatherForecast
//
//  Created by Shiva on 04/20/21.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    @IBOutlet weak var labelWeather: UILabel!
    @IBOutlet weak var labeltemp: UILabel!
    
    var list: List?{
        didSet {
            guard let list = list else {return}
            if list.weather?.isEmpty == false {
                labelWeather.text = list.weather?.first?.main
            }
            labeltemp.text = "temp: \(list.main?.temp ?? 0)"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
