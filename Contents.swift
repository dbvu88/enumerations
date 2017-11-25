//: Playground - noun: a place where people can play

import UIKit

enum NameOfEnum {
    case caseOne
    case caseTwo
    case caseThree, caseFour
}

let enumeration: NameOfEnum = .caseOne

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

switch productBarcode {
    case let .upc(numberSystem, manufacturer, productCode, check):
        print("UPC: \(numberSystem), \(manufacturer), \(productCode), \(check)")
    case let .qrCode(productCode):
        print("QR CODE: \(productCode)")
    default:
        print("fail")
}

enum SwitchStatus {
    case off
    case on
}

var lightSwitch : SwitchStatus = .off

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    switch status {
    case .off:
        return .on
    case .on:
        return .off
    }
}

flipSwitch(status: lightSwitch)
lightSwitch = .on
flipSwitch(status: lightSwitch)

enum People: String {
    case jimmy = "Jimmy"
    case jessicaMartin = "Jessica Martin"
}

print(People.jimmy)
print(People.jessicaMartin.rawValue)




