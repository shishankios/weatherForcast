//
//  ForcastListViewController.swift
//  WeatherForecast
//
//  Created by Shiva on 04/20/21.
//

import UIKit

class ForcastListViewController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel: ForcastListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        self.title = viewModel.city
    }
    
    private func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension ForcastListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ForecastTableViewCell = tableView.dequeueCell(ofType: ForecastTableViewCell.self)
        cell.list = self.viewModel.list[indexPath.row]
        return cell
    }
}

extension ForcastListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
        let detailVC: ForecastDetailViewController = self.instantiateController()
        detailVC.viewModel = ForcastDetailViewModel(list: self.viewModel.list[indexPath.row], city: viewModel.city)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
