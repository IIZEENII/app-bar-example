import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/social_events/domain/social_event_repository.dart';
import 'package:socialart/social_events/domain/social_event.dart';

class GetAllSocialEventsUsecase {
  late SocialEventRepository _socialEventRepository;

  GetAllSocialEventsUsecase(SocialEventRepository socialEventRepository) {
    _socialEventRepository = socialEventRepository;
  }

  Future<Either<Failure, List<SocialEvent>>> call() async {
    return _socialEventRepository.getAll();
  }
}
