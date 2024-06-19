import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    // MARK: - Variables
    @EnvironmentObject var carViewModel: CarViewModel
    @Binding var color: UIColor
    var rotationAngle: Float = -80.0
    
    // MARK: - SCNView
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        sceneView.autoenablesDefaultLighting = true
        sceneView.antialiasingMode = .none
        sceneView.showsStatistics = false
        sceneView.backgroundColor = UIColor.clear
        sceneView.allowsCameraControl = true
        
        let panGesture = UIPanGestureRecognizer(target: context.coordinator,
                                                action: #selector(Coordinator.handlePan(_:)))
        sceneView.addGestureRecognizer(panGesture)
        
        updateScene(for: sceneView, animated: false)
        
        return sceneView
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        uiView.scene?.rootNode.eulerAngles.y = rotationAngle
        updateScene(for: uiView, animated: true)
    }
    
    private func updateScene(for sceneView: SCNView, animated: Bool) {
        guard let model = carViewModel.selectedCar?.modelName,
              let modelScene = SCNScene(named: model + ".scn") else {
            print("Model not found")
            return
        }
        let newModelScene = modelScene
        applyColorToBodyNode(in: newModelScene.rootNode, color: color)
        sceneView.scene?.rootNode.childNodes.forEach { $0.removeFromParentNode() }
        let newModelNode = modelScene.rootNode.clone()
        newModelNode.eulerAngles.y = rotationAngle
        newModelNode.position.x = Float(-CGFloat(sceneView.bounds.width))
        newModelNode.position.z = -200
        let modelContainerNode = SCNNode()
        modelContainerNode.addChildNode(newModelNode)
        if animated {
            let slideInAction = SCNAction.moveBy(x: CGFloat(sceneView.bounds.width), y: 0, z: 0, duration: 1.5)
                slideInAction.timingMode = .easeOut
                sceneView.scene?.rootNode.addChildNode(modelContainerNode)
                modelContainerNode.runAction(slideInAction)
            } else {
                sceneView.scene = SCNScene()
                sceneView.scene?.rootNode.addChildNode(modelContainerNode)
            }
    }
    private func applyColorToBodyNode(in node: SCNNode, color: UIColor) {
        if node.name == "body", let geometry = node.geometry {
            for material in geometry.materials {
                material.diffuse.contents = color
                print("color applyColorToBodyNode: \(color)")
            }
        }
        for childNode in node.childNodes {
            applyColorToBodyNode(in: childNode, color: color)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    class Coordinator: NSObject {
        var initialAngle: Float = 0.0
        @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
            guard let sceneView = gesture.view as? SCNView else { return }
            if gesture.state == .began {
                let currentAngle = sceneView.scene?.rootNode.eulerAngles.y ?? 0.0
                initialAngle = currentAngle
            } else {
                let translation = gesture.translation(in: sceneView)
                let newX = Float(translation.x) * 0.02
                sceneView.scene?.rootNode.eulerAngles.y = initialAngle + newX
            }
        }
    }
}
