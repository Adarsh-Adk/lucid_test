import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../controller/firestore_bloc/firestore_bloc.dart';
import '../../../../model/entities/tweet.dart';
import '../../../components/app_padding.dart';
import '../../../core/app_constants.dart';

class TweetWidget extends StatelessWidget {
  final Tweet tweet;
  final Function onEdit;
  const TweetWidget({
    super.key,
    required this.tweet,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    DateTime dateTime =
        DateTime.fromMicrosecondsSinceEpoch(tweet.id!).toLocal();
    int hour = dateTime.hour % 12;
    hour = hour == 0 ? 12 : hour;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPadding / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: tweet.photoUrl != null
                          ? NetworkImage(tweet.photoUrl!)
                          : null,
                      backgroundColor: Colors.purple,
                      child: tweet.photoUrl == null
                          ? Center(
                              child: Text(
                                (tweet.userName?.length ?? 0) > 1
                                    ? tweet.userName![0]
                                    : tweet.email![0],
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
                const AppPadding(
                  dividedBy: 3,
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const AppPadding(
                        dividedBy: 3,
                      ),
                      Text(
                        "@${tweet.email}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      if (tweet.id != null)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppPadding(
                              dividedBy: 3,
                            ),
                            Text(
                              "$hour:${dateTime.minute} ${dateTime.hour > 12 ? "PM" : "AM"},${dateTime.day}/${dateTime.month}/${dateTime.year}",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer
                                          .withOpacity(0.8)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      const AppPadding(
                        dividedBy: 2,
                      ),
                      Text(
                        tweet.tweet ?? "",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: PopupMenuButton<String>(
              onSelected: (value) => handleClick(context, value: value),
              itemBuilder: (BuildContext context) {
                return {'Edit', 'Delete'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ),
        ],
      ),
    );
  }

  void handleClick(BuildContext context, {required String value}) {
    switch (value) {
      case 'Edit':
        onEdit();
        log("Edit");
        break;
      case 'Delete':
        BlocProvider.of<FirestoreBloc>(context)
            .add(FirestoreEvent.deleteTweet(tweet: tweet));
        log("Delete");
        break;
    }
  }
}
