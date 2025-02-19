import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PaymentGateway extends StatefulWidget {
  final String paymentToken;

  const PaymentGateway({super.key, required this.paymentToken});
  @override
  State<PaymentGateway> createState() => _PaymentGatewayState();
}
class _PaymentGatewayState extends State<PaymentGateway> {
  InAppWebViewController? _webViewController;
  Future<void> handlePaymentSuccess() async {
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
  }
  @override
  void initState() {
    super.initState();
    startPayment();
  }

  void startPayment() async {
    _webViewController?.loadUrl(
      urlRequest: URLRequest(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InAppWebView(
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            javaScriptEnabled: true,
          ),
        ),
        onWebViewCreated: (controller){
          _webViewController = controller;
          startPayment();
        },
      ),
    );
  }
}
