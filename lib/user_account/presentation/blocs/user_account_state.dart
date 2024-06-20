import 'package:socialart/user_account/domain/user_account.dart';

abstract class UserAccountState {}

class UserAccountInitial extends UserAccountState {}

class UserAccountLoading extends UserAccountState {}

class UserAccountLoaded extends UserAccountState {
  final UserAccount userAccount;
  UserAccountLoaded({required this.userAccount});
}

class UserAccountError extends UserAccountState {
  final String message;
  UserAccountError({required this.message});
}
