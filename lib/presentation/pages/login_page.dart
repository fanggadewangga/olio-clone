import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ol10/presentation/color_pallette.dart';
import 'package:ol10/presentation/widgets/custom_elevated_button.dart';
import 'package:ol10/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: ol10PaleGreen,
        centerTitle: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ful Name',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600)),
                CustomTextField(controller: nameController),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  text: 'Submit',
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
