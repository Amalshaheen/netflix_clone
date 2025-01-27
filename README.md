Netflix Clone

A feature-rich Netflix clone developed using Flutter, designed to replicate the core functionalities of Netflix with a modern UI and robust state management using BLoC.


---

🚀 Features

Home Screen: Displays trending, top-rated, and category-based movies and shows.

Downloads Section: Allows users to manage offline downloads.

Fast Laughs: A TikTok-style vertical video feed of short clips.

Search Functionality: Search for movies and shows with real-time suggestions.

Hot & New Section: Shows upcoming movies and trending content.

Dark Mode Support: Seamless viewing experience in different lighting environments.



---

🛠️ Technologies Used

Flutter: Cross-platform mobile application framework.

BLoC: Business Logic Component for state management.

Freezed: Code generation for immutable classes.

REST API Integration: Fetch data dynamically.



---

📁 Directory Structure

amalshaheen-netflix_clone/
├── lib/
│   ├── application/        # State management using BLoC
│   ├── core/               # Reusable constants (colors, fonts, shadows)
│   ├── domain/             # Repository interfaces and models
│   ├── infrastructure/     # Repository implementations
│   └── presentation/       # UI components and screens
├── android/                # Android-specific configurations
├── web/                    # Web app configurations
├── pubspec.yaml            # Dependencies and metadata
└── README.md               # Project documentation


---

📸 Screenshots

1. Home Screen



2. Downloads Section



3. Search Functionality



4. Fast Laughs




---

🔧 Installation and Setup

1. Clone the repository:

git clone https://github.com/amalshaheen/netflix_clone.git
cd netflix_clone


2. Install dependencies:

flutter pub get


3. Run the app:

flutter run


4. To build the app for release:

flutter build apk




---