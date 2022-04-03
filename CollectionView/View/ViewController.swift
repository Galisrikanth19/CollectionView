//
//  ViewController.swift
//  CollectionView
//
//  Created by mac on 03/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collcView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollcView()
    }
    
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
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCollcCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollcCell", for: indexPath) as! CustomCollcCell
        customCollcCell.configureCollcCell(WithWidthConstraint: self.view.bounds.width/2 - 10, WithHeightConstraint: self.view.bounds.width/2 - 10)
        return customCollcCell
    }
    
}
