//
//  CustomCollcCell.swift
//  CollectionView
//
//  Created by mac on 03/04/22.
//

import UIKit

class CustomCollcCell: UICollectionViewCell {
   
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var bgViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var bgViewHeightConstraint: NSLayoutConstraint!
    
    func configureCollcCell(WithWidthConstraint _widthIs: CGFloat, WithHeightConstraint _heightIs: CGFloat) {
        self.backgroundColor = .clear
        bgViewWidthConstraint.constant = _widthIs
        bgViewHeightConstraint.constant = _heightIs
    }
    
}
