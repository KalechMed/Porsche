//
//  Coordinator.swift
//  Porsche
//
//  Created by Mohamed  on 30/6/2024.
//

import SceneKit

class Coordinator: NSObject {
    var initialAngle: Float = 0.0
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        guard let sceneView = gesture.view as? SCNView else { return }
        let sceneRootNode = sceneView.scene?.rootNode
        if gesture.state == .began {
            initialAngle = sceneRootNode?.eulerAngles.y ?? 0.0
        } else {
            let translation = gesture.translation(in: sceneView)
            let newX = Float(translation.x) * 0.02
            sceneRootNode?.eulerAngles.y = initialAngle + newX
        }
    }
}
