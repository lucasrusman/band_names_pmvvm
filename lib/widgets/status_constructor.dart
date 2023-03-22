import 'package:band_names/viewmodels/status_viewmodel.dart';
import 'package:band_names/views/home.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class StatusRender extends StatelessWidget {
  const StatusRender({super.key});
  @override
  Widget build(BuildContext context) {
    return MVVM<StatusViewModel>(
      view: () => const HomeView(),
      viewModel: StatusViewModel(),
    );
  }
}
