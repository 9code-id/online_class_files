import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/*
Handle full dari Client
1. Create Payment Link
2. Buka PaymentLink-nya di WebView : InAppWebView
3. Handle dari sisi FE jika pembayaran user berhasil dan masuk ke urlcallback
*/

/*
Handle full dari Server
1. Create Payment Link (API: create-payment-link)
2. Buka PaymentLink-nya di WebView : InAppWebView
3. Handle dari sisi FE jika pembayaran user berhasil dan masuk ke urlcallback
*/
class PosPaymentView extends StatefulWidget {
  const PosPaymentView({Key? key}) : super(key: key);

  @override
  State<PosPaymentView> createState() => _PosPaymentViewState();
}

class _PosPaymentViewState extends State<PosPaymentView> {
  PosPaymentController controller = PosPaymentController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosPaymentController>()) {
      GetIt.I.unregister<PosPaymentController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<PosPaymentController, PosPaymentState>(
        listener: (context, state) {},
        child: BlocBuilder<PosPaymentController, PosPaymentState>(
          builder: (context, state) {
            final bloc = context.read<PosPaymentController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosPaymentController controller,
    PosPaymentState state,
  ) {
    return Scaffold(
      body: state.paymentUrl == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Color(0xff012856),
              child: SafeArea(
                child: InAppWebView(
                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      useShouldOverrideUrlLoading: true,
                    ),
                  ),
                  initialUrlRequest: URLRequest(
                    url: Uri.parse(state.paymentUrl!),
                  ),
                  shouldOverrideUrlLoading:
                      (webViewController, navigationAction) async {
                    final url = navigationAction.request.url.toString();
                    print("url: $url");
                    if (url.contains("example.com")) {
                      showLoading();
                      await controller.createOrder();
                      hideLoading();

                      Get.offAll(MainNavigationView());
                      snackbarPrimary(message: "Transaksi berhasil");
                      return NavigationActionPolicy.CANCEL;
                    }

                    return NavigationActionPolicy.ALLOW;
                  },
                ),
              ),
            ),
    );
  }
}
