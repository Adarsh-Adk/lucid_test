import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet.freezed.dart';
part 'tweet.g.dart';

@freezed
class Tweet with _$Tweet {
  const factory Tweet(
      {final int? id,
      final String? tweet,
      final dynamic timestamp,
      final String? userName,
      final String? photoUrl,
      final String? email,
      final String? uid}) = _Tweet;

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);
}
