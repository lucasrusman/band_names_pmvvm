import 'package:band_names/views/home.dart';
import 'package:band_names/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class HomeRender extends StatelessWidget {
  const HomeRender({super.key});
  @override
  Widget build(BuildContext context) {
    return MVVM<HomeViewModel>(
      view: () => const HomeView(),
      viewModel: HomeViewModel(),
    );
  }
}
