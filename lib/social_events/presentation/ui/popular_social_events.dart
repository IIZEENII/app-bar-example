import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_cubit.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_state.dart';
import 'package:socialart/social_events/presentation/ui/social_event_cards.dart';

class PopularSocialEvents extends StatelessWidget {
  const PopularSocialEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialEventCubit, SocialEventState>(
      builder: (context, state) {
        if (state is SocialEventLoading) {
          return const SocialEventCardsLoading();
        }

        if (state is SocialEventLoaded) {
         return SocialEventCards(socialEvents: state.socialEvents);
        }

        if (state is SocialEventError) return Text(state.message);

        context.read<SocialEventCubit>().getPopularSocialEvents();
        return const SocialEventCardsLoading();
      },
    );
  }
}
