import 'package:apartment/state/auth/models/auth_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthResult? result,
    required bool isLoading,
    required String? userId,
    required String? displayName,
    required bool isAnonymous,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.unknown() => const AuthState(
        result: null,
        isLoading: false,
        userId: null,
        displayName: null,
        isAnonymous: false,
      );
}
