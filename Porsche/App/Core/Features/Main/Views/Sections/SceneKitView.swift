import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    // MARK: - Variables
    @EnvironmentObject var carViewModel: CarViewModel
    @Binding var color: UIColor
    var rotationAngle: Float = 10
    // MARK: - SCNView
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        configureSceneView(sceneView, context: context)
        updateScene(for: sceneView, animated: false)
        return sceneView
    }
    func updateUIView(_ uiView: SCNView, context: Context) {
        updateScene(for: uiView, animated: true)
    }
    private func configureSceneView(_ sceneView: SCNView, context: Context) {
        sceneView.autoenablesDefaultLighting = true
        sceneView.antialiasingMode = .none
        sceneView.showsStatistics = false
        sceneView.backgroundColor = .clear
        sceneView.allowsCameraControl = false
        let panGesture = UIPanGestureRecognizer(target: context.coordinator, action:
                                                    #selector(Coordinator.handlePan(_:)))
        sceneView.addGestureRecognizer(panGesture)
        sceneView.scene = SCNScene()
    }
    private func updateScene(for sceneView: SCNView, animated: Bool) {
        guard let modelName = carViewModel.selectedCar?.modelName,
              let modelScene = SCNScene(named: modelName + ".scn") else {
            print("Model not found")
            return
        }
        sceneView.scene?.rootNode.childNodes.forEach { $0.removeFromParentNode() }
        let newModelNode = modelScene.rootNode.clone()
        configureModelNode(newModelNode, for: sceneView)
        sceneView.scene?.rootNode.addChildNode(newModelNode)
        if animated {
            animateModelNodeEntrance(newModelNode)
        }
        applyColorToBodyNode(in: newModelNode, color: color)
    }
    private func configureModelNode(_ node: SCNNode, for sceneView: SCNView) {
        node.eulerAngles.y = rotationAngle
        node.position = SCNVector3(Float(-sceneView.bounds.width), 0, 0)
    }
    private func animateModelNodeEntrance(_ node: SCNNode) {
        let moveAction = SCNAction.move(to: SCNVector3(0, 0, 0), duration: 1.5)
        moveAction.timingMode = .easeOut
        node.runAction(moveAction)
    }
    private func applyColorToBodyNode(in node: SCNNode, color: UIColor) {
        if let geometry = node.geometry, node.name == "body" {
            geometry.materials.forEach { $0.diffuse.contents = color }
        }
        node.childNodes.forEach { applyColorToBodyNode(in: $0, color: color) }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}
