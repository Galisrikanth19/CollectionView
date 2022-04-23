//
//  UICollectionViewExtension.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func setNoDataView(WithErrorImage errImg: String = "no-data", WithErrorStr errStr: String) {
        let bgView = UIView()
        bgView.frame = CGRect(x: 0, y: 0, width: (self.bounds.size.width), height: (self.bounds.size.height))
        bgView.backgroundColor = .clear
        self.backgroundView = bgView
        
        let noDataView: NoDataView = NoDataView()
        noDataView.frame = CGRect(x: 20, y: 20, width: (bgView.frame.size.width) - 64, height: (bgView.frame.size.height) - 94)
        bgView.addSubview(noDataView)
        
        noDataView.updateViewWithData(WithErrorImage: errImg, WithErrorStr: errStr)
        self.backgroundView?.isHidden = true
    }
    
    func showNoDataView() {
        if let view = self.backgroundView {
            view.isHidden = false
        }
    }
    
    func hideNoDataView() {
        if let view = self.backgroundView {
            view.isHidden = true
        }
    }
    
}
