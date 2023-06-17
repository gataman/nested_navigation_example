import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes/app_router.dart';

@RoutePage()
class Sub3View extends StatelessWidget {
  const Sub3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Sub1View'),
        ElevatedButton(
          onPressed: () => context.router.push(const Sub1Route()),
          child: const Text('Go Sub1'),
        ),
      ],
    );
  }
}
