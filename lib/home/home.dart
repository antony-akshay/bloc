import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bl/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              debugPrint('button clicked');
              context.read<HomeBloc>().add(LikeButtonClickedEvent());
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                bool isButtonClicked = false;
                if (state is HomeInitial) {
                  isButtonClicked = state.button;
                }
                return Icon(
                  isButtonClicked
                    ? Icons.favorite_border_outlined
                    : Icons.favorite,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
