//
//  CountryDetailPresenter.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import Foundation

protocol CountryDetailPresenterProtocol: AnyObject {
    func interactor(_ interactor: CountryDetailInteractorProtocol, didfetch object: CountryListEntity.CountryElement)
    func interactor(_ interactor: CountryDetailInteractorProtocol, didFailWith object: NSError)
}

class CountryDetailPresenter: CountryDetailPresenterProtocol {
    weak var view: CountryDetailViewProtocol?
    var interactor: CountryDetailInteractorProtocol?
    
    func interactor(_ interactor: CountryDetailInteractorProtocol, didfetch object: CountryListEntity.CountryElement) {
        view?.set(countryObject: object)
    }
    
    func interactor(_ interactor: CountryDetailInteractorProtocol, didFailWith object: NSError) {
        // Error handling.
    }
}
