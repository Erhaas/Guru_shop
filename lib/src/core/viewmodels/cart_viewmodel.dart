import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/models/cart_model.dart';

import '../enum/viewstate.dart';
import 'base_viewmodel.dart';

class CartViewModel extends BaseViewModel {
  List<CartModel> _cartFoods = [];
  List<Map<String, String>> _address = [];
  String _selectedAddress = "";

  List<Map<String, String>> get address => _address;
  List<CartModel> get foods => _cartFoods;

  bool isSelected(String id) => (id == _selectedAddress ? true : false);

  onSelect(String id) {
    _selectedAddress = id;
    notifyListeners();
  }

  Future getAddress() async {
    if (_address.isNotEmpty) return;
    setState(ViewState.Busy);
    return Future.delayed(
        const Duration(milliseconds: 500),
        () => {
              _address = listAddress,
              setState(ViewState.Idle),
              notifyListeners()
            });
  }
}
