import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  //scoped provider
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// consumer widget for riverpod

final date = StateProvider((ref) => DateTime.now());

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.watch(date);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: Center(
        child: Text(
          '$dateTime',
          style: const TextStyle(fontSize: 30),
        ),
      ),
     
    );
  }
}

