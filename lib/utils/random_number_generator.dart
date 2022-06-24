import 'dart:math';

import 'package:flutter_worlde/constants/words.dart';
import 'package:flutter_worlde/controllers/action.dart';
import 'package:get/get.dart';

Future<void> randomNumberGenerator() {
  ActionController actionController = Get.find<ActionController>();

  Random random = Random();

  int x = random.nextInt(words.length);

  actionController.setWordToWin(words[x]);
  return Future.value();
}
