import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';
import 'dot_indicator.dart';
import 'on_bourd.dart';
import 'on_bourd_contant.dart';

class OnBourdingViewBody extends StatefulWidget {
  const OnBourdingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBourdingViewBody> createState() => _OnBourdingViewBodyState();
}

class _OnBourdingViewBodyState extends State<OnBourdingViewBody> {
  late PageController _pageController;
  int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              controller: _pageController,
              itemCount: demo_data.length,
              itemBuilder: (context, index) => OnBourdContant(
                description: demo_data[index].description,
                image: demo_data[index].image,
                title: demo_data[index].title,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  demo_data.length,
                  (index) => DotIndicator(
                        isActive: index == _pageIndex,
                      )),
            ],
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height*0.06,
          ),
          Column(
            children: [
              if (_pageIndex == 3) Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 8),
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kLogInView);
                          },
                          child: const Text("Get Started ",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900)),
                        ),
                      ),
                    ) else Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 8),
                          onPressed: () {
                            _pageController.nextPage(
                                duration: const Duration(microseconds: 300),
                                curve: Curves.ease);
                          },
                          child: const Text("Next",
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
              _pageIndex == 3
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: kTextColor,
                        ),
                        onPressed: () {
                          _pageController.previousPage(
                              duration: const Duration(microseconds: 300),
                              curve: Curves.ease);
                        },
                        child: const Text("Skip",
                            style: TextStyle(fontSize: 25, color: kTextColor)),
                      ),
                    ),
            ],
          ),
           SizedBox(
            height:  MediaQuery.of(context).size.height*0.03,
          ),
        ],
      )),
    );
  }
}
