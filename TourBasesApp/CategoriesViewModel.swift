//
//  CategoriesViewModel.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 05.05.2023.
//

import Foundation
import Combine

class CategoriesViewModel: ObservableObject {
    private let networkService = NetworkService()
    private let urlString = "https://rsttur.ru/api/base-app/map"
    
    private var responseSubject = PassthroughSubject<BasesDataModel, Never>()
    
    @Published var response: BasesDataModel?
    
    private var commonCancellables = Set<AnyCancellable>()
    
    init() {
        responseSubject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] response in
                guard let self = self else { return }
                self.response = response
            }
            .store(in: &commonCancellables)
    }
    
    func fetchBasesData() async {
        if let data: BasesDataModel = await networkService.fetchData(urlString: urlString) {
            self.responseSubject.send(data)
        }
    }
}

