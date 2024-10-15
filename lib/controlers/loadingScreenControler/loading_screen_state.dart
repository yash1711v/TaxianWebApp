part of 'loading_screen_cubit.dart';

sealed class LoadingScreenState extends Equatable {
  const LoadingScreenState();
}

final class LoadingScreenInitial extends LoadingScreenState {
  final bool? isEndLoading;
  const LoadingScreenInitial({this.isEndLoading = false});

  LoadingScreenInitial copyWith({bool? isEndLoading}) {
    return LoadingScreenInitial(isEndLoading: isEndLoading ?? this.isEndLoading);
  }
  @override
  List<Object?> get props => [isEndLoading];
}
