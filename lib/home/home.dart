import 'package:bl/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: SafeArea(
            child: Center(
          child: GestureDetector(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return const Icon(Icons.favorite_border);
                },
              ),
              onTap: () => BlocProvider.of<HomeBloc>(context)
                  .add(likeButtonClickedEvent())),
        )),
      ),
    );
  }
}
