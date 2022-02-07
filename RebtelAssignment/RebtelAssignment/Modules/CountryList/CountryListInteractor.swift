//
//  CountryListInteractor.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-26.
//

import Foundation

protocol CountryListInteractorProtocol {
    func fetchCountries()
}
protocol CountryListDataStore {
    var countries: [CountryListEntity.CountryElement]! {get set}
}

protocol CountryListDataPassing {
  var dataStore: CountryListDataStore? { get }
}

class CountryListInteractor : CountryListInteractorProtocol, CountryListDataStore {
    var countries: [CountryListEntity.CountryElement]!
    
    private let countryListWorker: CountryListWorkerProtocol
    
    var presenter: CountryListPresenterProtocol?
    
    required init(withLoginWorker countryListWorker: CountryListWorkerProtocol) {
        self.countryListWorker = countryListWorker
    }
    
    func fetchCountries() {
        countryListWorker.fetchCountryList() { [unowned self] (callback) in
            switch callback {
            case .success(let result):
                let viewModel = CountryListEntity.ViewModel(countryList: result)
                self.countries = viewModel.countryList
                self.presenter?.interactor(self, didfetch: result)
            break;
            
            case .failure(let error):
                self.presenter?.interactor(self, didFailWith: error)
            break;
        }
        }
    }
}
