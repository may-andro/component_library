import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

const _loadingProgressWidth = 2.0;

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({required this.color, Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.all(clTheme.grid()),
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: _loadingProgressWidth,
        ),
      ),
    );
  }
}
