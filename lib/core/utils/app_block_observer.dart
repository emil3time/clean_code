// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlockObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // print(change.toString());
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    print('');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('');
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    print(bloc);
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    print(bloc);
    super.onCreate(bloc);
  }
}
