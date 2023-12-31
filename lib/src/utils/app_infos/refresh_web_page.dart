import 'html_locator.dart' if (dart.library.html) 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void refreshWindow(BuildContext context, String url) {
  if (kIsWeb) {
    window.location.reload();
  } else {
    Future(() => context.go(url));
  }
}
