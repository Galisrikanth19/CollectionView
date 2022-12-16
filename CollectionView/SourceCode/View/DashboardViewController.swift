//
//  DashboardViewController.swift
//  CollectionView
//
//  Created by Saanvi on 03/04/22.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var collcView: UICollectionView!
    var dataArr:[MockModel] = [MockModel]() {
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
        dataArr = MockData.mockMArr
    }
}

// MARK: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    private func setupCollcView() {
        collcView.backgroundColor = .clear
        collcView.delegate = self
        collcView.dataSource = self
        collcView.setNoDataView(WithErrorStr: "No data found")
        
        collcView.showsHorizontalScrollIndicator = false
        collcView.showsVerticalScrollIndicator = false
        
        if let layout = collcView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumInteritemSpacing = 0
            layout.minimumLineSpacing = 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataArr.count == 0 ? self.collcView.showNoDataView() : self.collcView.hideNoDataView()
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collcCell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollcCell.className, for: indexPath) as! CustomCollcCell
        collcCell.configureCollcCell()
        return collcCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.collcView.bounds.width)/3, height: (self.collcView.bounds.width)/3)
    }
}
