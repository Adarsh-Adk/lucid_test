// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tweet _$$_TweetFromJson(Map<String, dynamic> json) => _$_Tweet(
      id: json['id'] as int?,
      tweet: json['tweet'] as String?,
      timestamp: json['timestamp'],
      userName: json['userName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      email: json['email'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$_TweetToJson(_$_Tweet instance) => <String, dynamic>{
      'id': instance.id,
      'tweet': instance.tweet,
      'timestamp': instance.timestamp,
      'userName': instance.userName,
      'photoUrl': instance.photoUrl,
      'email': instance.email,
      'uid': instance.uid,
    };
