import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/social_events/domain/social_event_repository.dart';
import 'package:socialart/social_events/domain/social_event.dart';

class CreateSocialEventUsecase {
  late SocialEventRepository _socialEventRepository;
  
  CreateSocialEventUsecase(SocialEventRepository socialEventRepository) {
    _socialEventRepository = socialEventRepository;
  }

  Future<Either<Failure, void>> call(SocialEvent socialEvent) async {
    return _socialEventRepository.create(socialEvent);
  }
}