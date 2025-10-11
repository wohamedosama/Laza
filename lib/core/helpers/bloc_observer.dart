// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('════════════════════════════════════════');
    print('🟢 onCreate -- ${bloc.runtimeType}');
    print('════════════════════════════════════════');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('════════════════════════════════════════');
    print('🔵 onChange -- ${bloc.runtimeType}');
    print('────────────────────────────────────────');
    print('Current State: ${change.currentState}');
    print('────────────────────────────────────────');
    print('Next State: ${change.nextState}');
    print('════════════════════════════════════════');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('════════════════════════════════════════');
    print('🔴 onError -- ${bloc.runtimeType}');
    print('Error: $error');
    print('StackTrace: $stackTrace');
    print('════════════════════════════════════════');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('════════════════════════════════════════');
    print('🟡 onClose -- ${bloc.runtimeType}');
    print('════════════════════════════════════════');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('════════════════════════════════════════');
    print('🟣 onTransition -- ${bloc.runtimeType}');
    print('────────────────────────────────────────');
    print('Event: ${transition.event}');
    print('────────────────────────────────────────');
    print('Current State: ${transition.currentState}');
    print('────────────────────────────────────────');
    print('Next State: ${transition.nextState}');
    print('════════════════════════════════════════');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('════════════════════════════════════════');
    print('🟠 onEvent -- ${bloc.runtimeType}');
    print('Event: $event');
    print('════════════════════════════════════════');
  }
}
