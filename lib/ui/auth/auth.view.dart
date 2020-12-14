import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petme/providers/app.provider.dart';
import 'package:petme/widgets/textField.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = useTextEditingController();
    var passwordController = useTextEditingController();
    var singUpError = useState('');
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        Colors.amber[400],
        Colors.amber[400],
        Colors.amber[300],
        Colors.amber[200],
      ])),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 0.16.sh),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                height: 220, width: 200, child: Image.asset("assets/Paw.png")),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AutoSizeText(
                      "Paw",
                      minFontSize: 30,
                      style: GoogleFonts.openSans(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 50,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0.1.sw),
                      child: AutoSizeText(
                        "Pets Are Awesome!",
                        textAlign: TextAlign.end,
                        minFontSize: 18,
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        maxFontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 0.15.sh,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.1.sw, left: 0.1.sw),
                      child: TextField(
                        controller: emailController,
                        decoration: inputFormat(context, label: "email"),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.1.sw, left: 0.1.sw),
                      child: TextField(
                        controller: passwordController,
                        decoration: inputFormat(context, label: "password"),
                      ),
                    ),
                    SizedBox(
                      height: 0.015.sh,
                    ),
                    if (singUpError.value.isNotEmpty)
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 0.025.sh,
                          width: 0.8.sw,
                          child: AutoSizeText(
                            singUpError.value,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 0.035.sh,
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.1.sw, vertical: 0.018.sh),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      onPressed: () async {
                        if (validateSignInForm(
                          email: emailController.text,
                          password: passwordController.text,
                        )) {
                          final res = await context
                              .read(authProvider)
                              .signInWithEmail(form: {
                            "email": emailController.text,
                            "password": passwordController.text
                          });

                          res.fold(
                            (err) => singUpError.value = err,
                            (r) {
                              singUpError.value = '';
                            },
                          );
                        }
                      },
                      child: Text("SignIn"),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Text("Or", style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    FlatButton.icon(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.08.sw, vertical: 0.015.sh),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      icon: Icon(
                        MaterialCommunityIcons.google,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        context.read(authProvider).googleSignIn();
                      },
                      label: Text("SignIn with Google"),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    RichText(
                      text: TextSpan(
                        // style: TextSty÷/,
                        text: "Don't have an account? ",
                        children: [
                          TextSpan(
                            text: "SignUp",
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.rootNavigator.push('/sign-up-view');
                              },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class SignUpView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = useTextEditingController();
    var passwordController = useTextEditingController();
    var nameController = useTextEditingController();
    var singUpError = useState('');

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        // Color(0xffde16a)
        Colors.amber[200],
        Colors.amber[300],
        // Colors.amber[400],
        Colors.amber[400],
      ])),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 0.16.sh),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                height: 220, width: 200, child: Image.asset("assets/Paw.png")),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AutoSizeText(
                      "Paw",
                      style: GoogleFonts.openSans(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      maxFontSize: 50,
                      minFontSize: 20,
                    ),
                    SizedBox(
                      height: 0.12.sh,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.1.sw, left: 0.1.sw),
                      child: TextField(
                        controller: emailController,
                        decoration: inputFormat(context, label: "email"),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.1.sw, left: 0.1.sw),
                      child: TextField(
                        controller: nameController,
                        decoration: inputFormat(context, label: "name"),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.1.sw, left: 0.1.sw),
                      child: TextField(
                        controller: passwordController,
                        decoration: inputFormat(context, label: "password"),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    if (singUpError.value.isNotEmpty)
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 0.025.sh,
                          width: 0.8.sw,
                          child: AutoSizeText(
                            singUpError.value,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.1.sw, vertical: 0.018.sh),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      onPressed: () async {
                        if (validateSignUpForm(
                            email: emailController.text,
                            password: passwordController.text,
                            name: nameController.text)) {
                          final res =
                              await context.read(authProvider).signUpWithEmail({
                            "email": emailController.text,
                            "password": passwordController.text,
                            "name": nameController.text
                          });

                          res.fold(
                            (err) => singUpError.value = err,
                            (r) {
                              singUpError.value = '';
                              context.rootNavigator.pop();
                            },
                          );
                        }
                      },
                      child: Text("SignUp"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
