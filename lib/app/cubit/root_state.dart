part of 'root_cubit.dart';

class RootState {
  const RootState({
    this.user,
    this.isLoading = false,
    this.isCreatingAccount = false,
    this.errorMessage = '',

  });

  final User? user;
  final bool isLoading;
  final bool isCreatingAccount;
  final String errorMessage;

}
