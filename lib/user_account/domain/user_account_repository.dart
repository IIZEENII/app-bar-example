import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/user_account/domain/user_account.dart';

abstract class UserAccountRepository {
  Future<Either<Failure, UserAccount>> getAccountInfoById(String id);
  Future<Either<Failure, Unit>> update(UserAccount userAccount);
}