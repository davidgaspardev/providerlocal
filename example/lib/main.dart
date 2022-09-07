import 'dart:async';

import 'package:flutter/material.dart';
import 'package:providerlocal/providerlocal.dart';
import 'package:providerlocal_example/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PageOne.routeName,
      routes: {
        PageOne.routeName: (_) => PageOne(),
        PageTwo.routeName: (_) => PageTwo(),
        PageThree.routeName: (_) => PageThree(),
        PageFour.routeName: (_) => PageFour(),
        PageFive.routeName: (_) => PageFive(),
        PageSix.routeName: (_) => PageSix(),
        PageSeven.routeName: (_) => PageSeven(),
        PageEight.routeName: (_) => PageEight()
      },
    );
  }
}

// ========================== PAGE ONE ==========================

class PageOne extends StatelessWidget {
  static const routeName = 'pageone';

  final PageOneController controller = PageOneController();

  PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page ONE",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: controller.counter,
          builder: (_, int counter, __) {
            return Text(counter.toString());
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              label: "open PageTwo",
              onClick: controller.openPageTwo,
            ),
          ],
        ),
      ],
    );
  }
}

class PageOneController extends Controller {

  final counter = ValueNotifier<int>(0);

  void openPageTwo() {
    Navigator.pushNamed(context, PageTwo.routeName);
  }

  @override
  void builded(Duration timestamp) {
    Timer.periodic(const Duration(seconds: 1), (_) {
      counter.value++;
    });
  }

  @override
  void dispose() {
    counter.dispose();
  }
}

// ========================== PAGE TWO ==========================

class PageTwo extends StatelessWidget {
  static const routeName = 'pagetwo';

  final PageTwoController controller = PageTwoController();

  PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page TWO",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageOne",
            onClick: controller.backPageOne,
          ),
          Button(
            label: "open PageThree",
            onClick: controller.openPageThree,
          ),
        ],
      ),
    );
  }
}

class PageTwoController extends Controller {
  void openPageThree() {
    Navigator.pushNamed(context, PageThree.routeName);
  }

  void backPageOne() {
    Navigator.pop(context);
  }

  @override
  void init() {}
}

// ========================== PAGE THREE ==========================

class PageThree extends StatelessWidget {
  static const routeName = 'pagethree';

  final PageThreeController controller = PageThreeController();

  PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page THREE",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageTwo",
            onClick: controller.backPageTwo,
          ),
          Button(
            label: "open PageFour",
            onClick: controller.openPageFour,
          ),
        ],
      ),
    );
  }
}

class PageThreeController extends Controller {
  void backPageTwo() {
    Navigator.pop(context);
  }

  void openPageFour() {
    Navigator.pushNamed(context, PageFour.routeName);
  }

  @override
  void init() {}
}

// ========================== PAGE FOUR ==========================

class PageFour extends StatelessWidget {
  static const routeName = 'pagefour';

  final PageFourController controller = PageFourController();

  PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page FOUR",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageThree",
            onClick: controller.backPageThree,
          ),
          Button(
            label: "open PageFive",
            onClick: controller.openPageFive,
          ),
        ],
      ),
    );
  }
}

class PageFourController extends Controller {
  void backPageThree() {
    Navigator.pop(context);
  }

  void openPageFive() {
    Navigator.pushNamed(context, PageFive.routeName);
  }

  @override
  void init() {}
}

// ========================== PAGE FIVE ==========================

class PageFive extends StatelessWidget {
  static const routeName = 'pagefive';

  final PageFiveController controller = PageFiveController();

  PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page FIVE",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageFour",
            onClick: controller.backPageFour,
          ),
          Button(
            label: "open PageSix",
            onClick: controller.openPageSix,
          ),
        ],
      ),
    );
  }
}

class PageFiveController extends Controller {
  void backPageFour() {
    Navigator.pop(context);
  }

  void openPageSix() {
    Navigator.pushNamed(context, PageSix.routeName);
  }

  @override
  void init() {}
}

// ========================== PAGE SIX ==========================

class PageSix extends StatelessWidget {
  static const routeName = 'pagesix';

  final PageSixController controller = PageSixController();

  PageSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page SIX",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageFive",
            onClick: controller.backPageFive,
          ),
          Button(
            label: "open PageSeven",
            onClick: controller.openPageSeven,
          ),
        ],
      ),
    );
  }
}

class PageSixController extends Controller {
  void backPageFive() {
    Navigator.pop(context);
  }

  void openPageSeven() {
    Navigator.pushNamed(context, PageSeven.routeName);
  }

  @override
  void init() {}
}

// ========================== PAGE SEVEN ==========================

class PageSeven extends StatelessWidget {
  static const routeName = 'pageseven';

  final PageSevenController controller = PageSevenController();

  PageSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page SEVEN",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageSix",
            onClick: controller.backPageSix,
          ),
          Button(
            label: "open PageEight",
            onClick: controller.openPageEight,
          ),
        ],
      ),
    );
  }
}

class PageSevenController extends Controller {
  void backPageSix() {
    Navigator.pop(context);
  }

  

  void openPageEight() {
    Navigator.pushNamed(context, PageEight.routeName);
  }

  @override
  void init() {}
}

// ========================== PAGE EIGHT ==========================

class PageEight extends StatelessWidget {
  static const routeName = 'pageeight';

  final PageEightController controller = PageEightController();

  PageEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderLocal(
      nameForDebug: "Page EIGHT",
      controller: controller,
      page: page,
    );
  }

  Widget page() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            label: "back PageSeven",
            onClick: controller.backPageSeven,
          )
        ],
      ),
    );
  }
}

class PageEightController extends Controller {
  void backPageSeven() {
    Navigator.pop(context);
  }

  @override
  void init() {}
}