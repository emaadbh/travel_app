import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/bloc/home/home_cubit.dart';
import 'package:travel/model/product_model.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key? key,
    required this.data,
    this.hasCart = false,
  }) : super(key: key);
  final ProductModel data;
  final bool hasCart;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => hasCart
          ? context.read<HomeCubit>().removeProduct(data)
          : context.read<HomeCubit>().addProduct(data),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    data.image!,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    cacheHeight: 100,
                    cacheWidth: 100,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "The Grand Canyon",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const Text(
                        "Start Form",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                      RichText(
                        maxLines: 1,
                        textScaleFactor: 1,
                        text: const TextSpan(
                          text: '\$145 ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.indigoAccent,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '/person',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              height: 30,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: data.option
                        ?.map(
                          (e) => Row(
                            children: [
                              Container(
                                height: 7,
                                width: 7,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Text(
                                e,
                                style: TextStyle(
                                    fontSize: 11.sp, color: Colors.grey),
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        )
                        .toList() ??
                    [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
