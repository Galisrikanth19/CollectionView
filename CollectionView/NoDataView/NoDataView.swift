//
//  NoDataView.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import UIKit

class NoDataView: UIView {
    
    @IBOutlet weak var errorImgV: UIImageView!
    @IBOutlet weak var errorLbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: NoDataView.identifier, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    func updateViewWithData(WithErrorImage errImg: String = "no-data", WithErrorStr _errStr: String) {
        if let _errImg = UIImage.init(named: errImg) {
            errorImgV.image = _errImg
        }
        errorLbl.text = _errStr
    }
    
}
