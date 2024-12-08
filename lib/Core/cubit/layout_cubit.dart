import 'package:bloc/bloc.dart';
import 'package:deacon_school_user/Feather/Grades/presentation/view/screen/grades_screen.dart';
import 'package:deacon_school_user/Feather/Lectures/presentation/view/screen/lectures_screen.dart';
import 'package:deacon_school_user/Feather/Profile/presentation/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int selectedPageIndex = 0;
  final List<Widget> pages = [
    LecturesScreen(),
    GradesScreen(),
    ProfileScreen(),
  ];
  bool showSearchBox = false;
  bool showNotificationsBox = false;

  void changePage(int index) {
    showSearchBox = false;
    showNotificationsBox = false;
    selectedPageIndex = index;
    emit(ChangePageState());
    emit(AnyState());
  }
  void toggleSearchBox() {
    showNotificationsBox = false;
    showSearchBox =!showSearchBox;
    emit(ToggleSearchBoxState());
    emit(AnyState());
  }
  void toggleNotificationsBox() {
    showSearchBox = false;
    showNotificationsBox =!showNotificationsBox;
    emit(ToggleNotificationsBoxState());
    emit(AnyState());
  }
}
