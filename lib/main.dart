import 'package:band_names/services/socket_service.dart';
import 'package:band_names/widgets/home_constructor.dart';
import 'package:band_names/widgets/status_constructor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SocketService())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeRender(),
          'status': (_) => const StatusRender()
        },
      ),
    );
  }
}