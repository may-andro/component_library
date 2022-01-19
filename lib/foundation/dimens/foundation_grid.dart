import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

int getDeviceGrid(final BuildContext buildContext) {
	switch(getWindowType(buildContext)){
		case AdaptiveWindowType.xsmall:
			return 4;
		case AdaptiveWindowType.small:
			return 6;
		case AdaptiveWindowType.medium:
			return 8;
		case AdaptiveWindowType.large:
			return 12;
		case AdaptiveWindowType.xlarge:
			return 16;
		default:
			return 8;
	}
}