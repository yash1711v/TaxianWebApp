import 'dart:js_interop';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../routes/navigator.dart';

part 'loading_screen_state.dart';

class LoadingScreenCubit extends Cubit<LoadingScreenState> {
  LoadingScreenCubit() : super(const LoadingScreenInitial());

  Future<void> endLoading() async {
    await Future.delayed(const Duration(seconds: 4));
    emit(const LoadingScreenInitial(isEndLoading: true));
  }
}
