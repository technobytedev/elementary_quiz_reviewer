import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../models/grade_model.dart';
import '../../repositories/grade_repository.dart';

class ReviewDetailPage extends StatefulWidget {
  final String title;
  final int rating;

  const ReviewDetailPage({
    super.key,
    required this.title,
    required this.rating,
  });

  @override
  State<ReviewDetailPage> createState() => _ReviewDetailPageState();
}

class _ReviewDetailPageState extends State<ReviewDetailPage>
    with SingleTickerProviderStateMixin {
  GradeLevel? gradeData;
  TabController? _tabController;
  
  // Store user answers: Map<subjectIndex, Map<questionIndex, selectedAnswer>>
  Map<int, Map<int, String>> userAnswers = {};

  @override
  void initState() {
    super.initState();
    gradeData = GradeRepository.getGradeData(widget.title);
    if (gradeData != null) {
      _tabController = TabController(
        length: gradeData!.curriculum.length,
        vsync: this,
      );
    }
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  void _selectAnswer(int subjectIndex, int questionIndex, String answer) {
    setState(() {
      if (userAnswers[subjectIndex] == null) {
        userAnswers[subjectIndex] = {};
      }
      userAnswers[subjectIndex]![questionIndex] = answer;
    });
  }

  void _finishQuiz() {
    if (gradeData == null) return;

    int currentSubjectIndex = _tabController!.index;
    Subject currentSubject = gradeData!.curriculum[currentSubjectIndex];
    
    // Get user answers for current subject
    Map<int, String> subjectAnswers = userAnswers[currentSubjectIndex] ?? {};
    
    int totalQuestions = currentSubject.questions.length;
    int answeredQuestions = subjectAnswers.length;
    
    // Check if all questions are answered
    if (answeredQuestions < totalQuestions) {
      int unanswered = totalQuestions - answeredQuestions;
      
      // Show warning dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Column(
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  size: 60,
                  color: AppColors.orange,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Incomplete Quiz',
                  style: TextStyle(
                    color: AppColors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'You have not answered all questions yet.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.gray,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle, color: AppColors.purple, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Answered: $answeredQuestions',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.purple,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.radio_button_unchecked, color: AppColors.orange, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Unanswered: $unanswered',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.orange,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Divider(),
                      const SizedBox(height: 8),
                      Text(
                        'Total: $totalQuestions questions',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.gray,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Please answer all questions before finishing the quiz.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.gray,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: AppColors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue Answering',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          );
        },
      );
      return; // Stop here, don't show results
    }
    
    // Calculate score
    int correctCount = 0;
    
    for (int i = 0; i < totalQuestions; i++) {
      String? userAnswer = subjectAnswers[i];
      String correctAnswer = currentSubject.questions[i].correctAnswer;
      
      if (userAnswer == correctAnswer) {
        correctCount++;
      }
    }

    // Show result dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        double percentage = (correctCount / totalQuestions) * 100;
        bool passed = percentage >= 75;
        
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Column(
            children: [
              Icon(
                passed ? Icons.emoji_events : Icons.sentiment_dissatisfied,
                size: 60,
                color: passed ? AppColors.orange : AppColors.gray,
              ),
              const SizedBox(height: 16),
              Text(
                passed ? 'Congratulations!' : 'Keep Practicing!',
                style: TextStyle(
                  color: passed ? AppColors.purple : AppColors.gray,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Subject: ${currentSubject.subjectName}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purple,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.purple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'Your Score',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.gray,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$correctCount / $totalQuestions',
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purple,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${percentage.toStringAsFixed(1)}%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: passed ? AppColors.orange : AppColors.gray,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              if (subjectAnswers.length < totalQuestions)
                Text(
                  'You answered ${subjectAnswers.length} out of $totalQuestions questions',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.gray,
                  ),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Review Answers',
                style: TextStyle(color: AppColors.gray),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Clear answers for current subject
                  userAnswers[currentSubjectIndex] = {};
                });
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Try Again',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      appBar: AppBar(
        backgroundColor: AppColors.gray,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: gradeData != null
            ? TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: AppColors.orange,
                indicatorWeight: 3,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                tabs: gradeData!.curriculum
                    .map((subject) => Tab(text: subject.subjectName))
                    .toList(),
              )
            : null,
      ),
      body: gradeData == null
          ? const Center(
              child: Text(
                'No data available',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          : Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColors.purple,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gradeData!.gradeLevel,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Academic Year: ${gradeData!.academicYear}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: gradeData!.curriculum.asMap().entries.map((entry) {
                      int subjectIndex = entry.key;
                      Subject subject = entry.value;
                      return _buildSubjectContent(subject, subjectIndex);
                    }).toList(),
                  ),
                ),
                // Finish Quiz Button
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    top: false,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _finishQuiz,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Finish Quiz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildSubjectContent(Subject subject, int subjectIndex) {
    return Container(
      color: AppColors.gray,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: subject.questions.length,
        itemBuilder: (context, questionIndex) {
          final question = subject.questions[questionIndex];
          String? selectedAnswer = userAnswers[subjectIndex]?[questionIndex];
          
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Question ${questionIndex + 1}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    if (selectedAnswer != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.purple.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 16,
                              color: AppColors.purple,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Answered',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  question.question,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.purple,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Choose your answer:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray,
                  ),
                ),
                const SizedBox(height: 8),
                ...question.choices.asMap().entries.map((choiceEntry) {
                  final choiceIndex = choiceEntry.key;
                  final choice = choiceEntry.value;
                  final letters = ['A', 'B', 'C', 'D'];
                  final isSelected = selectedAnswer == choice;

                  return GestureDetector(
                    onTap: () {
                      _selectAnswer(subjectIndex, questionIndex, choice);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.purple.withOpacity(0.15)
                            : AppColors.purple.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.purple
                              : AppColors.purple.withOpacity(0.2),
                          width: isSelected ? 2 : 1.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.purple
                                  : AppColors.purple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                letters[choiceIndex],
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : AppColors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              choice,
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColors.gray,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                                height: 1.3,
                              ),
                            ),
                          ),
                          if (isSelected)
                            const Icon(
                              Icons.check_circle,
                              color: AppColors.purple,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}