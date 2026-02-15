# 📚 Elementary Quiz Reviewer

A Flutter mobile application designed to help Filipino elementary students (Grade 1-6) review and practice questions across multiple subjects aligned with the DepED curriculum.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

## 🎯 Features

- **Grade-Level Organization**: Questions organized by grade levels (Grade 1 to Grade 6)
- **Multiple Subjects**: Coverage of key subjects including:
  - Language (Filipino)
  - Reading and Literacy
  - Mathematics
  - Makabansa (Social Studies)
  - GMRC (Good Manners and Right Conduct)
- **Subject Tabs**: Easy navigation between subjects using tab-based interface
- **Practice Mode**: Review questions with multiple-choice answers
- **Clean UI**: User-friendly interface designed for young learners
- **BLoC Pattern**: Well-structured code following Flutter best practices

## 📱 Screenshots

_(Add your app screenshots here)_

## 🏗️ Architecture

This project implements the **BLoC (Business Logic Component)** pattern for state management, ensuring a clear separation of concerns and maintainable code.

```
lib/
├── bloc/                    # Business Logic Components
│   ├── home/
│   │   ├── home_bloc.dart
│   │   ├── home_event.dart
│   │   └── home_state.dart
│   └── review/
│       ├── review_bloc.dart
│       ├── review_event.dart
│       └── review_state.dart
├── models/                  # Data models
│   └── grade_model.dart
├── repositories/            # Data repositories
│   └── grade_repository.dart
├── screens/                 # UI screens
│   ├── home/
│   │   └── home_page.dart
│   ├── review/
│   │   ├── review_page.dart
│   │   └── review_detail_page.dart
│   └── main_navigation.dart
├── utils/                   # Utilities and constants
│   └── app_colors.dart
└── main.dart               # App entry point
```

## 🎨 Color Palette

- **Purple**: `#6E3FA9` - Primary color (headers, buttons)
- **Orange**: `#F57C00` - Accent color (CTAs, highlights)
- **Gray**: `#6B7280` - Secondary color (text, backgrounds)

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/technobytedev/elementary_quiz_reviewer.git
   cd elementary-quiz-reviewer
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📖 Usage

1. **Home Screen**: View the app introduction and features
2. **Reviews Tab**: Browse available grade levels
3. **Select a Grade**: Tap on any grade (1-6) to view subjects
4. **Choose a Subject**: Use tabs to switch between different subjects
5. **Practice**: Review questions and test your knowledge

## 🔧 Configuration

### Adding New Questions

To add new questions, edit the `lib/repositories/grade_repository.dart` file:

```dart
'Grade 1': {
  "grade_level": "Grade 1",
  "academic_year": "2025-2026",
  "curriculum": [
    {
      "subject_name": "Your Subject",
      "questions": [
        {
          "question": "Your question here?",
          "choices": ["Option A", "Option B", "Option C", "Option D"],
          "correct_answer": "Option A"
        }
      ]
    }
  ]
}
```

## 🛠️ Built With

- **[Flutter](https://flutter.dev/)** - UI framework
- **[Dart](https://dart.dev/)** - Programming language
- **BLoC Pattern** - State management

## 📋 Roadmap

- [ ] Add answer checking functionality
- [ ] Implement scoring system
- [ ] Add progress tracking
- [ ] Include more questions for all grade levels
- [ ] Add timer for timed quizzes
- [ ] Implement user profiles
- [ ] Add offline support
- [ ] Include images for visual questions
- [ ] Add audio support for listening comprehension

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Cedric Isubol** - *Initial work* - technobytedev(https://github.com/technobytedev)

## 🙏 Acknowledgments

- DepED for the curriculum guidelines
- Flutter community for excellent documentation
- All contributors who help improve this project

## 📞 Contact

Your Name - [@yourtwitter](https://twitter.com/yourtwitter) - your.email@example.com

Project Link: [https://github.com/technobytedev/elementary_quiz_reviewer](https://github.com/technobytedev/elementary_quiz_reviewer)
---

⭐ If you find this project helpful, please give it a star!