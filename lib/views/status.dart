import 'package:band_names/viewmodels/status_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class StatusView extends StatelessView<StatusViewModel> {
  const StatusView({super.key});

  @override
  Widget render(BuildContext context, StatusViewModel viewModel) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Server Status: ${viewModel.serverStatus(context)}")],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.emitMessage(context);
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
