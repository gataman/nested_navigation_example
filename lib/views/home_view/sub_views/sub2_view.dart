import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_example/utils/routes/app_router.dart';

@RoutePage()
class Sub2View extends StatelessWidget {
  const Sub2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Sub1View'),
        ElevatedButton(
          onPressed: () => context.router.push(const Sub3Route()),
          child: const Text('Go Sub3'),
        ),
      ],
    );
  }
}
