import 'package:flutter/material.dart';
import 'package:socialart/social_events/domain/social_event.dart';
import 'package:socialart/social_events/presentation/ui/social_event_card.dart';

class SocialEventCards extends StatelessWidget {
  final List<SocialEvent> socialEvents;

  const SocialEventCards({
    super.key,
    required this.socialEvents,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: socialEvents.length,
        itemBuilder: (context, index) => SocialEventCard(
          socialEvent: socialEvents[index],
        ),
      ),
    );
  }
}

class SocialEventCardsLoading extends StatelessWidget {
  const SocialEventCardsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SocialEventCardSkeleton(),
          SocialEventCardSkeleton(),
          SocialEventCardSkeleton(),
          SocialEventCardSkeleton(),
          SocialEventCardSkeleton(),
        ],
      ),
    );
  }
}
