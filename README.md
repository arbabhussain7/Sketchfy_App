# Sketchfy_App ✏️🎨

This project focuses on creating an **AI Sketch Generator App** where users can generate sketches based on their requirements or uploaded images. The app provides a seamless experience with options to either watch ads or pay to generate high-quality sketches. Built with Flutter, GetX, and Firebase, this app combines advanced AI functionalities with a smooth user interface.

## Features

### **1. Sketch Generation**
- **Custom Input**: Users can enter specific requirements, and the AI generates a sketch.
- **Image Upload**: Users can upload a picture, and the AI creates a sketch based on the image.

### **2. Monetization Options**
- **Watch Ads**: Users can opt to watch ads to generate a sketch for free.
- **Payment Option**: A premium feature allows users to pay and generate sketches without interruptions.

### **3. User-Friendly Experience**
- **GetX State Management**: Ensures smooth navigation and state handling across the app.
- **Firebase Integration**: Secure backend for user authentication, sketch storage, and payment management.

## Technologies Used

- **Flutter & Dart**: For building the cross-platform application.
- **GetX**: State management for efficient and reactive programming.
- **Firebase**: Backend services for authentication, database, and ad integration.
- **AI Model Integration**: Generates realistic sketches based on input.


## How It Works

1. **User Input**:
   - Enter text requirements or upload an image.
2. **Sketch Generation**:
   - The AI processes the input and creates a sketch.
3. **Monetization**:
   - Watch an ad or proceed with a payment to complete the sketch generation process.

## Getting Started

### Prerequisites

- **Flutter SDK** installed on your system.
- A Firebase project set up and linked to the app.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/ai-sketch-generator.git
   cd ai-sketch-generator
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure Firebase:
   - Add the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) file to the project.

4. Run the app:
   ```bash
   flutter run
   ```

## Code Structure

- **lib/controllers/**: Handles state management using GetX.
- **lib/views/**: Contains UI components and screens.
- **lib/models/**: Defines data structures for user inputs and sketches.
- **lib/services/**: Manages API calls, Firebase integration, and payment processing.

## Future Enhancements

- **Advanced Sketch Customization**: Users can adjust sketch styles and details.
- **Sketch Gallery**: Store and share previously generated sketches.
- **Subscription Plans**: Offer premium features for frequent users.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For queries or contributions, reach out at [arbabhussain414@gmail.com](arbabhussain414@gmail.com).
