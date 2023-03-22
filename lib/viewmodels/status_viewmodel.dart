import 'package:band_names/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

import 'package:flutter/cupertino.dart';

class StatusViewModel extends ViewModel {
  @override
  void init() {
    var height = MediaQuery.of(context).size.height;
  }

  emitMessage(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    socketService.emit(
      'nuevo-mensaje',
      {'nombre': 'flutter', 'mensaje': 'hola desde flutter'},
    );
  }

  serverStatus(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    return socketService.serverStatus;
  }
}
