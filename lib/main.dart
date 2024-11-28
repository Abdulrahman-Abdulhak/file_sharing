import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './router/router.dart';
import './screens/screens.dart';
import './constants/constants.dart';
import './providers/providers.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'File Sharing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Inter",
      ),
      locale: L10n.defaultLocal,
      supportedLocales: L10n.all,
      localizationsDelegates: L10n.delegates,
      routerConfig: AppRouter.router.config(),
      builder: (context, child) {
        return WidgetLoader(
          main: child ?? const Center(child: Text("No child provided")),
        );
      },
    );
  }
}

// this widgets serves as a first loader to the app
class WidgetLoader extends ConsumerWidget {
  final Widget main;
  const WidgetLoader({super.key, required this.main});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadedResult = ref.watch(loadedProvider);

    final loaded = switch (loadedResult) {
      AsyncData(:final value) => value,
      _ => false,
    };

    return loaded
        ? main
        : const Center(
            child:
                CircularProgressIndicator(), //TODO: replace with splash screen.
          );
  }
}
