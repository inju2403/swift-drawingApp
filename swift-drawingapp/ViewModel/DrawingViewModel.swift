//
//  DrawingViewModel.swift
//  swift-drawingapp
//
//  Created by joel.inju on 2022/07/04.
//

import Foundation

class DrawingViewModel {
    @Published var rects = [Figure]()
    @Published var drawings = [Figure]()
    @Published var selectedId: UUID?
    @Published var deselectedId: UUID?
    
    private let logic: Logic
    
    init(_ logic: Logic) {
        self.logic = logic
        self.logic.setPresenter(with: self)
    }
    
    func createRect() {
        let rect = logic.createRect()
        rects.append(rect)
    }
    
    func touchRect(_ id: UUID?) {
        logic.changeFocusing(id)
    }
}

// MARK: - Port
extension DrawingViewModel: PresenterPort {
    func setFocusing(_ selectedId: UUID?, _ deselectedId: UUID?) {
        self.selectedId = selectedId
        self.deselectedId = deselectedId
    }
}
