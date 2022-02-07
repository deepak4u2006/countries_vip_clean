//
//  CountryListEntity.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-01-25.
//

import Foundation

enum CountryListEntity {
    
     struct Request: Codable {
    }
    
//    struct Response:Codable{
//    }
    
    struct ViewModel {
        var countryList: [CountryElement]?
    }

// MARK: - CountryElement
struct CountryElement: Codable {
    let name: Name
    let tld: [String]?
    let cca2: String
    let ccn3: String?
    let cca3: String
    let cioc: String?
    let independent: Bool?
    let status: Status
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital: [String]?
    let altSpellings: [String]
    let region: Region
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let borders: [String]?
    let area: Double
    let demonyms: Demonyms?
    let flag: String?
    let maps: Maps
    let population: Int
    let gini: [String: Double]?
    let fifa: String?
    let car: Car
    let timezones: [String]
    let continents: [Continent]
    let flags, coatOfArms: CoatOfArms
    let startOfWeek: StartOfWeek
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
}

// MARK: - CapitalInfo
struct CapitalInfo: Codable {
    let latlng: [Double]?
}

// MARK: - Car
struct Car: Codable {
    let signs: [String]?
    let side: Side
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

// MARK: - CoatOfArms
struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

// MARK: - Currencies
struct Currencies: Codable {
    let pgk, eur, mkd, nzd: Aed?
    let cny, lsl, zar, ang: Aed?
    let mxn, htg, thb, usd: Aed?
    let myr, wst, lbp, cuc: Aed?
    let cup, xcd, isk, afn: Aed?
    let ern, inr, pyg, uah: Aed?
    let scr, kyd, dzd, gnf: Aed?
    let zmw, bhd, mmk, etb: Aed?
    let ssp, aud, mwk, jod: Aed?
    let bbd, idr, kgs, xaf: Aed?
    let bam: BAM?
    let czk, fjd, sos, gel: Aed?
    let zwl, sbd, gip, omr: Aed?
    let mru, hkd, cve, pen: Aed?
    let yer, mnt, stn, uzs: Aed?
    let bif, khr, egp, uyu: Aed?
    let gtq, xof, shp, qar: Aed?
    let npr, bob, chf, aed: Aed?
    let cad, gbp, brl, bwp: Aed?
    let krw, sgd, mvr, ghs: Aed?
    let amd, kmf, ils, gyd: Aed?
    let syp, tvd, nok, twd: Aed?
    let ars, cdf, ves, mad: Aed?
    let awg, lak, bzd, bmd: Aed?
    let sdg: BAM?
    let gmd, clp, dkk, lkr: Aed?
    let xpf, ggp, cop, mzn: Aed?
    let lrd, rwf, mur, azn: Aed?
    let vuv, tjs, srd, aoa: Aed?
    let pln, sll, rub, btn: Aed?
    let mdl, imp, pkr, jmd: Aed?
    let ron, iqd, byn, rsd: Aed?
    let nad, mop, kes, ugx: Aed?
    let all, tmt, tnd, sar: Aed?
    let bsd, dop, vnd, irr: Aed?
    let tzs, bdt, jpy, kwd: Aed?
    let hrk, fok, hnl, pab: Aed?
    let fkp, currenciesTRY, crc, lyd: Aed?
    let php, ckd, nio, bgn: Aed?
    let huf, djf, bnd, kzt: Aed?
    let kid, jep, top, mga: Aed?
    let kpw, szl, sek, ngn: Aed?
    let ttd: Aed?

    enum CodingKeys: String, CodingKey {
        case pgk = "PGK"
        case eur = "EUR"
        case mkd = "MKD"
        case nzd = "NZD"
        case cny = "CNY"
        case lsl = "LSL"
        case zar = "ZAR"
        case ang = "ANG"
        case mxn = "MXN"
        case htg = "HTG"
        case thb = "THB"
        case usd = "USD"
        case myr = "MYR"
        case wst = "WST"
        case lbp = "LBP"
        case cuc = "CUC"
        case cup = "CUP"
        case xcd = "XCD"
        case isk = "ISK"
        case afn = "AFN"
        case ern = "ERN"
        case inr = "INR"
        case pyg = "PYG"
        case uah = "UAH"
        case scr = "SCR"
        case kyd = "KYD"
        case dzd = "DZD"
        case gnf = "GNF"
        case zmw = "ZMW"
        case bhd = "BHD"
        case mmk = "MMK"
        case etb = "ETB"
        case ssp = "SSP"
        case aud = "AUD"
        case mwk = "MWK"
        case jod = "JOD"
        case bbd = "BBD"
        case idr = "IDR"
        case kgs = "KGS"
        case xaf = "XAF"
        case bam = "BAM"
        case czk = "CZK"
        case fjd = "FJD"
        case sos = "SOS"
        case gel = "GEL"
        case zwl = "ZWL"
        case sbd = "SBD"
        case gip = "GIP"
        case omr = "OMR"
        case mru = "MRU"
        case hkd = "HKD"
        case cve = "CVE"
        case pen = "PEN"
        case yer = "YER"
        case mnt = "MNT"
        case stn = "STN"
        case uzs = "UZS"
        case bif = "BIF"
        case khr = "KHR"
        case egp = "EGP"
        case uyu = "UYU"
        case gtq = "GTQ"
        case xof = "XOF"
        case shp = "SHP"
        case qar = "QAR"
        case npr = "NPR"
        case bob = "BOB"
        case chf = "CHF"
        case aed = "AED"
        case cad = "CAD"
        case gbp = "GBP"
        case brl = "BRL"
        case bwp = "BWP"
        case krw = "KRW"
        case sgd = "SGD"
        case mvr = "MVR"
        case ghs = "GHS"
        case amd = "AMD"
        case kmf = "KMF"
        case ils = "ILS"
        case gyd = "GYD"
        case syp = "SYP"
        case tvd = "TVD"
        case nok = "NOK"
        case twd = "TWD"
        case ars = "ARS"
        case cdf = "CDF"
        case ves = "VES"
        case mad = "MAD"
        case awg = "AWG"
        case lak = "LAK"
        case bzd = "BZD"
        case bmd = "BMD"
        case sdg = "SDG"
        case gmd = "GMD"
        case clp = "CLP"
        case dkk = "DKK"
        case lkr = "LKR"
        case xpf = "XPF"
        case ggp = "GGP"
        case cop = "COP"
        case mzn = "MZN"
        case lrd = "LRD"
        case rwf = "RWF"
        case mur = "MUR"
        case azn = "AZN"
        case vuv = "VUV"
        case tjs = "TJS"
        case srd = "SRD"
        case aoa = "AOA"
        case pln = "PLN"
        case sll = "SLL"
        case rub = "RUB"
        case btn = "BTN"
        case mdl = "MDL"
        case imp = "IMP"
        case pkr = "PKR"
        case jmd = "JMD"
        case ron = "RON"
        case iqd = "IQD"
        case byn = "BYN"
        case rsd = "RSD"
        case nad = "NAD"
        case mop = "MOP"
        case kes = "KES"
        case ugx = "UGX"
        case all = "ALL"
        case tmt = "TMT"
        case tnd = "TND"
        case sar = "SAR"
        case bsd = "BSD"
        case dop = "DOP"
        case vnd = "VND"
        case irr = "IRR"
        case tzs = "TZS"
        case bdt = "BDT"
        case jpy = "JPY"
        case kwd = "KWD"
        case hrk = "HRK"
        case fok = "FOK"
        case hnl = "HNL"
        case pab = "PAB"
        case fkp = "FKP"
        case currenciesTRY = "TRY"
        case crc = "CRC"
        case lyd = "LYD"
        case php = "PHP"
        case ckd = "CKD"
        case nio = "NIO"
        case bgn = "BGN"
        case huf = "HUF"
        case djf = "DJF"
        case bnd = "BND"
        case kzt = "KZT"
        case kid = "KID"
        case jep = "JEP"
        case top = "TOP"
        case mga = "MGA"
        case kpw = "KPW"
        case szl = "SZL"
        case sek = "SEK"
        case ngn = "NGN"
        case ttd = "TTD"
    }
}

// MARK: - Aed
struct Aed: Codable {
    let name, symbol: String
}

// MARK: - BAM
struct BAM: Codable {
    let name: String
}

// MARK: - Demonyms
struct Demonyms: Codable {
    let eng: Eng
    let fra: Eng?
}

// MARK: - Eng
struct Eng: Codable {
    let f, m: String
}

// MARK: - Idd
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

// MARK: - Maps
struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

// MARK: - Name
struct Name: Codable {
    let common, official: String
    let nativeName: [String: Translation]?
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String
}

// MARK: - PostalCode
struct PostalCode: Codable {
    let format: String
    let regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case sunday = "sunday"
    case turday = "turday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}

typealias Response = [CountryElement]

}
