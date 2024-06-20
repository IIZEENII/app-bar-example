import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_cubit.dart';
import 'package:socialart/social_events/presentation/ui/popular_social_events.dart';
import 'package:socialart/social_events/presentation/ui/social_events_near_you.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SocialEventCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SocialArt',
            style: TextStyle(color: Colors.white),
          ),
          scrolledUnderElevation: scrolledUnderElevation,
          shadowColor:
              shadowColor ? Theme.of(context).colorScheme.shadow : null,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                Text('Near You'),
                SocialEventsNearYou(),
                Text('Popular Now'),
                PopularSocialEvents(),
                Text('Recently viewed'),
                PopularSocialEvents(),
                Text('Bookmarks'),
                PopularSocialEvents(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
