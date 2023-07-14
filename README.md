# WeatherRunWidget
WeatherRunWidget is a widget designed for the iOS system medium widget that provides weather information, real-time date and month, step counting, and distance measurement for running activities.

## Screen Video


## Functionality
The WeatherRunWidget offers the following functionalities:

- Date & Month Display: It shows the current date and month in real-time.
- Weather Information: The widget fetches weather data using a Weather API and displays the weather conditions.
- Step Counting: It counts the user's steps in real-time using HealthKit.
- Distance Measurement: The widget measures the distance covered during a run activity and displays it in kilometers.
- Oxygen Saturation: (Note: This functionality has not been implemented yet and is under development.)


## Technologies and Stacks
The WeatherRunWidget is built using the following technologies and stacks:

- Swift: The programming language used for developing the widget.
- SwiftUI: The user interface framework used for building the widget's UI.
- WidgetKit: The framework provided by Apple for creating home screen widgets.
- HealthKit: A framework that allows access to health and fitness data, used for step counting functionality.
- @AppStorage: A property wrapper in SwiftUI used for storing and retrieving user settings and data.
- Weather API: An external API used to fetch weather information for display in the widget.
- MVVM Architecture: The Model-View-ViewModel architectural pattern used for organizing and separating the code into distinct components.
