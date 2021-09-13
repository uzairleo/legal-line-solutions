import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:legal_line_solution/ui/screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///
  ///firebase init
  ///
  // await Firebase.initializeApp();
  //now finally setup locator

  // setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        //  MultiProvider(
        //   providers: [

        //   ],
        //   child:
        ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primaryColor: SharedConstants().yellow,
          fontFamily: 'OP_R',
        ),
        home: SplashScreen(),
        // ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:project_1/ui/screens/RENT_A_CAR/payment_gateways/google-pay/google_pay_screen.dart';

// import '.env.example.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Stripe.publishableKey = stripePublishableKey;
//   Stripe.merchantIdentifier = 'MerchantIdentifier';
//   Stripe.urlScheme = 'flutterstripe';
//   await Stripe.instance.applySettings();
//   runApp(App());
// }

// class App extends StatelessWidget {
//   // const App({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return
//         DismissFocusOverlay(
//         child:
//         MaterialApp(
//       home: HomePage(),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body:
//         // Center(child:Container(
//         //   child:Text("TAP ME ")
//         // ))
//         GooglePayScreen()
//         //  ListView(children: [
//         //   ...ListTile.divideTiles(
//         //     context: context,
//         //     tiles: [
//         //       for (final example in Example.screens)
//         //         ListTile(
//         //           onTap: () {
//         //             final route = MaterialPageRoute(builder: example.builder);
//         //             Navigator.push(context, route);
//         //           },
//         //           title: Text(example.title),
//         //           trailing: Icon(
//         //             Icons.chevron_right_rounded,
//         //           ),
//         //         ),
//         //     ],
//         //   ),
//         // ]),
//         );
//   }
// }

// // import 'package:flutter/widgets.dart';

// class DismissFocusOverlay extends StatelessWidget {
//   final Widget child;

//   const DismissFocusOverlay({Key key, this.child}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         var currentFocus = FocusScope.of(context);w
//         if (currentFocus.hasPrimaryFocus &&
//             currentFocus.focusedChild != null) {
//           FocusManager.instance.primaryFocus.unfocus();
//         }
//       },
//       child: child,
//     );
//   }
// }
