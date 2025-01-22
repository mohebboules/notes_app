import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("Changed = $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("Closed = $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("Created = $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
