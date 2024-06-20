import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/social_events/application/create_social_event_usecase.dart';
import 'package:socialart/social_events/application/get_all_social_events_usecase.dart';
import 'package:socialart/social_events/domain/social_event.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_state.dart';

class SocialEventCubit extends Cubit<SocialEventState> {
  late CreateSocialEventUsecase _createSocialEventUsecase;
  late GetAllSocialEventsUsecase _getAllSocialEventsUsecase;

  SocialEventCubit({
    required CreateSocialEventUsecase createSocialEventUsecase,
    required GetAllSocialEventsUsecase getAllSocialEventsUsecase,
  }) : super(SocialEventInitial()) {
    _createSocialEventUsecase = createSocialEventUsecase;
    _getAllSocialEventsUsecase = getAllSocialEventsUsecase;
  }

  Future<void> getAllSocialEvents() async {
    emit(SocialEventLoading());
    final either = await _getAllSocialEventsUsecase();
    emit(either.fold(
      (failure) => SocialEventError(message: failure.message),
      (socialEvents) => SocialEventLoaded(socialEvents: socialEvents),
    ));
  }

  Future<void> getPopularSocialEvents() async {
    emit(SocialEventLoading());
    final either = await _getAllSocialEventsUsecase();
    emit(either.fold(
      (failure) => SocialEventError(message: failure.message),
      (socialEvents) => SocialEventLoaded(socialEvents: socialEvents),
    ));
  }

  Future<void> createSocialEvent(SocialEvent socialEvent) async {
    emit(SocialEventMutationLoading());
    await _createSocialEventUsecase(socialEvent);
  }
}
