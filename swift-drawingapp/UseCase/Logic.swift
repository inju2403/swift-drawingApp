//
//  Logic.swift
//  swift-drawingapp
//
//  Created by joel.inju on 2022/07/12.
//

import Foundation

class Logic: CreateFigureUseCase,
             SelectFigureUseCase {
    
    private var presenterPort: PresenterPort?
    private var selectedId: UUID?
    private var deselectedId: UUID?
    
    func createRect() -> Figure {
        let randomPoint = Point()
        let rect = Figure(randomPoint)
        return rect
    }
    
    func setPresenter(with port: PresenterPort?) {
        self.presenterPort = port
    }
    
    func changeFocusing(_ id: UUID?) {
        guard let id = id else { return }

        if selectedId == id {
            deselectedId = id
            selectedId = nil
        } else {
            deselectedId = selectedId
            selectedId = id
        }
        
        presenterPort?.setFocusing(selectedId, deselectedId)
    }
}
