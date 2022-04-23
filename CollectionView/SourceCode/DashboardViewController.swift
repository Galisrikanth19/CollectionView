//
//  DashboardViewController.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var collcView: UICollectionView!
    var dataArr:[String] = [String]() {
        didSet {
            self.collcView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        setupCollcView()
        updateViewWithData()
    }
    
    private func updateViewWithData() {
        dataArr = ["Srikanth", "Sagarika", "Saanvi", "RaviShekar", "Sujatha", "Bairaiah"]
    }
    
}

// MARK: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private func setupCollcView() {
        collcView.backgroundColor = .clear
        collcView.delegate = self
        collcView.dataSource = self
        self.collcView.setNoDataView(WithErrorStr: "No data found")
        
        collcView.showsHorizontalScrollIndicator = false
        collcView.showsVerticalScrollIndicator = false
        
        if let layout = collcView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumInteritemSpacing = 0;
            layout.minimumLineSpacing = 0;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataArr.count == 0 ? self.collcView.showNoDataView() : self.collcView.hideNoDataView()
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collcCell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollcCell.identifier, for: indexPath) as! CustomCollcCell
        collcCell.configureCollcCell(WithWidthConstraint: self.collcView.bounds.width/2 - 10, WithHeightConstraint: self.collcView.bounds.width/2 - 10)
        return collcCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collcView.bounds.width/2, height: self.collcView.bounds.width/2)
    }
    
}
