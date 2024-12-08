import 'package:deacon_school_user/Core/widget/app_layout_custom.dart';
import 'package:deacon_school_user/Feather/Auth/presentation/view/screen/login_screen.dart';
import 'package:deacon_school_user/Feather/Lectures/presentation/view/screen/audio_player_screen.dart';
import 'package:deacon_school_user/Feather/Lectures/presentation/view/screen/lecture_content_screen.dart';
import 'package:deacon_school_user/Feather/Lectures/presentation/view/screen/lecture_pdf_screen.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {

  static const kLoginView='/';
  static const kAppLayoutView='/AppLayoutView';
  static const kAudioPlayerScreenView='/AudioPlayerScreen';
  static const kLectureContentScreenView='/LectureContentScreen';
  static const kLecturePDFScreenView='/LecturePDFScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: kLoginView,
          builder: (context, state){
            return LoginScreen();
          }),
      GoRoute(
          path: kAppLayoutView,
          builder: (context, state){
            return AppLayoutCustom();
          }),
      GoRoute(
          path: kAudioPlayerScreenView,
          builder: (context, state){
            return AudioPlayerScreen();
          }),
      GoRoute(
          path: kLectureContentScreenView,
          builder: (context, state){
            return LectureContentScreen();
          }),
      GoRoute(
          path: kLecturePDFScreenView,
          builder: (context, state){
            return LecturePDFScreen();
          }),
    ],
  );
}
