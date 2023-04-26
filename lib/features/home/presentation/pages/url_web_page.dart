// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UrlWebPage extends StatefulWidget {
  final String url;

  const UrlWebPage({
    super.key,
    required this.url,
  });

  @override
  State<UrlWebPage> createState() => _UrlWebPageState();
}

class _UrlWebPageState extends State<UrlWebPage> {
  bool _isLoading = true;

  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (String url) {
                setState(() {
                  _isLoading = false;
                });
              },
              onWebResourceError: (error) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppLocalizations.of(context)!.webWievError +
                        '${error.description}'),
                  ),
                );
              },
              onWebViewCreated: (WebViewController controller) {
                controller.clearCache();
                CookieManager().clearCookies();
              },
            ),
            _isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
