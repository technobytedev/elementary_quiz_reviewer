import 'dart:async';
import './home_event.dart';
import './home_state.dart';

class HomeBloc {
  final _stateController = StreamController<HomeState>();
  
  Stream<HomeState> get state => _stateController.stream;
  
  HomeState _currentState = HomeInitialState();
  
  void dispatch(HomeEvent event) {
    if (event is LoadHomeEvent) {
      _handleLoadHome();
    }
  }
  
  void _handleLoadHome() {
    _currentState = HomeLoadedState();
    _stateController.add(_currentState);
  }
  
  void dispose() {
    _stateController.close();
  }
}
