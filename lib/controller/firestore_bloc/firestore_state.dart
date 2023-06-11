part of 'firestore_bloc.dart';

@freezed
class FirestoreState with _$FirestoreState {
  const factory FirestoreState.initialState() = _InitialState;
  const factory FirestoreState.loadingState() = _LoadingState;
  const factory FirestoreState.successState({required List<Tweet> data}) =
      _SuccessState;
  const factory FirestoreState.failedState({required String error}) =
      _FailedState;
}
