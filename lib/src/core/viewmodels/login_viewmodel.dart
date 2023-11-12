import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';

class LoginViewModel extends BaseViewModel {
  bool _connected = false;

  bool get userConnected => _connected;

  Future login(String username, String password) async {
    setState(ViewState.Busy);
    _connected = true;
    setState(ViewState.Idle);
    notifyListeners();
  }
}
