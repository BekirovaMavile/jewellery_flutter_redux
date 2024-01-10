// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SharedData on SharedDataBase, Store {
  late final _$categoriesAtom =
      Atom(name: 'SharedDataBase.categories', context: context);

  @override
  List<JewCategory> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<JewCategory> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$jewsAtom = Atom(name: 'SharedDataBase.jews', context: context);

  @override
  List<Jew> get jews {
    _$jewsAtom.reportRead();
    return super.jews;
  }

  @override
  set jews(List<Jew> value) {
    _$jewsAtom.reportWrite(value, super.jews, () {
      super.jews = value;
    });
  }

  late final _$jewsByCategoryAtom =
      Atom(name: 'SharedDataBase.jewsByCategory', context: context);

  @override
  List<Jew> get jewsByCategory {
    _$jewsByCategoryAtom.reportRead();
    return super.jewsByCategory;
  }

  @override
  set jewsByCategory(List<Jew> value) {
    _$jewsByCategoryAtom.reportWrite(value, super.jewsByCategory, () {
      super.jewsByCategory = value;
    });
  }

  late final _$selectedJewAtom =
      Atom(name: 'SharedDataBase.selectedJew', context: context);

  @override
  Jew get selectedJew {
    _$selectedJewAtom.reportRead();
    return super.selectedJew;
  }

  @override
  set selectedJew(Jew value) {
    _$selectedJewAtom.reportWrite(value, super.selectedJew, () {
      super.selectedJew = value;
    }, equals: observableAlwaysNotEqual);
  }

  late final _$cartAtom = Atom(name: 'SharedDataBase.cart', context: context);

  @override
  List<Jew> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(List<Jew> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  late final _$favoriteAtom =
      Atom(name: 'SharedDataBase.favorite', context: context);

  @override
  List<Jew> get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(List<Jew> value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$isLightAtom =
      Atom(name: 'SharedDataBase.isLight', context: context);

  @override
  bool get isLight {
    _$isLightAtom.reportRead();
    return super.isLight;
  }

  @override
  set isLight(bool value) {
    _$isLightAtom.reportWrite(value, super.isLight, () {
      super.isLight = value;
    });
  }

  late final _$onCategoryTapAsyncAction =
      AsyncAction('SharedDataBase.onCategoryTap', context: context);

  @override
  Future<void> onCategoryTap(JewCategory category) {
    return _$onCategoryTapAsyncAction.run(() => super.onCategoryTap(category));
  }

  late final _$setSelectedStickerAsyncAction =
      AsyncAction('SharedDataBase.setSelectedSticker', context: context);

  @override
  Future<void> setSelectedSticker(Jew jew) {
    return _$setSelectedStickerAsyncAction
        .run(() => super.setSelectedSticker(jew));
  }

  late final _$onIncreaseQuantityTapAsyncAction =
      AsyncAction('SharedDataBase.onIncreaseQuantityTap', context: context);

  @override
  Future<void> onIncreaseQuantityTap(Jew jew) {
    return _$onIncreaseQuantityTapAsyncAction
        .run(() => super.onIncreaseQuantityTap(jew));
  }

  late final _$onDecreaseQuantityTapAsyncAction =
      AsyncAction('SharedDataBase.onDecreaseQuantityTap', context: context);

  @override
  Future<void> onDecreaseQuantityTap(Jew jew) {
    return _$onDecreaseQuantityTapAsyncAction
        .run(() => super.onDecreaseQuantityTap(jew));
  }

  late final _$onAddToCartTapAsyncAction =
      AsyncAction('SharedDataBase.onAddToCartTap', context: context);

  @override
  Future<void> onAddToCartTap(Jew jew) {
    return _$onAddToCartTapAsyncAction.run(() => super.onAddToCartTap(jew));
  }

  late final _$onRemoveFromCartTapAsyncAction =
      AsyncAction('SharedDataBase.onRemoveFromCartTap', context: context);

  @override
  Future<void> onRemoveFromCartTap(Jew jew) {
    return _$onRemoveFromCartTapAsyncAction
        .run(() => super.onRemoveFromCartTap(jew));
  }

  late final _$onCheckOutTapAsyncAction =
      AsyncAction('SharedDataBase.onCheckOutTap', context: context);

  @override
  Future<void> onCheckOutTap() {
    return _$onCheckOutTapAsyncAction.run(() => super.onCheckOutTap());
  }

  late final _$onAddRemoveFavoriteTapAsyncAction =
      AsyncAction('SharedDataBase.onAddRemoveFavoriteTap', context: context);

  @override
  Future<void> onAddRemoveFavoriteTap(Jew jew) {
    return _$onAddRemoveFavoriteTapAsyncAction
        .run(() => super.onAddRemoveFavoriteTap(jew));
  }

  late final _$onThemeToggleAsyncAction =
      AsyncAction('SharedDataBase.onThemeToggle', context: context);

  @override
  Future<void> onThemeToggle() {
    return _$onThemeToggleAsyncAction.run(() => super.onThemeToggle());
  }

  @override
  String toString() {
    return '''
categories: ${categories},
jews: ${jews},
jewsByCategory: ${jewsByCategory},
selectedJew: ${selectedJew},
cart: ${cart},
favorite: ${favorite},
isLight: ${isLight}
    ''';
  }
}
