//
//  CustomCollcCell.swift
//  CollectionView
//
//  Created by mac on 03/04/22.
//

import UIKit

class CustomCollcCell: UICollectionViewCell {
   
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var widthConstraintBgView: NSLayoutConstraint!
    @IBOutlet weak var heightConstraintbgView: NSLayoutConstraint!
    
    func configureCollcCell(WithWidthConstraint _widthConstant: CGFloat, WithHeightConstraint _heightConstant: CGFloat) {
        self.backgroundColor = .clear
        widthConstraintBgView.constant = _widthConstant
        heightConstraintbgView.constant = _heightConstant
    }
    
}
