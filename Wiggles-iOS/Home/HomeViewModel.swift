//
//  HomeViewModel.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var dogsList = [DogModel]()
    
    init() { fetchDogsList() }
    
    func fetchDogsList() { dogsList = DogData.dogs }
}
