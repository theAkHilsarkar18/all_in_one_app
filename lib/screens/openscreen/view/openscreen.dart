import 'package:all_in_one_app/screens/homescreen/provider/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Openscreen extends StatefulWidget {
  const Openscreen({Key? key}) : super(key: key);

  @override
  State<Openscreen> createState() => _OpenscreenState();
}

class _OpenscreenState extends State<Openscreen> {
  @override
  Widget build(BuildContext context) {

    Homeprovider homeprovider = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: Provider.of<Homeprovider>(context,listen: true).webViewController!,
        ),
      ),
    );
  }
}
