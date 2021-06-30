import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLightBlue = true; // tanda _ pada _isLightBlue menandakan private

  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool value) {
    _isLightBlue = value; // value yg baru
    notifyListeners(); // untuk memberitahukan widget2 yg menunggu perubahan dari ApplicationColor
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;

}