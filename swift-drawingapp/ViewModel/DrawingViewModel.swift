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
    }
    
    func createRect() {
        let rect = logic.createRect()
        rects.append(rect)
    }
    
    func touchRect(_ id: UUID?) {
        let tuple = logic.touchRect(id)
        selectedId = tuple.selectedId
        deselectedId = tuple.deselectedId
    }
}
