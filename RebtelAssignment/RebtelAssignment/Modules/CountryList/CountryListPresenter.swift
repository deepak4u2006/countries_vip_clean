//
//  CountryListPresenter.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-26.
//

import Foundation

protocol CountryListPresenterProtocol: AnyObject {
    func interactor(_ interactor: CountryListInteractorProtocol, didfetch object: CountryListEntity.Response)
    func interactor(_ interactor: CountryListInteractorProtocol, didFailWith object: NSError)}
class CountryListPresenter: CountryListPresenterProtocol {
    weak var view: CountryListViewProtocol?
    var interactor: CountryListInteractorProtocol?
    
    func interactor(_ interactor: CountryListInteractorProtocol, didfetch object: CountryListEntity.Response) {
        let viewModel = CountryListEntity.ViewModel(countryList: object)
        
        view?.set(viewModel: viewModel)
    }
    
    func interactor(_ interactor: CountryListInteractorProtocol, didFailWith object: NSError) {
        // Error handling.
    }
}
