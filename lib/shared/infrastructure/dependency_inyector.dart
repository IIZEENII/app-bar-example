import 'package:get_it/get_it.dart';
import 'package:socialart/social_events/application/create_social_event_usecase.dart';
import 'package:socialart/social_events/application/get_all_social_events_usecase.dart';
import 'package:socialart/social_events/domain/social_event_repository.dart';
import 'package:socialart/social_events/infrastructure/local_social_event_respository.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_cubit.dart';

GetIt locator = GetIt.instance;

init() async {
  locator.registerSingleton<SocialEventRepository>(LocalSocialEventRespository());
  locator.registerSingleton<GetAllSocialEventsUsecase>(GetAllSocialEventsUsecase(locator()));
  locator.registerSingleton<CreateSocialEventUsecase>(CreateSocialEventUsecase(locator()));
  locator.registerSingleton<SocialEventCubit>(SocialEventCubit(
    createSocialEventUsecase: locator(), 
    getAllSocialEventsUsecase: locator()
  ));
}