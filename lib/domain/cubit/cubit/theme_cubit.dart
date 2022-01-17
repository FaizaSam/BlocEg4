import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  bool _isDark = false;
  bool get isDark => _isDark;
  void toggleTheme() {
    _isDark = !_isDark;
    print(_isDark);
    emit(ThemeChanged());
    if (_isDark) {
      emit(ThemeLight(message: "The theme is Dark"));
    } else {
      emit(ThemeLight(message: "The theme is Light"));
    }
  }
}
