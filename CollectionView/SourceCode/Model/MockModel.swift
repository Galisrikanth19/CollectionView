//
//  MockModel.swift
//  CollectionView
//
//  Created by Webappclouds on 15/12/22.
//

import Foundation

struct MockModel {
    let title: String?
    let imgName: String?
}

struct MockData {
    static let mockMArr: [MockModel] = [
       MockModel(title: "Srikanth", imgName: "Srikanth"),
       MockModel(title: "Sagarika", imgName: "Sagarika"),
       MockModel(title: "Saanvi", imgName: "Saanvi"),
       MockModel(title: "RaviShaker", imgName: "RaviShaker"),
       MockModel(title: "Sujatha", imgName: "Sujatha"),
       MockModel(title: "Bairaiah", imgName: "Bairaiah")
    ]
}
