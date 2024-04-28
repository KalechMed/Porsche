//
//  SceneKitView.swift
//  Porsche
//
//  Created by Mohamed  on 16/3/2024.
//

import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    @Binding var circlePosition: CGPoint
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        let scene = SCNScene()
        if let modelScene = SCNScene(named: "cayman.scn") {
                   for childNode in modelScene.rootNode.childNodes {
                       scene.rootNode.addChildNode(childNode)
                   }
               }
        sceneView.scene = scene
        sceneView.autoenablesDefaultLighting = true
        sceneView.antialiasingMode = .multisampling2X
        sceneView.showsStatistics = false
        sceneView.backgroundColor = UIColor.clear
        sceneView.allowsCameraControl = false
        return sceneView
    }
    func updateUIView(_ uiView: SCNView, context: Context) {
        let newY = Float(circlePosition.x)
        uiView.scene?.rootNode.eulerAngles.y = newY * 0.02
    }
}
