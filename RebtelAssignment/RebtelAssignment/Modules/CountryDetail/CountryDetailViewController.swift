//
//  CountryDetailViewController.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import UIKit

protocol CountryDetailViewProtocol: AnyObject {
    var interactor: CountryDetailInteractorProtocol? { get set }
    var router: (NSObjectProtocol & CountryDetailRoutingLogic & CountryDetailDataPassing)? { get set }
    func set(countryObject: CountryListEntity.CountryElement)
}

class CountryDetailViewController: UIViewController, CountryDetailViewProtocol {
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var countryTextView: UITextView!
    
    var interactor: CountryDetailInteractorProtocol?
    var router: (NSObjectProtocol & CountryDetailDataPassing & CountryDetailRoutingLogic)?
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        ClassConfiguration.countryDetailModule(configure: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.black
        
        interactor?.fetchCountry()
    }
    
    func set(countryObject: CountryListEntity.CountryElement) {        
        if let imgUrl = countryObject.coatOfArms.png {
            self.countryImageView.sd_setImage(with: URL(string: imgUrl), completed: {_,_,_,_ in
                self.activityIndicator.stopAnimating()
            })
        } else {
            self.countryImageView.sd_setImage(with: URL(string: countryObject.flags.png!))
        }
        
        let descriptionText = String(format: "%@ or %@ is a country in %@ having capital in %@. It has approx population of %d spread over the area of %0.2f km².", countryObject.name.common, countryObject.name.official, countryObject.subregion!, countryObject.capital!.first!, countryObject.population, countryObject.area)
        self.countryTextView.text = descriptionText
        
    }
}
