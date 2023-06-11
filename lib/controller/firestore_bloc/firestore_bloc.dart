import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/entities/tweet.dart';
import '../../model/repositories/firebase_cloud_firestore_repo.dart';

part 'firestore_bloc.freezed.dart';
part 'firestore_event.dart';
part 'firestore_state.dart';

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreBloc() : super(const FirestoreState.initialState()) {
    final firestoreRepo = FirebaseCloudFirestoreRepo();
    on<FirestoreEvent>((event, emit) async {
      await event.when(subscribe: (uid) async {
        try {
          firestoreRepo.documentStream(uid: uid).listen((querySnap) {
            log("querysnap  ${querySnap.docs.length}");
            List<Tweet> tweetList = querySnap.docs
                .map((document) =>
                    Tweet.fromJson(document.data() as Map<String, dynamic>))
                .toList();
            add(FirestoreEvent.dataChanged(data: tweetList, error: null));
          });
        } catch (e) {
          add(const FirestoreEvent.dataChanged(
              data: [], error: "Exception occurred while fetching tweets"));
        }
      }, addEditTweet: (tweet) async {
        await firestoreRepo.addEditTweet(tweet: tweet);
      }, deleteTweet: (tweet) async {
        await firestoreRepo.deleteTweet(tweet: tweet);
      }, dataChanged: (List<Tweet> data, error) {
        if (error == null) {
          emit(FirestoreState.successState(data: data));
        } else {
          emit(FirestoreState.failedState(error: error));
        }
      });
    });
  }
}
