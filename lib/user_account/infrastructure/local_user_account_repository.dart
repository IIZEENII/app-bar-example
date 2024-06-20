import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/user_account/domain/user_account.dart';
import 'package:socialart/user_account/domain/user_account_repository.dart';

class LocalUserAccountRepository implements UserAccountRepository {
  final List<UserAccount> _userAccounts = [];

  @override
  Future<Either<Failure, UserAccount>> getAccountInfoById(String id) async {
    await Future.delayed(const Duration(milliseconds: 3));
    return right(_userAccounts.singleWhere((account) => account.id == id));
  }

  @override
  Future<Either<Failure, Unit>> update(UserAccount userAccount) async {
    await Future.delayed(const Duration(milliseconds: 3));
    _userAccounts.add(userAccount);
    return right(unit);
  }
}
