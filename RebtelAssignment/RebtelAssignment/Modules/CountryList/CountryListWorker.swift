//
//  CountryListWorker.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-26.
//

import Foundation
import Alamofire
import UIKit

protocol CountryListWorkerProtocol {
    func fetchCountryList(callBack: @escaping(Result<CountryListEntity.Response, NSError>) -> Void)
}

class CountryListWorker: CountryListWorkerProtocol {
    func fetchCountryList(callBack: @escaping (Result<CountryListEntity.Response, NSError>) -> Void) {
        let params = CountryListEntity.Request()
        AF.request("https://restcountries.com/v3.1/all",
                     method: .get,
                     parameters: params)
                    .validate()
                    .responseJSON { response in
                        switch response.result{
                        case .success:
                           let json = response.data
                            do {
                                let responseObject = CountryListEntity.Response.self
                                let result = try JSONDecoder().decode(responseObject, from: json!)
                                callBack(.success(result))
                            } catch DecodingError.typeMismatch(let type, let context) {
                                print("\(type) was expected, \(context.debugDescription)")
                                print("Type '\(type)' mismatch:", context.debugDescription)
                                print("codingPath:", context.codingPath)
                            } catch DecodingError.valueNotFound(let type, let context) {
                                print("no value was found for \(type), \(context.debugDescription)")
                                print("codingPath:", context.codingPath)
                            } catch let error as NSError {
                               print("Error", error.localizedDescription)
                              callBack(.failure(error))
                            }
                          
                        case .failure(let error):
                            print(error)
                        }
                }
    }
    
}
