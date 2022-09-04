import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:theme_example/theme/theme_manager.dart';
import 'package:theme_example/theme/themes.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(const ThemeState(primaryColor: 'red', accentColor: 'red'));

  void setPrimaryColor(String primaryColor) {
    emit(state.copyWith(primaryColor: primaryColor));
  }

  void setAccentColor(String accentColor) {
    emit(state.copyWith(accentColor: accentColor));
  }
}
