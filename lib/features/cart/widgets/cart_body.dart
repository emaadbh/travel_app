import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/bloc/home/home_cubit.dart';
import 'package:travel/component/home_card_widget.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) => Padding(
            padding: EdgeInsets.only(top: 0.05.sh),
            child: Column(
              children: context
                  .read<HomeCubit>()
                  .cartProduct
                  .map(
                    (e) => HomeCardWidget(
                      data: e,
                      hasCart: true,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
