import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food/repositories/login_repository.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit(this._loginRepository) : super(const RootState());

  final LoginRepository _loginRepository;

  Future<void> register(
      {required String email, required String password}) async {
    try {
      await _loginRepository.register(email: email, password: password);
    } catch (error) {
      emit(
        RootState(user: null, errorMessage: error.toString()),
      );
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _loginRepository.signIn(email: email, password: password);
    } catch (error) {
      emit(
        RootState(user: null, errorMessage: error.toString()),
      );
    }
  }

  Future<void> signOut() async {
    _loginRepository.signOut();
  }

  Future<void> creatingAccount(
      {required String email, required String password}) async {
    emit(
      const RootState(
        user: null,
        isLoading: true,
        isCreatingAccount: true,
      ),
    );
  }

  Future<void> notCreatingAccount() async {
    emit(
      const RootState(
        user: null,
        isLoading: true,
        isCreatingAccount: false,
      ),
    );
  }

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const RootState(
        user: null,
        isLoading: true,
        isCreatingAccount: false,
        errorMessage: '',
      ),
    );

    _streamSubscription = _loginRepository.authState().listen(
      (user) {
        emit(
          RootState(
            user: user,
          ),
        );
      },
    )..onError(
        (error) {
          emit(
            RootState(
              errorMessage: error.toString(),
            ),
          );
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
