import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rounded-raised-button.dart';
import 'package:legal_line_solution/ui/screens/forgot_password/forgot-password-screen.dart';
import 'package:legal_line_solution/ui/screens/root-screen.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///[body] starts from here
      ///
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$assets/bg_light.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 83.h,
              ),
              //logo
              ImageContainer(
                assetImage: "$assets/logo.png",
                width: 299.w,
                height: 61.h,
              ),

              ///
              ///login form
              ///
              form(),

              ///
              ///button login
              ///
              loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  ///
  ///login form
  ///
  form() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 60, right: 60, top: 155, bottom: 22.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Login",
                style: headingTextStyle.copyWith(
                    fontSize: 30.sp, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 12.5.h,
          ),
          Row(
            children: [
              Container(
                height: 2.h,
                width: 32.w,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 51.5.h,
          ),

          Row(children: [Text("LegalLine Solutions Phone Number")]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CountryCodePickerr(onChange: (CountryCode countryCode) {
                //TODO : manipulate the selected country code here
                print("New Country selected: " + countryCode.toString());
              }),
              SizedBox(
                width: 21.w,
              ),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Phone",
                      labelStyle: bodyTextStyle.copyWith(
                        fontFamily: sansPro,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 39.h,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Email",
                labelStyle: bodyTextStyle.copyWith(
                  fontFamily: sansPro,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12))),
          ),
          SizedBox(
            height: 39.h,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password",
                labelStyle: bodyTextStyle.copyWith(
                  fontFamily: sansPro,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12))),
          ),
          SizedBox(
            height: 9.5.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ForgotPassword());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Forget Password?")],
            ),
          ),
          // SizedBox(
          //   height: 22.h,
          // ),
        ],
      ),
    );
  }

  ///
  ///button login
  ///
  loginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 52.h,
          width: 200.w,
          child: RoundedRaisedButton(
            buttonText: "LOGIN",
            onPressed: () {
              Get.offAll(() => RootScreen());
            },
          ),
        ),
      ],
    );
  }
}

class CountryCodePickerr extends StatelessWidget {
  final onChange;
  CountryCodePickerr({@required this.onChange});

  @override
  Widget build(BuildContext context) => Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: primaryColor, width: 1.w),
        ),
        child: Transform.scale(
          scale: 0.8,
          child: CountryCodePicker(
            padding: EdgeInsets.zero,
            onChanged: onChange,

            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'INR',
            favorite: ['+39', 'FR'],
            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
          ),
        ),
      );
}
