//
//  UICollectionViewExtension.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import UIKit

extension UICollectionView {
    func setNoDataView(WithErrorImage errImg: String? = nil, WithErrorStr errStr: String) {
        let noDataView = NoDataView()
        noDataView.frame = self.backgroundView?.frame ?? .zero
        self.backgroundView = noDataView
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
