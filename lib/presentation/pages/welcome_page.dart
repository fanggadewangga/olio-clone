import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ol10/presentation/assets.dart';
import 'package:ol10/presentation/color_pallette.dart';
import 'package:ol10/presentation/pages/login_page.dart';
import 'package:ol10/presentation/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.multiply),
                image: AssetImage(Assets.bgpic),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top
              Column(
                children: [
                  Image.asset(Assets.logo, width: 100),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Give it away and\n make someone's day",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Join 6 million people sharing\nwith their local community. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              // Bottom
              Column(
                children: [
                  CustomElevatedButton(
                    text: 'Login',
                    height: 45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(
                        width: 10,
                      ),
                      const CustomElevatedButton(
                        text: "Sign Up",
                        width: 120,
                        color: Colors.white,
                        textColor: ol10Magenta,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
