//
//  NSObjectExtension.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
