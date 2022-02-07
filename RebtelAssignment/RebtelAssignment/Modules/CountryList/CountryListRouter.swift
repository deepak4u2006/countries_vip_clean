//
//  CountryListRouter.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import Foundation
import UIKit

protocol CountryListRoutingLogic{
    func routeToCountryDetail(segue: UIStoryboardSegue?)
}

class CountryListRouter: NSObject, CountryListRoutingLogic, CountryListDataPassing
{
    var dataStore: CountryListDataStore?
    weak var viewController: CountryListViewController?
    
    func routeToCountryDetail(segue: UIStoryboardSegue?) {
      if let segue = segue {
        let destinationVC = segue.destination as! CountryDetailViewController
        var destinationDS = destinationVC.router!.dataStore!
        passDataToProductDetail(source: dataStore!, destination: &destinationDS)
      } else {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "CountryDetailViewController") as! CountryDetailViewController
        var destinationDS = destinationVC.router!.dataStore!
        passDataToProductDetail(source: dataStore!, destination: &destinationDS)
        navigateToProductDetail(source: viewController!, destination: destinationVC)
      }
    }

    func navigateToProductDetail(source: CountryListViewController, destination: CountryDetailViewController) {
        source.show(destination, sender: nil)
      }
      
  // MARK: Passing data
  func passDataToProductDetail(source: CountryListDataStore, destination: inout CountryDetailDataStore) {
    let selectedRow = viewController?.countryTableView.indexPathForSelectedRow?.row
    let selectedCountry = source.countries?[selectedRow!]
    destination.country = selectedCountry
  }
}
