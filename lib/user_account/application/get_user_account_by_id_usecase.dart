import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/user_account/domain/user_account.dart';
import 'package:socialart/user_account/domain/user_account_repository.dart';

class GetUserAccountByIdUsecase {
  late final UserAccountRepository _userAccountRepository;

  GetUserAccountByIdUsecase({
    required UserAccountRepository userAccountRepository,
  }) {
    _userAccountRepository = userAccountRepository;
  }

  Future<Either<Failure, UserAccount>> call(String id) async {
    return await _userAccountRepository.getAccountInfoById(id);
  }
}
