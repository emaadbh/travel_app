import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/bloc/home/home_cubit.dart';
import 'package:travel/features/home/widgets/home_content.dart';
import 'package:travel/features/home/widgets/home_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                HomeHeader(
                  cartLength: context.read<HomeCubit>().cartProduct.length,
                ),
                const SizedBox(height: 10),
                const HomeTitleListWidget(),
                const HomeContent(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class HomeTitleListWidget extends StatelessWidget {
  const HomeTitleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Place arround you",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            "view All",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
