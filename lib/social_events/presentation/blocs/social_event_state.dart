import 'package:socialart/social_events/domain/social_event.dart';

abstract class SocialEventState {}

class SocialEventInitial extends SocialEventState {}

class SocialEventMutationLoading extends SocialEventState {}

class SocialEventLoading extends SocialEventState {}

class SocialEventLoaded extends SocialEventState {
  final List<SocialEvent> socialEvents;
  SocialEventLoaded({required this.socialEvents});
}

class SocialEventError extends SocialEventState {
  final String message;
  SocialEventError({required this.message});
}