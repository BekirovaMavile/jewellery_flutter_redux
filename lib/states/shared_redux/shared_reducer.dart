import 'package:redux/redux.dart';

import '../../data/_data.dart';
import 'shared_action.dart';
import 'shared_state.dart';

/// Reducer
final sharedReducer = combineReducers<SharedState>([
  TypedReducer<SharedState, CategoryTapAction>(_onCategoryTap),
]);

SharedState _onCategoryTap(SharedState state, CategoryTapAction action) {
  final categories = state.categories.map((e) {
    if (e.type == action.category.type) {
      return e.copyWith(isSelected: true);
    } else {
      return e.copyWith(isSelected: false);
    }
  }).toList();

  if (action.category.type == JewType.all) {
    final jewsByCategory = state.jews;
    return state.copyWith(categories: categories,jewsByCategory: jewsByCategory);
  } else {
    final jewsByCategory = state.jews.where((e) => e.type == action.category.type).toList();
    return state.copyWith(categories: categories,jewsByCategory: jewsByCategory);
  }
}