import XCTest
@testable import Porsche
import AVFoundation

final class CarViewModelTests: XCTestCase {
    var viewModel: CarViewModel!
    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = CarViewModel()
    }
    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }
    func testInitializationLoadsCars() {
        let loadedCars = viewModel.cars
        XCTAssertFalse(loadedCars.isEmpty, "Cars should be loaded during initialization.")
    }
    func testInitializationSelectsFirstCar() {
        let firstCar = viewModel.cars.first
        let selectedCar = viewModel.selectedCar
        XCTAssertEqual(selectedCar, firstCar, "The first car should be selected after initialization.")
    }
    func testCarSelectionUpdatesSelectedCar() {
        let torque = [Torque(rpm: 5000, torqueValue: 600)]
        let car = Car(
            modelName: "Porsche 911",
            launchTime: "3.5 sec",
            horsePower: "450 hp",
            topSpeed: "300 km/h",
            co2: "200 g/km",
            consumption: "8 l/100km",
            range: 500,
            torque: torque,
            name: "Test Car",
            engineSound: "testSound"
        )
        viewModel.selectedCar = car
        XCTAssertEqual(viewModel.selectedCar?.name, "Test Car", "The selected car should be updated.")
        XCTAssertEqual(viewModel.selectedCar?.modelName, "Porsche 911", "The model name should be updated.")
    }
}
