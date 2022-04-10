//
//  ViewController.swift
//  CollectionView
//
//  Created by mac on 03/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collcView: UICollectionView!
    var dataArr:[String] = [String]() {
        didSet {
            self.collcView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArr = ["Srikanth", "Saanvi", "Sagarika", "RaviShekar", "Sujatha", "Bairaiah"]
        setupCollcView()
    }
    
}

// MARK: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private func setupCollcView() {
        collcView.backgroundColor = .clear
        collcView.delegate = self
        collcView.dataSource = self
        
        collcView.showsHorizontalScrollIndicator = false
        collcView.showsVerticalScrollIndicator = false
        
        if let layout = collcView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumInteritemSpacing = 0;
            layout.minimumLineSpacing = 0;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCollcCell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollcCell.identifier, for: indexPath) as! CustomCollcCell
        customCollcCell.configureCollcCell(WithWidthConstraint: self.view.bounds.width/2 - 10, WithHeightConstraint: self.view.bounds.width/2 - 10)
        return customCollcCell
    }
    
}
