//
//  DogModel.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import Foundation

struct DogModel: Identifiable {
    var id: Int
    var name: String
    var age: Int
    var gender: String
    var color: String
    var weight: Double
    var location: String
    var image: String
    var about: String
    var owner: OwnerModel
}
