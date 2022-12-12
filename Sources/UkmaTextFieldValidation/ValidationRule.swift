//
//  ValidationRule.swift
//  UkmaValidationFramework
//
//  Created by Anton Kolesnikov on 12.12.2022.
//

import Foundation

public class ValidationRule {
    var message: String = ""
    var bool: (String) -> Bool
    
    ///Initializer for `ValidationRule` obj
    /// - Parameters:
    ///     - message: A message for error
    public init(message: String, text: @escaping (String) -> Bool) {
        self.message = message
        self.bool = text
    }
}
