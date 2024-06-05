import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());
  List<Color> colorsFilterList = [];

  addToColorFilterList(Color color) {
    colorsFilterList.add(color);
    emit(
      ColorFilterListChanged(
        colors: colorsFilterList,
      ),
    );
  }

  removeFromColorFilterList(Color color) {
    colorsFilterList.remove(color);
    emit(
      ColorFilterListChanged(
        colors: colorsFilterList,
      ),
    );
  }
}
