import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../bloc/review/review_bloc.dart';
import '../../bloc/review/review_event.dart';
import 'review_detail_page.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final ReviewBloc _reviewBloc = ReviewBloc();

  // Sample review data
  final List<Map<String, dynamic>> reviews = [
    {'title': 'Grade 1', 'rating': 5},
    {'title': 'Grade 2', 'rating': 4},
    {'title': 'Grade 3', 'rating': 4},
    {'title': 'Grade 4', 'rating': 5},
    {'title': 'Grade 5', 'rating': 5},
    {'title': 'Grade 6', 'rating': 4}
  ];

  @override
  void initState() {
    super.initState();
    _reviewBloc.dispatch(LoadReviewEvent());
  }

  @override
  void dispose() {
    _reviewBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      appBar: AppBar(
        backgroundColor: AppColors.gray,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Quiz Reviewer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'List of Elementary Reviewers',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
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
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.purple.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.star,
                          color: AppColors.orange,
                          size: 28,
                        ),
                      ),
                      title: Text(
                        reviews[index]['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.purple,
                        ),
                      ),
                      // subtitle: Row(
                      //   children: [
                      //     ...List.generate(
                      //       reviews[index]['rating'],
                      //       (starIndex) => const Icon(
                      //         Icons.star,
                      //         color: AppColors.orange,
                      //         size: 16,
                      //       ),
                      //     ),
                      //     ...List.generate(
                      //       (5 - reviews[index]['rating']).toInt(),
                      //       (starIndex) => const Icon(
                      //         Icons.star_border,
                      //         color: AppColors.orange,
                      //         size: 16,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.gray,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewDetailPage(
                              title: reviews[index]['title'],
                              rating: reviews[index]['rating'],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}