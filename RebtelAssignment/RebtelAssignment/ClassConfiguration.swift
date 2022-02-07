//
//  ClassConfiguration.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-26.
//

import Foundation

class ClassConfiguration: NSObject {
    class func countryListModule(configure viewController: CountryListViewController) {
        let interactor = CountryListInteractor(withLoginWorker: CountryListWorker())
        let presenter = CountryListPresenter()
        let router = CountryListRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        
        presenter.view = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    class func countryDetailModule(configure viewController: CountryDetailViewController) {
        let interactor = CountryDetailInteractor()
        let presenter = CountryDetailPresenter()
        let router = CountryDetailRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        
        presenter.view = viewController
        router.dataStore = interactor
    }
}
