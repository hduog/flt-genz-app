import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLoadingProvider = StateProvider((ref) => false);

class LoadingOverlay extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isLoadingProvider);

    return Visibility(
      visible: isLoading,
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
