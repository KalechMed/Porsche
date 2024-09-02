import SwiftUI

struct MainView: View {
    // MARK: - Variables
    @ObservedObject var carViewModel: CarViewModel
    @State var color: UIColor = .blue
    private var swiftUIColor: Color {
        get { Color(uiColor: color) }
        set { color = UIColor(newValue) }
    }
    // MARK: - View
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("porsche")
                        .font(Porsche.regular.font(size: 22))
                        .padding(.top, 60)
                    Spacer()
                }
                SceneKitView(color: $color)
                    .frame(height: 240)
                CarInfo()
                HStack {
                    WltpSection()
                    TorqueSection()
                }
                CarsSection(carViewModel: carViewModel)
            }
            VStack {
                HStack {
                    Spacer()
                    ColorPicker("", selection: Binding(
                        get: { swiftUIColor },
                        set: { newColor in color = UIColor(newColor) }
                    ))
                    .padding(.trailing, 20)
                }
                Spacer()
            }
            .padding(.top, 80)
            .zIndex(2)
        }
        .edgesIgnoringSafeArea(.all)
        .environmentObject(carViewModel)
    }
}
