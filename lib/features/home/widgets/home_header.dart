import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/features/cart/pages/cart_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    this.cartLength = 0,
  }) : super(key: key);
  final int cartLength;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        height: 0.4.sh,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff5183fe),
              Color(0xff76aafd),
            ],
          ),
        ),
        padding:
            EdgeInsets.only(top: 40.h, left: 20.w, right: 20.w, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.list_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  ),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Stack(children: [
                      const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      if (cartLength != 0)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text(cartLength.toString())),
                          ),
                        ),
                    ]),
                  ),
                ),
              ],
            ),
            ButtonsTabBar(
              backgroundColor: Colors.white10,
              unselectedBackgroundColor: Colors.transparent,
              labelStyle: TextStyle(color: Colors.white70, fontSize: 14.sp),
              unselectedLabelStyle:
                  TextStyle(color: Colors.white70, fontSize: 10.sp),
              buttonMargin: EdgeInsets.symmetric(vertical: 10, horizontal: 3.w),
              contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
              radius: 3,
              tabs: const [
                Tab(text: "Trending"),
                Tab(text: "Featured"),
                Tab(text: "new"),
              ],
            ),
            const Spacer(),
            Text(
              "Travel \naround the world.",
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              child: TextField(
                // controller: controller,
                onSubmitted: (String? value) {},
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white70,
                ),
                decoration: InputDecoration(
                  hintText: 'Search your destinations ...',
                  hintStyle: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white70,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  fillColor: Colors.white38,
                  border: InputBorder.none,
                  hoverColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
