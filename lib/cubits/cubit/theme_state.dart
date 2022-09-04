// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState({required this.primaryColor, required this.accentColor});
  final String primaryColor;
  final String accentColor;
  @override
  List<Object> get props => [primaryColor, accentColor];

  ThemeState copyWith({
    String? primaryColor,
    String? accentColor,
  }) {
    return ThemeState(
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
    );
  }
}
