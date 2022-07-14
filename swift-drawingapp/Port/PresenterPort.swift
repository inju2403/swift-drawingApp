//
//  PresenterPort.swift
//  swift-drawingapp
//
//  Created by joel.inju on 2022/07/11.
//

import Foundation

protocol PresenterPort {
    func setFocusing(_ selectedId: UUID?, _ deselectedId: UUID?)
}
