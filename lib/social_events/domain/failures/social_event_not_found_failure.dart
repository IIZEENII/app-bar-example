import 'package:socialart/shared/domain/failures/failure.dart';

class SocialEventNotFoundFailure extends Failure {
  SocialEventNotFoundFailure() : super(message: 'events not found');
}
