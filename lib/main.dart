import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinta_digital/Bloc/reconocimiento/reconocimiento_bloc.dart';
import 'package:tinta_digital/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
     BlocProvider(create:(context)=>ReconocimientoTintaBloc())
    ], child: MaterialApp(
        home:Home()
    )
    );

  }
}


