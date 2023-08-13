import 'package:food_delivery_app/features/sign_up_view/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/forget_password_view/presentation/views/forget_password_view.dart';
import '../../features/home_view/presentation/views/home_view.dart';
import '../../features/login_view/presentation/login_view.dart';
import '../../features/on_bourding_view/presentation/views/on_bourding_01_view.dart';
import '../../features/splash_view/presentation/views/splash_view.dart';
import '../../features/verification_view/presentation/views/verification_view.dart';


abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchView';
  static const kOnBourding01 = '/onBourdingView';
  static const kLogInView = '/loginView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kSignUpView = '/signUpView';
  static const kVerificationView = '/verificationView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOnBourding01,
        builder: (context, state) => const OnBourdingView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kVerificationView,
        builder: (context, state) => const VerificationView(),
      ),
    ],
  );
}
