class Question {
  final String question;
  final List<String> choices;
  final String correctAnswer;

  Question({
    required this.question,
    required this.choices,
    required this.correctAnswer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'],
      choices: List<String>.from(json['choices']),
      correctAnswer: json['correct_answer'],
    );
  }
}

class Subject {
  final String subjectName;
  final List<Question> questions;

  Subject({
    required this.subjectName,
    required this.questions,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      subjectName: json['subject_name'],
      questions: (json['questions'] as List)
          .map((q) => Question.fromJson(q))
          .toList(),
    );
  }
}

class GradeLevel {
  final String gradeLevel;
  final String academicYear;
  final List<Subject> curriculum;

  GradeLevel({
    required this.gradeLevel,
    required this.academicYear,
    required this.curriculum,
  });

  factory GradeLevel.fromJson(Map<String, dynamic> json) {
    return GradeLevel(
      gradeLevel: json['grade_level'],
      academicYear: json['academic_year'],
      curriculum: (json['curriculum'] as List)
          .map((s) => Subject.fromJson(s))
          .toList(),
    );
  }
}
