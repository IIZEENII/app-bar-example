import 'package:flutter/material.dart';
import 'package:socialart/social_events/domain/social_event.dart';

class SocialEventCard extends StatelessWidget {
  final SocialEvent socialEvent;

  const SocialEventCard({super.key, required this.socialEvent});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: theme.colorScheme.secondary,
      child: SizedBox(
        height: 226,
        width: 200,
        child: Column(
          children: [
            _cardImage(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(socialEvent.name),
                  _cardLabel(Icons.calendar_month_outlined),
                  _cardLabel(Icons.local_activity_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardImage() {
    return Image.network(
      socialEvent.imageURL,
      height: 140,
      width: 200,
    );
  }

  Widget _cardLabel(IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
        ),
        const SizedBox(width: 4),
        Text(
          socialEvent.location,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

class SocialEventCardSkeleton extends StatelessWidget {
  const SocialEventCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      color: theme.colorScheme.secondary,
      child: SizedBox(
        height: 226,
        width: 200,
        child: Column(
          children: [
            Container(
              color: theme.colorScheme.surface,
              height: 140,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 18,
                    width: 86,
                    color: theme.colorScheme.surface,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 18,
                    width: 144,
                    color: theme.colorScheme.surface,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 18,
                    width: 184,
                    color: theme.colorScheme.surface,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
