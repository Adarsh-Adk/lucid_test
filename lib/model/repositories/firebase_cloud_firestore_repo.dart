import 'package:cloud_firestore/cloud_firestore.dart';

import '../entities/tweet.dart';

class FirebaseCloudFirestoreRepo {
  static final _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> documentStream({required String uid}) =>
      _db.collection(uid).orderBy("timestamp", descending: true).snapshots();

  Future<void> addEditTweet({required Tweet tweet}) =>
      _db.collection(tweet.uid!).doc(tweet.id.toString()).set(
          tweet.copyWith(timestamp: Timestamp.now()).toJson(),
          SetOptions(merge: true));

  Future<void> deleteTweet({required Tweet tweet}) =>
      _db.collection(tweet.uid!).doc(tweet.id.toString()).delete();
}
