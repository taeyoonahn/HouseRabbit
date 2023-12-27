import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(
              'https://drive.google.com/file/d/1-qtUCf7ob2iuEUSa-XKv7mrNd6xZX5Uh/view?usp=sharing'),
        ),
        initialOptions: InAppWebViewGroupOptions(
            android: AndroidInAppWebViewOptions(useHybridComposition: true)),
      ),
    );
  }
}

