part of 'filter_cubit.dart';

@immutable
sealed class FilterState {}

final class FilterInitial extends FilterState {}
final class ColorFilterListChanged extends FilterState {
  final List<Color> colors;
  ColorFilterListChanged({required this.colors});
}


