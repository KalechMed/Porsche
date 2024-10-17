[![swift-version](https://img.shields.io/badge/swift-5.9-brightgreen.svg)](https://github.com/apple/swift)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/yourusername/porsche-showcase-app/ios-build.yml)

# Porsche Showcase iOS App

This Porsche showcase app was built using **Swift**, **SwiftUI**, and **SceneKit** to display Porsche car models with interactive 3D features. The app delivers detailed car information and enhances the user experience with pan gestures and authentic engine sound effects.

### Specifications

- Minimum target of iOS 17.
- 3D interaction with **SceneKit** for an immersive experience.
- Realistic Porsche engine sound effects using **AVFoundation**.
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
- [SceneKit Framework](https://developer.apple.com/documentation/scenekit)
- [SwiftLint](https://github.com/realm/SwiftLint) for code linting

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
``
## Project Structure

| Directory      | Description                                                                 |
| -------------- | --------------------------------------------------------------------------- |
| **Scenes/**    | Contains the UI views, such as 3D car display, information panels, and interactions. |
| **Models/**    | Data models representing Porsche cars and their details.                    |
| **Services/**  | Services such as sound management, data fetching, or user interactions for gestures. |
| **Resources/** | Contains assets like 3D models, sound files for engine effects, and localizations. |
| **Utilities/** | Utility functions, extensions, and reusable components.                    |

## Screenshots

![App Screenshot 1](path_to_screenshot_1.png)
![App Screenshot 2](path_to_screenshot_2.png)

## Future Enhancements

- **Augmented Reality (AR)**: Plan to integrate ARKit to allow users to visualize Porsche cars in their real-world environment.
- **More Models**: Expand the collection of Porsche models available in the showcase.

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
- **LinkedIn**: [Your LinkedIn Profile](https://www.linkedin.com/in/medkalech)
- **GitHub**: [Your GitHub Profile](https://github.com/medkalech)

Feel free to reach out for collaborations, job opportunities, or any questions!


