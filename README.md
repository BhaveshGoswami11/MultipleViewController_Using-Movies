# 🎬 Goswami Movie App

![Swift](https://img.shields.io/badge/Swift-5.0-orange?logo=swift)
![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey?logo=apple)
![UIKit](https://img.shields.io/badge/Framework-UIKit-blue)
![Xcode](https://img.shields.io/badge/IDE-Xcode%2016+-informational?logo=xcode)

An elegant iOS movie browsing app built with **Swift** and **UIKit**, allowing users to explore movies by genre and view movie details with smooth animations and a clean interface.

---

## 📱 Overview

The **Goswami Movie App** provides an intuitive and dynamic interface for exploring movies in different genres — **Action**, **Horror**, and **Drama**.  
Users can:
- 🎭 Select a genre to view its movies  
- 🎥 Tap a movie to see detailed info  
- ✨ Reveal the description using a smooth fade-in animation  

---

## 🧩 Features

| Feature | Description |
|----------|-------------|
| 🎬 **Genre-based list** | Browse movies by categories like Action, Horror, Drama |
| 📜 **Movie details** | View title, image, and description of each movie |
| 🧭 **Navigation Controller** | Smooth transitions using segues and back buttons |
| 🎨 **UI/UX** | Simple, modern design with rounded images and animations |
| 📂 **Local Data Model** | No API calls — uses static Swift structs |

---

## 🧱 Project Structure

Goswami_MovieApp/
│
├── Controllers/
│ ├── GoswamiMoviesViewController.swift # Displays all genres
│ ├── MovieListViewController.swift # Lists movies by selected genre
│ └── MovieInfoViewController.swift # Shows movie info and image
│
├── Models/
│ └── Movies.swift # Data models & local provider
│
├── Assets.xcassets/ # Contains all movie images
│
└── Main.storyboard # UI & navigation setup

yaml
Copy code

---

## 🖼️ App Preview

| Genres Screen | Movie List | Movie Info |
|----------------|-------------|-------------|
| ![Genres Screen](https://github.com/BhaveshGoswami11/MultipleViewController_Using-Movies/blob/main/Sneak%20Peek%20Of%20Working%20App/Genre%20Screen.png?raw=true) | ![Movie List](https://github.com/BhaveshGoswami11/MultipleViewController_Using-Movies/blob/main/Sneak%20Peek%20Of%20Working%20App/Movies%20Screen.png?raw=true) | ![Movie Info](https://github.com/BhaveshGoswami11/MultipleViewController_Using-Movies/blob/main/Sneak%20Peek%20Of%20Working%20App/Movie%20Detail%20Screen.png?raw=true) |


---

## 🧠 Data Model

The movie data is structured using lightweight Swift structs:

```swift
struct MovieList {
    var movieName: String
    var movieImage: String
    var movieInfo: String
}

struct Movies {
    var genre: String
    var list_Array: [MovieList]
}
All movie data is provided locally by:

swift
Copy code
MovieDataProvider.allGenres()
🛠️ Technologies Used
🧠 Swift 5

🎨 UIKit

🧭 Storyboard Navigation

🪄 UIView Animations

🧰 UITableView + UIImageView

🚀 How to Run
Clone the repository:

bash
Copy code
git clone https://github.com/BhaveshGoswami11/Goswami_MovieApp.git
Open in Xcode:

bash
Copy code
open Goswami_MovieApp.xcodeproj
Run the app on iPhone Simulator or your iOS device (iOS 16+).

🌱 Future Enhancements
🔗 Integrate external movie API (e.g., TMDB or IMDb)

🔍 Add search & filter capabilities

🎞️ Include trailers or ratings

🌙 Add dark mode support

💾 Implement Core Data for favorites

👨‍💻 Author
Bhavesh Goswami
🎓 Graduate Student, Northwest Missouri State University
💼 iOS & Full Stack Developer


🏷️ License
This project is open source and available under the MIT License.
