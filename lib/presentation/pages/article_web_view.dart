import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  const ArticleWebView({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          toolbarHeight: 75,
          centerTitle: false,
          elevation: 1,
          title: Text(
            title,
            style: kSubtitle.copyWith(color: backgroundColorBlack),
          )),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
