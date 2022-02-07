//
//  CountryDetailRouter.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import Foundation
import UIKit

protocol CountryDetailRoutingLogic {
}

class CountryDetailRouter: NSObject, CountryDetailRoutingLogic, CountryDetailDataPassing {
    var dataStore: CountryDetailDataStore?
}
