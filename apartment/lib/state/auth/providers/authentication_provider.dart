import 'package:apartment/state/auth/backend/authenticator.dart';
import 'package:apartment/state/auth/models/auth_result.dart';
import 'package:apartment/state/auth/models/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

@riverpod
class Authentication extends _$Authentication {
  final _authenticator = const Authenticator();

  @override
  AuthState build() {
    if (_authenticator.isAlreadyLoggedIn) {
      return AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
        displayName: _authenticator.displayName,
        isAnonymous: _authenticator.isAnonymous,
      );
    }
    return AuthState.unknown();
  }

  Future<void> loginWithGoogle() async {
    state = state.copyWith(isLoading: true);

    final result = await _authenticator.loginWithGoogle();

    state = AuthState(
      result: result,
      isLoading: false,
      userId: _authenticator.userId,
      displayName: _authenticator.displayName,
      isAnonymous: false,
    );
  }

  Future<void> logOut() async {
    await _authenticator.logOut();
    state = AuthState.unknown();
  }

  Future<void> loginAnonymously() async {
    state = state.copyWith(isLoading: true);

    final result = await _authenticator.loginAnonymously();

    state = AuthState(
      result: result,
      isLoading: false,
      userId: _authenticator.userId,
      displayName: null,
      isAnonymous: true,
    );
  }
}
