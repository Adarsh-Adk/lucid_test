part of 'firestore_bloc.dart';

@freezed
class FirestoreEvent with _$FirestoreEvent {
  const factory FirestoreEvent.subscribe({required String uid}) = _Subscribe;
  const factory FirestoreEvent.dataChanged(
      {required List<Tweet> data, required String? error}) = _DataChanged;
  const factory FirestoreEvent.addEditTweet({required Tweet tweet}) = _AddTweet;
  const factory FirestoreEvent.deleteTweet({required Tweet tweet}) =
      _DeleteTweet;
}
