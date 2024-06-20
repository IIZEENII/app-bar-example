import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/social_events/domain/social_event.dart';

abstract class SocialEventRepository {
  Future<Either<Failure, void>> create(SocialEvent socialEvent);
  Future<Either<Failure,List<SocialEvent>>> getAll();
}