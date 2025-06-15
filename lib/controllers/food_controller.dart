import 'dart:math';

import 'package:get/get.dart';
import 'package:restaurant_app/models/additive_models.dart';

class FoodController extends GetxController {
  String _category = ' ';

  String get category => _category;

  set setCategory(String newValue) {
    _category = newValue;
  }

  RxList<String> _types = <String>[].obs;

  RxList<String> get types => _types;

  set setTypes(String newValue) {
    _types.add(newValue);
  }

  int generateId() {
    int min = 0;
    int max = 1000000;

    final _random = Random();
    return min + Random().nextInt(max - min);
  }

  RxList<Additive> _additivesList = <Additive>[].obs;

  RxList<Additive> get additivesList => _additivesList;

  set addAdditive(Additive newValue) {
    _additivesList.add(newValue);
  }

  void clearAdditives() {
    _additivesList.clear();
  }
}