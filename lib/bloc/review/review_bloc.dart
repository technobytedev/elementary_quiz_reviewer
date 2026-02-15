import 'dart:async';
import './review_event.dart';
import './review_state.dart';

class ReviewBloc {
  final _stateController = StreamController<ReviewState>();
  
  Stream<ReviewState> get state => _stateController.stream;
  
  ReviewState _currentState = ReviewInitialState();
  
  void dispatch(ReviewEvent event) {
    if (event is LoadReviewEvent) {
      _handleLoadReview();
    }
  }
  
  void _handleLoadReview() {
    _currentState = ReviewLoadedState();
    _stateController.add(_currentState);
  }
  
  void dispose() {
    _stateController.close();
  }
}
