import 'package:band_names/viewmodels/home_viewmodel.dart';

import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:band_names/services/socket_service.dart';

class HomeView extends StatelessView<HomeViewModel> {
  const HomeView({super.key, reactive = true});

  @override
  Widget render(BuildContext context, HomeViewModel viewModel) {
    final socketService = Provider.of<SocketService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BandNames', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: (socketService.serverStatus == ServerStatus.Online)
                ? Icon(Icons.check_circle, color: Colors.blue[300])
                : const Icon(Icons.offline_bolt, color: Colors.red),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          viewModel.showGraph(),
          Expanded(
            child: ListView.builder(
                itemCount: viewModel.bands.length,
                itemBuilder: (context, i) =>
                    viewModel.bandTile(viewModel.bands[i])),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        onPressed: viewModel.addNewBand,
        child: const Icon(Icons.add),
      ),
    );
  }
}
