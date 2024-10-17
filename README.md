[![swift-version](https://img.shields.io/badge/swift-5.9-brightgreen.svg)](https://github.com/apple/swift)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Porsche Showcase iOS App

This Porsche app was built using **Swift**, **SwiftUI**, and **SceneKit** to display Porsche car models with interactive 3D features. It follows the **MVVM** (Model-View-ViewModel) architecture, promoting a clean separation of concerns for better maintainability. The app delivers detailed car information and enhances the user experience with pan gestures and authentic engine sound effects.


### Specifications

- Minimum target of iOS 17.
- 3D interaction with **SceneKit** for an immersive experience.
- Realistic Porsche engine sound effects using **AVFoundation**.
- Ability to customize the color of the car.
- Supports dark mode only.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [License](#license)

## Prerequisites

- [Swift 5.9](https://developer.apple.com/support/xcode/)
- [Xcode 15 or higher](https://developer.apple.com/documentation/xcode-release-notes/xcode-15-release-notes)

## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/KalechMed/Porsche.git
   ```
2. **Open in Xcode:**:
   ```sh
   cd Porsche
   open Porsche.xcodeproj
   ```
3. **Run the project**:

Select your target device or simulator and press `Cmd + R` to build and run.

4. **Install SwiftLint (optional)**:
   ```sh
   brew install swiftlint
    ```
## Project Structure

The project is organized into a clean architecture that separates concerns and enhances maintainability. It follows the MVVM (Model-View-ViewModel) pattern, ensuring a clear distinction between the user interface and the business logic. Below is an overview of the project's directory structure:

```
PorscheShowcaseApp/
├── App/
│   ├── Core/
│   │   ├── Common/
│   │   │   ├── Utils/
│   │   │   ├── Extensions/
│   │   │   └── Controllers/
│   │   └── Features/
│   │       ├── Models/
│   │       ├── View/
│   │       │   ├── Components/
│   │       │   ├── Sections/
│   │       │   └── MainView/
│   │       └── ViewModels/
│   └── Resources/
│       ├── Fonts/
│       ├── 3D Models/
│       └── Sound Effects/
```

## Screenshots

<div style="text-align: center;">
  <img src="./demo.gif" alt="App GIF" width="300"/>
  <p><em>This is a GIF demonstrating the app's interactive features.</em></p>
</div>





## Future Enhancements

- **Augmented Reality (AR)**: Plan to integrate ARKit to allow users to visualize Porsche cars in their real-world environment.

## License

```
MIT License

© 2024 medkalech

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```

## Contact

For any inquiries, suggestions, or feedback, feel free to reach out:

- **Email**: [medkalech@gmail.com](mailto:medkalech@gmail.com)
- **LinkedIn**: [linkedin.com/in/medkalech](https://www.linkedin.com/in/medkalech)
- **Portfolio**: [medkalech.netlify.app/](https://medkalech.netlify.app/)

Feel free to reach out for collaborations, job opportunities, or any questions!


