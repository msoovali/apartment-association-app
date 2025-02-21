import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/auth/models/auth_result.dart';
import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/state/is_loading/providers/is_loading_provider.dart';
import 'package:apartment/views/components/loading/loading_screen.dart';
import 'package:apartment/views/main/main_view.dart';
import 'package:apartment/views/start/apartment_selection_view.dart';
import 'package:apartment/views/start/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.listen<bool>(isLoadingProvider, (_, isLoading) {
          if (isLoading) {
            LoadingScreen.instance().show(context: context);
          } else {
            LoadingScreen.instance().hide();
          }
        });
        final isLoggedIn =
            AuthResult.success == ref.watch(authenticationProvider).result;
        final isApartmentSelected =
            ref.watch(selectedApartmentProvider) != null;
        if (!isLoggedIn) {
          return const LoginView();
        }
        if (!isApartmentSelected) {
          return const ApartmentSelectionView();
        }
        return const MainView();
      },
    );
  }
}
