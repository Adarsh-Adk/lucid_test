import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucid_test/view/screens/home_screen/widgets/tweet_widget.dart';

import '../../../controller/authentication_bloc/authentication_bloc.dart';
import '../../../controller/firebase_auth_bloc/firebase_auth_bloc.dart';
import '../../../controller/firestore_bloc/firestore_bloc.dart';
import '../../../model/entities/local_user.dart';
import '../../../model/entities/tweet.dart';
import '../../components/app_padding.dart';
import '../../core/app_assets.dart';
import '../../core/app_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocalUser? user;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    user = BlocProvider.of<AuthenticationBloc>(context).user;
    BlocProvider.of<FirestoreBloc>(context)
        .add(FirestoreEvent.subscribe(uid: user!.uid!));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () => onExitButtonPressed(context),
                icon: Icon(
                  Icons.exit_to_app,
                  size: 30,
                  color: Theme.of(context).colorScheme.error,
                )),
          )
        ],
        title: SizedBox.square(
            dimension: 50,
            child: Image.asset(
              AppAssets.blueLogo,
              fit: BoxFit.contain,
            )),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage:
                user?.photoUrl != null ? NetworkImage(user!.photoUrl!) : null,
            backgroundColor: Colors.purple,
            child: user?.photoUrl == null
                ? Center(
                    child: Text(
                      (user?.displayName?.length ?? 0) > 1
                          ? "${user?.displayName![0]}"
                          : user!.email![0],
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  )
                : null,
          ),
        ),
      ),
      body: BlocBuilder<FirestoreBloc, FirestoreState>(
        builder: (context, state) {
          return state.when(initialState: () {
            return const SizedBox(
              height: 300,
              child: Center(child: Text("Waiting for Response")),
            );
          }, loadingState: () {
            return const SizedBox(
              height: 300,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }, successState: (data) {
            if (data.isNotEmpty) {
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return TweetWidget(
                    tweet: data[index],
                    onEdit: () => launchAddEditDialog(context,
                        previousTweet: data[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(AppConstants.defaultPadding),
                    child: Divider(
                      height: 5,
                      color: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.3),
                    ),
                  );
                },
              );
            } else {
              return const SizedBox(
                height: 300,
                child: Center(child: Text("No tweets to Display")),
              );
            }
          }, failedState: (error) {
            return SizedBox(
              height: 300,
              child: Center(child: Text(error)),
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => launchAddEditDialog(context),
          child: const Icon(Icons.add)),
    );
  }

  Future<dynamic> onExitButtonPressed(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.surface,
            shape:
                RoundedRectangleBorder(borderRadius: AppConstants.borderRadius),
            title: Text(
              'Exit ?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Do you really want to exit ?",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const AppPadding(
                  multipliedBy: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel")),
                    ),
                    const AppPadding(),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<FirebaseAuthBloc>(context)
                              .add(const FirebaseAuthEvent.signOut());
                        },
                        child: const Text('Exit'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  void launchAddEditDialog(BuildContext context, {Tweet? previousTweet}) {
    showDialog(
        context: context,
        builder: (context) {
          int remainingCharacters = 280;
          if (previousTweet?.tweet != null) {
            controller.text = previousTweet!.tweet!;
          }
          return StatefulBuilder(builder: (context, rebuild) {
            return AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.surface,
              shape: RoundedRectangleBorder(
                  borderRadius: AppConstants.borderRadius),
              title: Text(
                'Enter Text',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: controller,
                    maxLength: 280,
                    maxLines: 5,
                    onChanged: (value) {
                      rebuild(() {
                        remainingCharacters = 280 - value.length;
                      });
                    },
                    decoration: InputDecoration(
                      counterText: '$remainingCharacters characters remaining',
                      counterStyle: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  const AppPadding(
                    multipliedBy: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                      ),
                      const AppPadding(),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (previousTweet?.timestamp != null) {
                              if (controller.text != "") {
                                final tweet = previousTweet!
                                    .copyWith(tweet: controller.text);
                                BlocProvider.of<FirestoreBloc>(context).add(
                                    FirestoreEvent.addEditTweet(tweet: tweet));
                                controller.clear();
                                Navigator.pop(context);
                              }
                            } else {
                              if (controller.text != "") {
                                final tweet = Tweet(
                                    tweet: controller.text,
                                    id: DateTime.now()
                                        .toUtc()
                                        .microsecondsSinceEpoch,
                                    photoUrl: user?.photoUrl,
                                    uid: user?.uid,
                                    email: user?.email,
                                    userName: user?.displayName);
                                BlocProvider.of<FirestoreBloc>(context).add(
                                    FirestoreEvent.addEditTweet(tweet: tweet));
                                controller.clear();
                                Navigator.pop(context);
                              }
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          });
        }).whenComplete(() => controller.clear());
  }
}
