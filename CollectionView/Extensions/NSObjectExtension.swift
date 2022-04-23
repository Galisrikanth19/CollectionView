//
//  NSObjectExtension.swift
//  LearnByResearch
//
//  Created by ELORCE INDUSTRIES PRIVATE LIMITED on 12/01/22.
//

import Foundation

extension NSObject {
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
