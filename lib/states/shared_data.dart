import 'package:mobx/mobx.dart';

import '../data/_data.dart';

part 'shared_data.g.dart';

class SharedData = SharedDataBase with _$SharedData;

abstract class SharedDataBase with Store {
  @observable
  List<JewCategory> categories = AppData.categories;
  @observable
  List<Jew> jews = AppData.jewItems;
  @observable
  List<Jew> jewsByCategory = AppData.jewItems;
  @alwaysNotify
  Jew selectedJew = AppData.jewItems[0];
  @observable
  List<Jew> cart = <Jew>[];
  @observable
  List<Jew> favorite = <Jew>[];
  @observable
  bool isLight = true;

  @action
  Future<void> onCategoryTap(JewCategory category) async {
    categories.map((e) {
      if (e.type == category.type) {
        e.isSelected = true;
      } else {
        e.isSelected = false;
      }
    }).toList();
    categories = [...categories];
    if (category.type == JewType.all) {
      jewsByCategory = jews;
    } else {
      jewsByCategory = jews.where((e) =>
      e.type == category.type).toList();
    }
  }

  @action
  Future<void> setSelectedSticker(Jew jew) async {
    selectedJew = jew;
  }

  @action
  Future<void> onIncreaseQuantityTap(Jew jew) async {
    jew.quantity++;
    selectedJew = jew;
    cart = jews.where((e) => e.cart).toList();
  }

  @action
  Future<void> onDecreaseQuantityTap(Jew jew) async {
    if (jew.quantity == 1) return;
    jew.quantity--;
    selectedJew = jew;
    cart = jews.where((e) => e.cart).toList();
  }

  @action
  Future<void> onAddToCartTap(Jew jew) async {
    jew.cart = true;
    cart = jews.where((e) => e.cart).toList();
  }

  @action
  Future<void> onRemoveFromCartTap(Jew jew) async {
    jew.cart = false;
    jew.quantity = 1;
    cart = jews.where((e) => e.cart).toList();
  }

  @action
  Future<void> onCheckOutTap() async {
    for (var element in cart) {
      element.cart = false;
      element.quantity = 1;
    }
    cart = jews.where((e) => e.cart).toList();
  }

  @action
  Future<void> onAddRemoveFavoriteTap(Jew jew) async {
    jew.isFavorite = !jew.isFavorite;
    selectedJew = jew;
    favorite = jews.where((e) => e.isFavorite).toList();
  }

  @action
  Future<void> onThemeToggle() async {
    isLight = !isLight;
  }

  String stickerPrice(Jew jew) {
    return (jew.quantity * jew.price).toString();
  }

  double get subtotal {
    double amount = 0.0;
    for (var element in cart) {
      amount = amount + element.price * element.quantity;
    }
    return amount;
  }
}
