//
//  CountryListTableViewController.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-25.
//

import UIKit
import SDWebImage

protocol CountryListViewProtocol: AnyObject {
    var interactor: CountryListInteractorProtocol? { get set }
    var router: (NSObjectProtocol & CountryListRoutingLogic & CountryListDataPassing)? { get set }
    func set(viewModel: CountryListEntity.ViewModel)
}

class CountryListViewController: UIViewController, CountryListViewProtocol {
    var router: (NSObjectProtocol & CountryListDataPassing & CountryListRoutingLogic)?
    
    var interactor: CountryListInteractorProtocol?
    var countries: [Any]?

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var countryTableView: UITableView!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        ClassConfiguration.countryListModule(configure: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Fetching Countries..."
        
        countryTableView.delegate = self
        countryTableView.dataSource = self
        countryTableView.separatorStyle = .none
        
        interactor?.fetchCountries()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func set(viewModel: CountryListEntity.ViewModel) {
        self.countries = viewModel.countryList
        
        self.countryTableView.reloadData()
        self.activityIndicator.stopAnimating()
        self.navigationItem.title = "Country List"
    }
}

extension CountryListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countries?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryTableViewCell
        
        let country: CountryListEntity.CountryElement = self.countries?[indexPath.row] as! CountryListEntity.CountryElement
        cell.countryLabel.text = country.name.common
        cell.flagImageView?.sd_setImage(with: URL(string: country.flags.png!))
        
        return  cell
    }
}
    
extension CountryListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router?.routeToCountryDetail(segue: nil)
    }
}

