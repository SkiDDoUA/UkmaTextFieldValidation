//
//  UkmaValidation.swift
//  UkmaValidationFramework
//
//  Created by Anton Kolesnikov on 08.12.2022.
//

import Foundation
import UIKit
///TextField validation
public class UkmaValidation: UITextField {
    public var rules = [ValidationRule]()
    
    public static var notEmptyRule = ValidationRule(message: "The field mustn't be empty") { text in
        return !text.isEmpty
    }
    
    public static var noSpacesRule = ValidationRule(message: "The field mustn't contain spaces") { text in
        return !text.contains(" ")
    }
    
    public static var onlyNumbersRule = ValidationRule(message: "The field must contain only numbers") { text in
        guard CharacterSet(charactersIn: "123456789").isSuperset(of: CharacterSet(charactersIn: text)) else {
            return false
        }
        return true
    }
    
    public static var onlyLettersRule = ValidationRule(message: "The field must contain only letters") { text in
        guard CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ").isSuperset(of: CharacterSet(charactersIn: text)) else {
            return false
        }
        return true
    }
    
    public func validate() {
        for rule in rules {
            print(rule.message)
        }
    }
}
