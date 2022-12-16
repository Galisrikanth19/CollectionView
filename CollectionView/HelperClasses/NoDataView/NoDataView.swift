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
        let nib = UINib(nibName: NoDataView.className, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    func updateViewWithData(WithErrorImage errImg: String?, WithErrorStr _errStr: String) {
        errorImgV.isHidden = true
        if let _errImg = errImg, let _img = UIImage.init(named: _errImg) {
            errorImgV.image = _img
            errorImgV.isHidden = false
        }
        errorLbl.text = _errStr
    }
}
