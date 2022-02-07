//
//  CountryDetailInteractor.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import Foundation

protocol CountryDetailInteractorProtocol {
    func fetchCountry()
}
protocol CountryDetailDataStore {
    var country: CountryListEntity.CountryElement! {get set}
}

protocol CountryDetailDataPassing {
    var dataStore: CountryDetailDataStore? { get }
}

class CountryDetailInteractor : CountryDetailInteractorProtocol, CountryDetailDataStore {
    var country: CountryListEntity.CountryElement!
    var presenter: CountryDetailPresenterProtocol?
    
    func fetchCountry() {
        self.presenter?.interactor(self, didfetch: country)
    }
}
