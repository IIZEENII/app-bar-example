import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/user_account/application/get_user_account_by_id_usecase.dart';
import 'package:socialart/user_account/presentation/blocs/user_account_state.dart';

class UserAccountCubit extends Cubit<UserAccountState> {
  late final GetUserAccountByIdUsecase _getUserAccountByIdUsecase;

  UserAccountCubit(
      {required GetUserAccountByIdUsecase getUserAccountByIdUsecase})
      : super(UserAccountInitial()) {
    _getUserAccountByIdUsecase = getUserAccountByIdUsecase;
  }

  Future<void> getUserAccountById(String id) async {
    emit(UserAccountLoading());
    final either = await _getUserAccountByIdUsecase(id);
    emit(either.fold(
      (failure) => UserAccountError(message: failure.message),
      (userAccount) => UserAccountLoaded(userAccount: userAccount),
    ));
  }
}
